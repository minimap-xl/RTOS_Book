Two applications of the ADC_DAC driver in the RedPitaya board are proposed. In **adc_remote.c** the driver is used in a remoteli controlled application. The RedPitaya board can indeed be very useful in a larger environment, such as distributed data acquisition in an industrial application. In this context the ReadPitaya board can be configured remotely and acquired data sent over the network. 

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
