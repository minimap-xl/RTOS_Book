/**********************************Delay Measurement********************************************
This program measures the time the RP board takes to acquire an ADCD sample and output it 
through DAC output. For this purpose the first DAC output shall be connected to  the second ADC
input, while the first ADC input shall be connected to a wave generator producing a 1Vpp sawtooth 
signal with falling edges. Both ADC channels shall be configured for an input range range 1Vpp
(jumpers close to the ADC inputs).
The programs compares the two ADC channel, where the second one will be a delayed version of the 
first one. For this purpose,  an history of 1E6 samples is firstly collected and then the falling 
edges for both channels  are detected and their index difference collected in a seoarate array. 
If the frequency of the Wave generator is set to 1kHz and the ADC sampling speed is set to 100kHz,
the number of collected index differences will be approximately 1000
Finally the average difference value, its standard deviation  and the minimum and maximum recorded 
differences are printed.
As the delay is around 10us a sampling speed between 100kHz and 200kHz (higher speeds may overflow 
the ADC FIFO) should be chosen. 
**************************************************************************************/



#include <sys/ioctl.h>
#include <sys/select.h>
#include <sys/time.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <math.h>
#include <stdio.h>
#include "rp_adc_dac.h"
//Number of recorded samples
#define HISTORY_LEN 1000000
//Maximum number of detected adges
#define MAX_EDGES_NUM 100000
//Voltage threshold used to detect a falling edge
#define EDGE_THRESHOLD 4000

int main(int argc, char *argv[])
{
    int reg, rb, freqDiv, freq, bufferDim, sampleIdx, edgeCount, *edgeDiffs, edgeFound, edgeIdx;
    unsigned int data, outData;
    short chan1, chan2, *chan1Arr,  *chan2Arr;
    double meanDelaySteps, stdevSteps;
    double maxDelay, minDelay;

    if(argc < 2)
    {
        printf("Usage: delay <Sampling Frequency>\n");
        exit(0);
    }
    sscanf(argv[1], "%d", &freq);
    //Here we are interested in measuring the delay in real-time applications, so 
    //buffer dim will be set to a single sample
    bufferDim = 1;
    //Base ADC sampling speed is 125 MHz
    freqDiv = 125000000/freq;

    printf("Freq. Div. = %d\n", freqDiv);
    //Open a the rp_adc_dac device. For a better real-time performance (minimize delay)
    //the device is open in non blocking mode, that is, the reading process is not
    //suspended in case a sample is not yet available
    int fd = open("/dev/rp_adc_dac", O_NONBLOCK | O_RDWR);
    if (fd < 0)
    {
        printf("Cannot open device!\n");
        return 0;
    }
 
    //Set frequency division
    reg = freqDiv;
    ioctl(fd, RP_ADC_DAC_SET_DECIMATION_REGISTER, &reg);

    //make sure that the written value is read. If it is correclty read
    //it means that the FPGA has been properly configured via the commans
    //fpgautil -b bitstream1.bin   
    usleep(100);
    reg = 0;
    ioctl(fd, RP_ADC_DAC_GET_DECIMATION_REGISTER, &reg);
    printf("Decimation: %d\n", reg);


    //allocate room for the samples (16 bits) history
    chan1Arr = (short *)malloc(HISTORY_LEN * sizeof(short));
    chan2Arr = (short *)malloc(HISTORY_LEN * sizeof(short));

    //flush ADC FIFO
    ioctl(fd, RP_ADC_DAC_FIFO_FLUSH, NULL);
   
    //start sampling
    reg = 1;
    ioctl(fd, RP_ADC_DAC_SET_ENABLE_REGISTER, &reg);
    sampleIdx = 0;
    while(sampleIdx < HISTORY_LEN)
    {
        //read a single sample. If no sample is present, 0 is returned
        rb = read(fd, &data, sizeof(int));
        //an error is returned is a FIFO overflow is detected by the driver
        if(rb < 0) 
        {
            printf("OVERFLOW!!\n");
            return 0;
        }
        //if a sample has been read (rb shall be either 0 or 4)
        if(rb > 0)
        {
            if(rb != 4)
            {
                printf("Unexpected read data size!\n");
                return 0;
            }
            //least significant 16 bits encode Channel 1
            memcpy(&chan1, &data, 2);
            //most significant bits encode Channel 2
            chan2 = (data & 0xffff0000)>>16;

            //copy inputs into DAC outputs packed in a longword
            //DAC digital output is offset binary. 
            //least significant bits encode DAC channel 1
            //most significant bits encode DAC channel 2
            outData = 8192 - chan1;
            outData |= (8192 - chan2) << 16;

            //Write DAC outputs
            write(fd, &outData, 4);

            //record acquired sample
            chan1Arr[sampleIdx] = chan1;
            chan2Arr[sampleIdx] = chan2;
            sampleIdx++;
        }
    }
    //Edge detection and delay measurement
    edgeCount = 0;
    edgeFound = 0;
    meanDelaySteps = 0;
    //edge diffs record for every detected edge the difference in samples between the detected 
    //edge for ADC channel 1 and the detected one for ADC channel 2
    edgeDiffs = (int *)malloc(MAX_EDGES_NUM * sizeof(int));

    for (sampleIdx = 1000; sampleIdx < HISTORY_LEN; sampleIdx++)
    {
        //if a falling edge is detected for ADCchannel 1
        if (((chan1Arr[sampleIdx - 1] - chan1Arr[sampleIdx]) > EDGE_THRESHOLD) && !edgeFound)
        {
            edgeIdx = sampleIdx;
            edgeFound = 1;
        }
        //if a falling edge is then detected for ADC channel 2
        if(edgeFound && ((chan2Arr[sampleIdx - 1] - chan2Arr[sampleIdx]) > EDGE_THRESHOLD))
        {
        //Record difference in samples
            edgeDiffs[edgeCount] = sampleIdx - edgeIdx;
        //and accumulates it for mean computation
            meanDelaySteps += (sampleIdx - edgeIdx);
            edgeFound = 0;
            edgeCount++;
        }
        //Make sure the edgeDiffs array is not overflown 
        if(edgeCount > MAX_EDGES_NUM)
            break;
    }

    printf("Found %d edges\n", edgeCount);
    
    meanDelaySteps /= edgeCount;
    //convert delay from sample count to microseconds
    printf("Avg. Delay (us) %f\n", 1E6 * meanDelaySteps / freq);

    //Compute std. deviation, max and min delay
    stdevSteps = 0;
    maxDelay = 0, minDelay = 1000000;
    for(edgeIdx = 0; edgeIdx < edgeCount; edgeIdx++)
    {
        stdevSteps += pow(edgeDiffs[edgeIdx] - meanDelaySteps, 2);
        if (edgeDiffs[edgeIdx] > maxDelay) maxDelay = edgeDiffs[edgeIdx];
        if (edgeDiffs[edgeIdx] < minDelay) minDelay = edgeDiffs[edgeIdx];
    }

    printf("Mean Square error Delay(us): %f\n", 1E6 * sqrt(stdevSteps/edgeCount)/freq);
    printf("Max Delay(us): %f\n", 1E6*maxDelay/freq);
    printf("Min Delay(us): %f\n", 1E6*minDelay/freq);
    return 0;
}

  

