In this directory you can find all the resources that are needed to replicate the RedPitaya application presented in chapter 17. The reference board is [RedPitaya STEMlab 125-14](https://redpitaya.readthedocs.io/en/latest/intro.html).

The required resources are:
* The FPGA bitstream to be loaded in the RedPitaya FPGA (bitstream.bin)
* The devicetree configuration to be loaded in the RedPitaya board (devicetree.dtb)
* The source files of the driver for the adc_dac device presented in chapter 17 (directory/rp_adc_dac.h and driver/rp_adc_dac.c)
* The Makefile for building the driver on the RedPitaya board (driver/Makefile)
* A sample C program reading from the ADC and outputting read samples ot the DAC (adc_dac_main.c)


At first, you need to retrieve from the RedPitaya site the UbuntoOS release to be used and flash it into a SD card. Detailed instructions are given in the [installation page](https://redpitaya.readthedocs.io/en/latest/quickStart/SDcard/SDcard.html). After flashing the SD card:
* Insert the SD card in the SD slot of the RedPitaya and connect the board to a terminal via the USB-C connector and to the network via the RJ45 network connector. The default network configuration is Dynamic Host Configuration (DHCP).
* Power on the system and the boot procedure will be displayed on the connected terminal. The assigned IP address can be found with the command 
`ip a` 
and then you can connect remotely to the board via ssh.
* Copy files bitstream.bin and devicetree.dtb in your home directory and give the following commands:
    * `fpgautil -b bitstream.bin`
    * `cp devicetree.dtb /boot/dts/z10_125/devicetree.dtb`
* Reboot the system afterwards. The first command configures the onboard FPGA and must be executed every time the rp board is restarted (you may
put it in a startup shell script such as .bashrc). The second command copy the device tree configuration in the directory used by Ubuntu during bootstrap and is done once for all.
* Copy files rp_adc_dac.c, rp_adc_dac.h and Makefile in the home directory in RedPitaya. Then give the command `make`. Observe that driver C code cannot be compiled straight as any other C program because it requires the linux kernel configuration files. All the required packages are already available in the RedPitaya Ubuntu distribution and there is no need for additional package installation.
* Load the driver with the command `insmod rp_adc_dac.ko` You can check if everything was ok having a look at the kernel console via
command `dmesg`. The driver code invoked during driver installation prints some information that looks like the following.
```
[ 2884.456097] Loading module rp_adc_dac
[ 2884.456121] MAJOR ID...236
[ 2884.456134] mknod /dev/rp_adc_dac c 236 0
[ 2884.456724] rp_adc_dac_probe 43c00000.axi_fifo_mm_s
[ 2884.456741] mem start: 43c00000
[ 2884.456750] mem end: 43c0ffff
[ 2884.456757] mem offset: 0
[ 2884.456834] IRQ: 38
[ 2884.456873] rp_adc_dac: got IRQ 56 assigned
[ 2884.461386] rp_adc_dac_probe 43c20000.axi_fifo_mm_s
[ 2884.461405] mem start: 43c20000
[ 2884.461414] mem end: 43c2ffff
[ 2884.461422] mem offset: 0
[ 2884.461645] rp_adc_dac_probe 50000000.axi_cfg_register
Real-Time, High-Performance Data Acquisition 389
[ 2884.461660] mem start: 50000000
[ 2884.461669] mem end: 50000fff
[ 2884.461676] mem offset: 0
[ 2884.461851] rp_adc_dac_probe 60000000.axi_cfg_register
[ 2884.461864] mem start: 60000000
[ 2884.461872] mem end: 60000fff
[ 2884.461880] mem offset: 0
```
If you see it, everything worked and the driver is ready for use. The driver will also appear in /dev directory.
* Copy the sample C program (adc_dac_main.c) in the home directory and compile it with the command `gcc -o adc_dac_main -I. adc_dac_main.c`
* At this point you can test the whole system by launching the program ```adc_dac_main <sync|sync1|sync16k> <sampling frequency> <buffer dimension>")``` with the appropriate parameters as explained in chapter 17.



