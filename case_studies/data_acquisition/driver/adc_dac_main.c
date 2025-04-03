#include <sys/ioctl.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <stdio.h>
#include "rp_adc_dac.h"

//rp_adc_dac test program. This user program opens the rp_adc_dac device and enters 
//a loop where ADC samples are sent back to the DAC. The program accepts as arguments:
// The mode of operation: async, sync1, sync1024. 
// The sampling frequency
int main(int argc, char *argv[])
{
    enum  {
        ASYNC,      //Asynchronous readou, no wait
        SYNC1,      //Synchornous read. Interrupt generated at the first available sample
        SYNC16K    //Synchronous read. Interrupr generated when FIFO size exceeds 1024 samples
    } mode;
    int fd, reg, rb, freqDiv, freq, bufferDim, readSamples, i;
    unsigned int *dataBuf;
    unsigned int outData;
    short chan1, chan2;
    float fchan1, fchan2;
    if (argc != 4)
    {
        printf("Usage: adc_dac_main <sync|sync1|sync16k> \
        <sampling frequency> <buffer dimension>");
        exit(0);
    }
    if(!strcmp(argv[1], "async"))
        mode = ASYNC;
    else if(!strcmp(argv[1], "sync1"))
        mode = SYNC1;
    else if(!strcmp(argv[1], "sync16k"))
        mode = SYNC16K;
    else
    {
        printf("Invalid mode: %s\n", argv[1]);
        exit(0);
    }
    sscanf(argv[2], "%d", &freq);
    freqDiv = 125000000/freq; //Base sampling frequency is 125Mhz
    //Get the buffer dimension in samples
    sscanf(argv[2], "%d", &bufferDim);
    dataBuf = (int *)malloc(sizeof(int)*bufferDim);
//Open the device
    if(mode == ASYNC)
        fd = open("/dev/rp_adc_dac", O_NONBLOCK) ;
    else
        fd = open("/dev/rp_adc_dac", O_RDWR);
 //int fd = open("/dev/rp_adc_dac", O_NONBLOCK);
    if (fd < 0)
    {
        printf("Cannto open /dev/rp_adc_dac\n");
        exit(0);
    }
 
    //Set frequency decimation 
    reg = freqDiv;
    ioctl(fd, RP_ADC_DAC_SET_DECIMATION_REGISTER, &reg);

    //Check that the value has been set, just to make sure that the FPGA has been configured
    reg = 0;
    ioctl(fd, RP_ADC_DAC_GET_DECIMATION_REGISTER, &reg);
    printf("Decimation: %d\n", reg);

    //Depending on the mode, define when the ADC FIFO will generate an interrupt
    if (mode == SYNC1) 
        ioctl(fd, RP_ADC_DAC_FIFO_INT_FIRST_SAMPLE, NULL);
    if(mode == SYNC16K)
        ioctl(fd, RP_ADC_DAC_FIFO_INT_HALF_SIZE, NULL);
    


    //start data readout
    reg = 1;
    ioctl(fd, RP_ADC_DAC_SET_ENABLE_REGISTER, &reg);
    while(1)
    {
         rb = read(fd, dataBuf, sizeof(int)*bufferDim);
        if(rb < 0) 
        {
            printf("ADC read failed\n");
            exit(0);
        }
        readSamples = rb/sizeof(int);
        //The number of read samples can any value between 0 (1 if synchronous) and bufferDim
        for(i = 0; i < readSamples; i++)
        {
            //2 14 bit channels are packed in a 32 bit word
            //Least significant bits encode Channel1 
            memcpy(&chan1, &dataBuf[i], sizeof(short));  
            chan2 = (dataBuf[i] & 0xffff0000)>>16;
            //Conversion from raw data into voltage. Scale may depend on the RedPitaya configuration
            fchan1 = 30. * chan1/8192.;
            fchan2 = 30 * chan2/8192.;

            //A control algorithm may be defined here

            //Pack the two read channels converting them in the format expected by DAC
            outData = (8192 - chan1) << 16;
            outData |= (8192 - chan2) & 0x0000ffff;
            //Write to DAC
            write(fd, &outData, sizeof(unsigned int));
         }
    }
    return 0;
}

  

