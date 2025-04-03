

#define DEBUG
#undef DEBUG_INTERRUPT
/*
Include files for this Linux driver. 
*/

#include <linux/module.h>
#include <linux/version.h>
#include <linux/kernel.h>
#include <linux/platform_device.h>
#include <linux/interrupt.h>
#include <linux/poll.h>
#include <linux/cdev.h>
#include <linux/of.h>
#include "rp_adc_dac.h"

//#include <linux/semaphore.h>
//#include <linux/spinlock.h>
//#include <linux/delay.h>

#define SUCCESS 0

//Length in 32 bit words of the FIFO queue managed by FPGA
#define FIFO_LEN 32768

//Dimension (in 32 bit words) of the cirular buffer
#define BUFSIZE 32768

//*************** 
//File operations prototypes
//***************
//device_open invoked by linux when the device is open by a user program.
static int device_open(struct inode *, struct file *);

//device_release is invoked by linux when a device is closed by a user program.
static int device_release(struct inode *, struct file *);

//device_read is invoked by linux when a read operation is performed on an open device.
static ssize_t device_read(struct file *, char *, size_t, loff_t *);

//device_write is invoked by linux when a write opreation is performed on an open device.
static ssize_t device_write(struct file *, const char *, size_t, loff_t *);

//device_map can be used to provide user programs with direct access to device memory
//Not implemented in this driver. 
static int device_mmap(struct file *filp, struct vm_area_struct *vma);

//device_lseek is invoked by linux when a user program calls lseek on an open device
//Not implemented in this driver.
static loff_t device_lseek(struct file *file, loff_t offset, int orig);

//device_ioctl is invoked by linux when a user program calls ioctl on an open device.
static long device_ioctl(struct file *file, unsigned int cmd, unsigned long arg);

//device_poll is invoked by linux when a user program calls poll or select on an open device.
static unsigned int device_poll(struct file *file, struct poll_table_struct *p);

//The file_operation structure is used by linux in order to dispatch generic device system 
//calls towards the specific routines for this driver. 
static struct file_operations fops = {
    .read = device_read,
    .write = device_write,
    .open = device_open,
    .release = device_release,
    .mmap = device_mmap,
    .llseek = device_lseek,
    .unlocked_ioctl = device_ioctl,
    .poll = device_poll,
};

//Interrupt routine prototype. It will be called by linux in interrupt context.
// In this project, data input FIFO generates an interrupt when either the number of enqueued data items
// exceeds 1024 or a new item is inserted in the empty FIFO. 
static irqreturn_t IRQ_cb(int irq, void *dev_id);

//Specific driver structure. It contains all the information that is requird to properly manipulate the device
//A single instance of this stricture will be held in the system and therefore it is declared as a static structure.
struct rp_adc_dac_dev {
    // kernel internal structure sed to discover system on chip (Zynq) resources. In this case used to discover 
    //addresses of enable_register, decimator_register, adc_data_fifo and dac_data_fifo.
    struct platform_device *pdev;

   //IRQ number for adc_data_fifo interrupt
    int irq;

    //Kernel internal structure to represent character devices
    struct cdev cdev;

    //Pointers to enable_register, decimator_register, adc_data_fifo and dac_data_fifo
    void * iomap_decimation_register;
	void * iomap_enable_register;
    //For each FIFO (adc_data_fifo and dac_data_fifo) two pointers are retrieved. These pointers address
    //the internal FIFO IP registers
	void * iomap_adc_data_fifo;
	void * iomap1_adc_data_fifo;
	void * iomap_dac_data_fifo;
	void * iomap1_dac_data_fifo;

    //asynchronous read flag
    int async;

    //Actual number of samples in adc_data_fifo
    u32 fifoSamples;
    
    //Wait queue used to synchronize readout 
    wait_queue_head_t readq;  

    //if fifoHalfInterrupt == 0 and not asynchronous, adc_data_fifo issues an interrupt when
    //a sample is inserted in the empty fifo.
    //if fifoHalfInterrupt != 0 and not asynchronous, adc_data_fifo issues an interrupt when
    //fifo length exceeds 1024 samples. 
    int fifoHalfInterrupt;

};

//Support functions for Writing and reading fifo registers
static void Write(void *addr, enum AxiStreamFifo_Register op, u32 data ) 
{
    *(u32 *)(addr+op) = data;
}

static u32 Read(void *addr, enum AxiStreamFifo_Register op ) 
{
    return *(u32 *)(addr+op);
}

//Support Function for configuring interrupts in adc_data_fifo
static void setFifoHalfInterrupt(struct rp_adc_dac_dev *dev )
{
    dev->fifoHalfInterrupt = 1;
    //Enable interrupt when fifo length exceeds 1024 samples (as cofigured in FPGA)
    //Interrupt enable register of the fifo is configured
    Write(dev->iomap_adc_data_fifo,IER,0x00100000);
}
 
static void setFifoFirstInterrupt(struct rp_adc_dac_dev *dev )
{
    dev->fifoHalfInterrupt = 0;
    //Enable interrupt when the first sample arrives and the fifo is empty
    //Interrupt enable register of the fifo is configured
    Write(dev->iomap_adc_data_fifo,IER,0x04000000);
}

//Support functionf for clearing adc_data_fifo and dac_data_fifo
static void clearAdcFifo(struct rp_adc_dac_dev *dev )
{
    //Clear all pending interupts
    Write(dev->iomap_adc_data_fifo,ISR,0xFFFFFFFF);
    //Disable all interrupts
    Write(dev->iomap_adc_data_fifo,IER,0x00000000);
    //Reset fifo
    Write(dev->iomap_adc_data_fifo,RDFR,0xa5);
}


//Major device ID
static int id_major;

//Device class
static struct class *rp_adc_dac_class;

//Static copy of device private structure. Declared as static since there is a single rp_adc_dac device instance
//in RedPitaya.
static struct rp_adc_dac_dev staticPrivateInfo;


//device_open. Invoked by linux when a user program opens rp_adc_dac cdevice
static int device_open(struct inode *inode, struct file *file)
{    

    //Retrieve the device specific information from the passed inode structure using macro container_of
    //This is the standard way for retrieving provate driver information, even if in this case this information
    //is already available in staticPrivateInfo variable. 
    struct rp_adc_dac_dev *privateInfo = container_of(inode->i_cdev, struct rp_adc_dac_dev, cdev);

    //copy the pointer to device private information to field private_data of the passed file argument
    //so that it can be retrieved by the following device methods
    file->private_data = privateInfo;

    //Retrieve asynchronous mode from the flags passed by the user program in open() function
    privateInfo->async = (file->f_flags & O_NONBLOCK);
    //Default behavior in synchronous mode is to generatre an interrupt when a sample arrives in 
    //the empty adc_data_fifo. It can be changed via ioctl call.
    if(!privateInfo->async)
    {
        setFifoFirstInterrupt(privateInfo);
    }
    return 0;
}

// device_release. Invoked by linux when a user program closes an open device
static int device_release(struct inode *inode, struct file *file)
{
    //retrieve private device info
    struct rp_adc_dac_dev *dev = file->private_data;
    //If not found something went wrong
    if(!dev) return -EFAULT;

    //Clear FPGA Enable Register so that no adc seamppes reach adc_data_fifo anymore
    *((u32 *)dev->iomap_enable_register) = 0;
    //Clear adc_data_fifo
    clearAdcFifo(dev);
    //Wake up possible threads waiting for synchronous data
    dev->fifoSamples = 0;
    wake_up_interruptible(&dev->readq);
    return 0;
}


// interrupt handler 
irqreturn_t IRQ_cb(int irq, void *dev_id)
{
    //The interrupt handler receives the device private info
    struct rp_adc_dac_dev *dev =  dev_id;

    //Reset all pending intterrupts and disable further interrupts
    Write(dev->iomap_adc_data_fifo,ISR,0xFFFFFFFF);
    Write(dev->iomap_adc_data_fifo,IER,0x00000000);

    //Read from the fifo register RDFO the number of pending samples (expected to be > 0)
    dev->fifoSamples = Read(dev->iomap_adc_data_fifo,RDFO);
#ifdef DEBUG_INTERRUPT
    printk("--INTERRUPT: Available samples: %d\n", dev->fifoSamples);    
#endif
    //wake up possible threads waiting for data availability (in synchronopus mode)    
    wake_up_interruptible(&dev->readq);

    //Re-enable interrupts
    if(dev->fifoHalfInterrupt)
        Write(dev->iomap_adc_data_fifo,IER,0x00100000);
    else
        Write(dev->iomap_adc_data_fifo,IER,0x04000000);
    return IRQ_HANDLED;
}


//Device Read is invoked by linux when a user process read fron an open rp_adc_dac device
static ssize_t device_read(struct file *filp, char *buffer, size_t length,
                           loff_t *offset)
{    
    u32 i = 0;
    u32 actSamples;
    //Samples are 4 bytes and bring 2 16 bits ADC channels. The passed length is in bytes.
    u32 requestedSamples = length/sizeof(u32);
    //Retrieve device private info
    struct rp_adc_dac_dev *dev = (struct rp_adc_dac_dev *)filp->private_data;
    //The passed buffer is considered a 32 bit array
    u32 *b32 = (u32*)buffer;

    //Get the number of samples in the fifo via fifo register RDFO
    dev->fifoSamples = Read(dev->iomap_adc_data_fifo,RDFO);
    //If no samples in fifo and synchronous mode, wait the sample availability
    //event readq will be set by the interrupt routine triggered either by 
    //the availability of the first samplre in the queue (def->halfInterrupt == 0)
    //or the availability of 1024 samples in the queue (dev->halfInterrupt == 1)
    while(dev->fifoSamples == 0 && !dev->async)
    {
        if(wait_event_interruptible(dev->readq, (dev->fifoSamples > 0)))
	        return -ERESTARTSYS;
        //Read again the number of samples in the fifo (more may have been arrived)
        dev->fifoSamples = Read(dev->iomap_adc_data_fifo,RDFO);

        //This will happen only if the device is closed meanwhile
        if(dev->fifoSamples == 0)
        {
            return 0;
        }
    }

    //The fifo is 32k samples wide. It should neer apporach its limit.
    if(dev->fifoSamples > 32700)
    {
        //This can be considered an error condition, report it in the log file
        //it can be read issuing dmesg command
        printk("rp_adc_dac Overflow!\n");
        return -EFAULT;
    }
    //There could be more samples in fifo than those requested in read()
    actSamples = (dev->fifoSamples > requestedSamples)?requestedSamples:dev->fifoSamples;
    for(i = 0; i < actSamples; i++)
    {
        //Read the current samples (actually tow channels) from fifo register
        u32 currSample = Read(dev->iomap1_adc_data_fifo,RDFD4);
        //Copy the sample in the user buffer. A direct copy cannot work because the kernel address 
        //space is diffferent from the user address space. put_user performeed the appropriate
        //virtual address translation.
        put_user(currSample, b32++);
        dev->fifoSamples--;
    }
    //Returr the actual number of read samples, that may be 0 for asynchronous operation.
    return sizeof(u32)*actSamples;
 }


// WRITE //
static ssize_t device_write(struct file *filp, const char *buff, size_t len,
                            loff_t *off)
{
     u32 val;
    struct rp_adc_dac_dev *dev;
    
    //writing ot DAC makes sense only one sample (2 channels, 4 bytes) at a time
    if(len != sizeof(u32))
    {
        return -EINVAL;
    }
    //Retrieve device private info
    dev = (struct rp_adc_dac_dev *)filp->private_data;

    //Copy value from user address space
 	if(copy_from_user (&val, (void __user *)buff, sizeof(u32)))
    {
        return -EFAULT;
    }

    //Write val in dac_data_fifo and transmit it
	Write(dev->iomap1_dac_data_fifo,0, val);
	Write(dev->iomap_dac_data_fifo,TLR, 4);
	return sizeof(u32);
}


// mmap operation
static int device_mmap(struct file *filp, struct vm_area_struct *vma)
{
    printk ("mmap operation is not supported by rp_adc_dac device.\n");
    return -EINVAL;
}

// lseek operation
static loff_t device_lseek(struct file *file, loff_t offset, int orig)
{
     printk ("lseek operation is not supported by rp_adc_dac device.\n");
    return -EINVAL;
}

// ioctl operation
//Here ioctl is used to access the two register:
// - decimation_register, used to decimate the 125MHz sampling clock
// - enable_register, used to enable transmission of ADC samples to adc_data_fifo
//The constants used in ioctl are defined in rp_adc_dat fifo.h that is also included
//in any user program accessing rp_acd_dac device
static long device_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{    
    //Retrieve device private data from the passed struct file
    struct rp_adc_dac_dev *dev = file->private_data;

    //cmd corresponds to the command code passed in the ioctl user call
    switch (cmd) {
        //Read content of decimation register
        //The register address is mapped to iomap_decimation_register in the device private data struct
    	case RP_ADC_DAC_GET_DECIMATION_REGISTER:
	    {
            //The copy must span two different address spaces
		    if(copy_to_user ((void __user *)arg, dev->iomap_decimation_register, sizeof(u32)))
            {
                return -EFAULT;
            }
		    return 0;
	    }
        //Write content of decimation register 
	    case RP_ADC_DAC_SET_DECIMATION_REGISTER:
	    {
		    if(copy_from_user (dev->iomap_decimation_register, (void __user *)arg, sizeof(u32)))
            {
                return -EFAULT;
            }
		    return 0;
	    }
        //Reag content (only last bit significant) of enable register
	    case RP_ADC_DAC_GET_ENABLE_REGISTER:
	    {
		    if(copy_to_user ((void __user *)arg, dev->iomap_enable_register, sizeof(u32)))
            {
                return -EFAULT;
            }
		    return 0;
	    }
        //Write enable register. Used to start data readout (enable register == 1) or to stop it 
        //(enable register == 0)
	    case RP_ADC_DAC_SET_ENABLE_REGISTER:
	    {
		    if(copy_from_user (dev->iomap_enable_register, (void __user *)arg, sizeof(u32)))
            {
                return -EFAULT;
            }
		    return 0;
	    }
        //Enable interrupt generation when adc_dada_fifo size ecceeds 1024 samples
        case RP_ADC_DAC_FIFO_INT_HALF_SIZE:
        {
            setFifoHalfInterrupt(dev);
            return 0;
        }
        //Enable interrupt generation when the first sample is received by the empty adc_data_fifo
        case RP_ADC_DAC_FIFO_INT_FIRST_SAMPLE:
        {
            setFifoFirstInterrupt(dev);
            return 0;
        }
        //Disable interrupts
        case RP_ADC_DAC_FIFO_INT_NONE:
        {
            Write(dev->iomap_adc_data_fifo,IER,0x00000000);
            return 0;
        }
        //Invalid ioctl code
        default:
            return -EAGAIN;
    }
}


//Synchronize user program when calling poll or select on an open device.
static unsigned int device_poll(struct file *file, struct poll_table_struct *p) 
{
    unsigned int mask=0;
    struct rp_adc_dac_dev *dev =  (struct rp_adc_dac_dev *)file->private_data;
    //Poll or select cannot be called for a device open in asynchronous mode
    if(dev->async)
    {
        return -EINVAL;
    }

    //Get the number of samples in the fifo via fifo register RDFO
    dev->fifoSamples = Read(dev->iomap_adc_data_fifo,RDFO);
    //If no samples available AND synchronous mode, synchronize in readq wait queue
    if(dev->fifoSamples ==0 && !dev->async)
    {
        poll_wait(file,&dev->readq,p);
    }
    //Report in the poll mask successful input data availability
    mask |= POLLIN | POLLRDNORM;
    return mask;
}


// Probe Management. The following routines are invoked by linux when the driver is loaded. 
// Their purpose is to access and map system resources that are described by the device tree
// For this application the resources to be mapped are (as shown in the Vivado Address Editor):
// - decimation register: mapped at offset 0x50000000 in FPGA address 
// - enable register: mapped at offset 0x60000000 in FPGA address
// - adc_data_fifo regsiters, mapped at offset 0x43C00000 and 0x43C10000 in FPGA address
// - adc_dac_fifo registers, mapped at offset 0x43C20000 in FPGA address

//Associate the Interrupt Service Routine (IRQ_cb) to the interrupr source for adc_data_fifo
//to handle data availability in synchronous mode
static int setIrq(struct platform_device *pdev)
{
    int res;
    //Get Interrupr Request number (IRQ) associated with this platform device
    int irq = platform_get_irq(pdev,0);
#ifdef DEBUG
    printk("IRQ: %x\n",irq);
#endif
    //Associate an Interrupt Service Routine (IRQ_cb) to this IRQ
    //The Interrupt Service Routine will receive as argument the address of the device 
    // private data (staticPrivateInfo)
    res = request_irq(irq, IRQ_cb, IRQF_TRIGGER_RISING ,"rp_adc_dac",&staticPrivateInfo);
    if(res) 
	    printk("rp_adc_dac: can't get IRQ %d assigned\n", irq);
#ifdef DEBUG
     else 
	    printk("rp_adc_dac: got IRQ %d assigned\n", irq);
#endif
    //Record irq in private device info (staticPrivateInfo) because it will be used 
    //by rp_adc_dac_remove when unloading the driver module
    return irq;
}

//Probe routine called by the linux kernel when loading the device every time a device of interest
//is fould in the device tree (as specified below in rp_adc_dac_of_ids). 
static int rp_adc_dac_probe(struct platform_device *pdev)
{
    u32 off;
    struct resource *r_mem;
    // struct device *dev = &pdev->dev;
    //Current string address. In this application phe passed name is of the form <hex FPGA address>.<component type>
    //Since we know the expected FPGA addresses (configured in Vivado) it is possible to map the specific
    //component (register or fifo) and to retreive the mapped addresses
    char deviceAddress[9];

    //Retrieve the hex address of the current resource from the passed name and store in deviceAddress 
    //of the form <hex FPGA address>.<component type>
    memcpy(deviceAddress, pdev->name, 8); //The first 8 chars correspond to the hex address in FPGA
    deviceAddress[8] = 0;


    //Get information on the structure of the device resource (start address and end address), 
    //in order to map it in memory.
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
    //align mapped memory region to page boundary
	off = r_mem->start & ~PAGE_MASK;

#ifdef DEBUG
    printk("rp_adc_dac_probe  %s\n", pdev->name);
    printk("mem start: %x\n",r_mem->start);
    printk("mem end: %x\n",r_mem->end);
    printk("mem offset: %x\n",r_mem->start & ~PAGE_MASK);
#endif

    if(!strcmp(deviceAddress, "50000000" )) //Decimation Register
    {
        //Map memory region declared in FPGA onto Kernel address space
		staticPrivateInfo.iomap_decimation_register = devm_ioremap(&pdev->dev,r_mem->start+off,0xffff);
    }
    else if (!strcmp(deviceAddress, "60000000")) //Enable Register
    {
		staticPrivateInfo.iomap_enable_register = devm_ioremap(&pdev->dev,r_mem->start+off,0xffff);
    }
    else if (!strcmp(deviceAddress, "43c20000")) //dac_data_fifo
    {
        //For fifo two memory regions are defined. They are mapped against iomap_dac_data_fifo
        // and iomap1_dac_data_fifo, respectively
		staticPrivateInfo.iomap_dac_data_fifo = devm_ioremap(&pdev->dev,r_mem->start+off,0xffff);
		r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
		off = r_mem->start & ~PAGE_MASK;
		staticPrivateInfo.iomap1_dac_data_fifo = devm_ioremap(&pdev->dev,r_mem->start+off,0xffff);
    }
    else if (!strcmp(deviceAddress, "43c00000")) //adc_data_fifo
    {
	    staticPrivateInfo.iomap_adc_data_fifo = devm_ioremap(&pdev->dev,r_mem->start+off,0xffff);
	    r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
	    off = r_mem->start & ~PAGE_MASK;
	    staticPrivateInfo.iomap1_adc_data_fifo = devm_ioremap(&pdev->dev,r_mem->start+off,0xffff);
        //adc_data_fifo can generate an interrupt, so it must be registered
	    staticPrivateInfo.irq = setIrq(pdev);
    }
    else
    {
        printk("ERROR: Unexpected rp_adc_dac_probe call\n");
    }
    return 0;
}

//No particular actions required when deallocating device resources
static int rp_adc_dac_remove(struct platform_device *pdev)
{
#ifdef DEBUG
    printk("Platform device remove: %s\n", pdev->name);
#endif
    return 0;
}

//This definition let the linux kernel know the devices of interest, declared in the device tree
//For this application they represent the name  of the configuration register and of the fifo devices
//These names are declared in the FPGA configuration. When parsing the device tree during module 
//load only instances of the devices declared here are considered and the corresponding probe 
//routine (here rp_adc_dac_probe) called 
static const struct of_device_id rp_adc_dac_of_ids[] = {
{ .compatible = "xlnx,axi-cfg-register-1.0",},
{ .compatible = "xlnx,axi-fifo-mm-s-4.1",},
{}
};

//This structure specifies the match table (here rp_adc_dac_of_ids)
//and the probe and remove routines to be called during module load and unload, respectively
//(here rp_adc_dac_probe and rp_adc_dac_remove)
static struct platform_driver rp_adc_dac_driver = {
   .driver = {
        .name  = MODULE_NAME,
        .owner = THIS_MODULE,
        .of_match_table = rp_adc_dac_of_ids,
     },
    .probe = rp_adc_dac_probe,
    .remove = rp_adc_dac_remove,
};

//Device initialization driver routine. Invoked by linux kernel when the driver is loaded
static int __init rp_adc_dac_init(void)
{
    int err, devno;
    dev_t newDev;
#ifdef DEBUG
    printk("Loading module %s\n", MODULE_NAME);
#endif

    //Allocate a range of char device numbers. The major number will be chosen dynamically, 
    //and returned (along with the first minor number) in newDev
    err = alloc_chrdev_region(&newDev, 0, 1, DEVICE_NAME);
    if(err < 0)
    {
        printk ("alloc_chrdev_region failed\n");
        return err;
    }
    //Major device number
    id_major = MAJOR(newDev);
#ifdef DEBUG
    printk("MAJOR ID...%d\n", id_major);
#endif
    // Initialize cdev. The struct cdev is the kernel's internal structure that represents char devices. 
    cdev_init(&staticPrivateInfo.cdev, &fops);
    //Set required cdev fields
    staticPrivateInfo.cdev.owner = THIS_MODULE;
    staticPrivateInfo.cdev.ops = &fops;
    //Proepare Major and minor ids. Major has been returned by alloc_chrdev_region
    //Minor id is set to 0 because only one rp_adc_dac device can be run on a given RedPitaya board.
    devno = MKDEV(id_major, 0);
    //add the char device to the system 
    err = cdev_add(&staticPrivateInfo.cdev, devno, 1);
    if(err < 0)
    {
        printk ("cdev_add failed\n");
        return err;
    }
#ifdef DEBUG
    printk("mknod /dev/%s c %d 0\n", DEVICE_NAME, id_major);
#endif
//create a struct class pointer that can then be used in calls to device_create.
    rp_adc_dac_class = class_create(THIS_MODULE, DEVICE_NAME);
    if (IS_ERR(rp_adc_dac_class))
    {
        return PTR_ERR(rp_adc_dac_class);
    }
//create a device and registers it with sysfs
    device_create(rp_adc_dac_class, NULL, devno, NULL, DEVICE_NAME);

// Initialize thw wait queue that will be used for synchronous read
    init_waitqueue_head(&staticPrivateInfo.readq);

//platform_driver_register will trigger invocation of specific probe routines based on the
// device tree definition. Here, it will be used to map register (enable register and 
// decimationa register) and fifo addresses (adc_data_fifo and dac_data_fifo) 
// the passed struct platform_driver structures defines the names of the specific probe routines
// (rp_adc_dac_probe when loading module, rp_adc_dac_remove when unloading module) 
    return platform_driver_register(&rp_adc_dac_driver);
}

//Device dispose routine. Invoked by linux kernel when the driver is unloaded
static void __exit rp_adc_dac_exit(void)
{
#ifdef DEBUG
    printk("Unloading rp_adc_dac module\n");
#endif
//Deallocate device structures
    if(rp_adc_dac_class)
    {
        device_destroy(rp_adc_dac_class,MKDEV(id_major, 0));
        class_destroy(rp_adc_dac_class);
    }
    cdev_del(&staticPrivateInfo.cdev);

//platform_driver_unregister will trigger invocation of specific deallocation routines based on the
// device tree definition. 
    platform_driver_unregister(&rp_adc_dac_driver);
//Free used IRQ
    free_irq(staticPrivateInfo.irq, &staticPrivateInfo);
}

//Register allocation and deallocation driver routines
module_init(rp_adc_dac_init);
module_exit(rp_adc_dac_exit);
MODULE_LICENSE("GPL");
