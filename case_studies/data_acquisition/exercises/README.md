Two applications of the ADC_DAC driver in the RedPitaya board are proposed. In **adc_remote.c** the driver is used in a remotely controlled application. The RedPitaya board can indeed be very useful in a larger environment, such as distributed data acquisition in an industrial application. In this context the ReadPitaya board can be configured remotely and acquired data sent over the network. 

When developing an application to be controlled remotely it is necessary to establish a communication
protocol so that the client can properly configure the board and receive acquired data
samples. If the rp_adc_dac driver is used the following protocol may be defined over TCP/IP:
```
Message                  Response      Meaning
SYNC=[YES, NO]           OK            Defines synch or asynch mode
SYNC?                    [YES, NO]    Query mode
FDIV=<division>          OK           Set frequency division
FDIV?                    <division>   Get frequency division
BUFDIM=<dimension>       OK           Set databuffer dimension
BUFDIM?                  <dimension>  Query current buffer dimension
SAMPLES=<nsamples>       OK           Set the number of samples to be acquired
SAMPLES?                 <nsamples>   Query the number of samples
OPEN                     OK           Open and configures rp_adc_dac device
START                    <see below>  Acquire and send back the acquired samples
CLOSE                    OK           Close the the current session
```
When the command START is issued, and the specified number of samples acquired,
the number of samples (4 bytes, little endian) is sent, followed by the Channel 1
samples and then by the Channel 2 samples (2 bytes per sample, little endian).
The program runs on the RedPitaya board and listens for incoming connections
at a given network port. When a client connects, then a session is started
where the client can configure the board and acquire data. A sample ptython implementation of
the client is provided in **adc_client.py**.


The second proposed exercise provides a method for measuring the round-trip delay, that is the time required to acquire
an ADC sample, communicate it via the driver to the program and send it back to
the DAC. The method consists in generating a sawtooth wave with amplitude 1V (set both the jumpers
close to the ADC inputs channels to LV) and connecting it to the first ADC channel as
well as the first channel of an oscilloscope. Connect then the second channel of the
oscilloscope to the first DAC output and run such a program. The second waveform
will appear shifted (delayed) on the oscilloscope and if you zoom the falling edge
of the waveforms, you can easily measure the delay and see the jitter between the
original wave and the reproduced one, discovering that the overall average delay
is in the order of 10μs. But what if you don’t have an oscilloscope? No problem,
you can use the RedPitaya board itself to measure the round trip delay and run the program provided in **delay.c**. For this
purpose you have to connect the used DAC output to the second ADC input. The program stores both ADC inputs in memory and, after running
data acquisition and DAC generation for a given amount of samples in order to collect
a meaningful sample history in memory, it will compute the mean and the
standard deviation of the delays for every falling edge in the two acquired channels
(falling edges are easily detected in memory by computing the difference between
every sample and the previous one). As the delay is in the order of 10μs, in order to
collect a meaningful statistics (the delay can only be measured in terms of sample
count differences between the falling edge for the two ADC channels), it is necessary
to acquire at the highest achievable sampling speed (around 200 kSamples/s). If the
frequency of the sawtooth waveform is 1 kHz, after collecting 10 MSamples around
50000 edges are collected, providing an acceptable statistics.
