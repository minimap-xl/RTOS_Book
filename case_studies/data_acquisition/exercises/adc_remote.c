#include <sys/ioctl.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include "rp_adc_dac.h"

/***************************************************************************************************
This program implements remote ADC control. The program opens a TCP/IP server socket.
When a client connects the configuration and data acquisition is regulated by exchanged  messages.  
The detailed protocol is listed below. The client sends strings and the server responds with strings
except when a data acquisition is started. In this case the server will send first the number of 
samples and an  integer number (little endian) followed by the acquired samples as integer numbers
packing the two ADC channels (little endian).

Message                 Response          Meaning         

SYNC=[YES, NO]         OK                Defines whether the device is open in synchronous or asychronous mode
SYNC?                   [YES, NO]         Query Synchronous mode
FDIV=<division>         OK                Set frequency division
FDIV?                   <division>        Get current frequency division
BUFDIM=<dimension>      OK                Set data acquisition buffer dimension
BUFDIM?                 <dimension>       Query current buffer dimension
SAMPLES=<nsamples>       OK               Set the number odf samples to be acquired 
SAMPLES?                <nsamples>        Query the number of samples
OPEN                    OK                Open and configures rp_adc_dac device
START                   <see above>       Do acquisition and send back the acquired samples
CLOSE                   OK                Close the rp_adc_dac device and the current session
***************************************************************************/
#define SERVERADDRESS "localhost"

static int fd = -1;
static int isSync = 1;                //Default sycnhronous
static int fDiv =  1250000;           //1kHz default sampling speed 
static int bufDim = 10;               //10 samples default buffer dimension 
static int nSamples = 0;              //Number of samples must be set before acquisition
static unsigned int *samplesBuf = 0;  //Buffer holding acquired samples
static short *ch1Buf = 0;             //Buffer holding acquired samples
static short *ch2Buf = 0;             //Buffer holding acquired samples


//Open and configure rp_adc_dac based on the values stored in the static configration variables
static void configure()
{
    if(!isSync)
        fd = open("/dev/rp_adc_dac", O_NONBLOCK) ;
    else
        fd = open("/dev/rp_adc_dac", O_RDWR);

    if (fd < 0)
    {
        printf("Cannto open /dev/rp_adc_dac\n");
        exit(0);
    }
 
    //Set frequency decimation 
    int reg = fDiv;
    ioctl(fd, RP_ADC_DAC_SET_DECIMATION_REGISTER, &reg);

    //Allocate room for acquired samples
    samplesBuf = (unsigned int *)malloc(nSamples * sizeof(unsigned int));
    ch1Buf = (short *)malloc(nSamples * sizeof(short));
    ch2Buf = (short *)malloc(nSamples * sizeof(short));
}

//Acquire the specified number of samples
static void acquire()
{
    int reg, rb, sampleIdx;
    int leftSamples = nSamples;

    printf("Acquire %d\n", nSamples);

    //flush ADC FIFO
    ioctl(fd, RP_ADC_DAC_FIFO_FLUSH, NULL);
    //start enqueing ADC samples in FIFO
    reg = 1;
    ioctl(fd, RP_ADC_DAC_SET_ENABLE_REGISTER, &reg);
    while(leftSamples > 0)
    {
        if(bufDim <= leftSamples)
        {
            rb = read(fd, &samplesBuf[nSamples - leftSamples], sizeof(int)*bufDim);
        }
        else
        {
            rb = read(fd, &samplesBuf[nSamples - leftSamples], sizeof(int)*leftSamples);
        }
        if(rb < 0) 
        {
            printf("ADC read failed\n");
            exit(0);
        }
        leftSamples -= rb/sizeof(int);
    }
    printf("Acquisition terminated\n");
    reg = 0;
    ioctl(fd, RP_ADC_DAC_SET_ENABLE_REGISTER, &reg);
    //Ectract ch1 and ch2 from packed buffer
    for (sampleIdx = 0; sampleIdx < nSamples; sampleIdx++)
    {
        //least significant 16 bits encode channel 1
        memcpy(&ch1Buf[sampleIdx], &samplesBuf[sampleIdx], 2);
        //most significant 16 bits encode Channel 2
        ch2Buf[sampleIdx] = (samplesBuf[sampleIdx] & 0xffff0000)>> 16;
    }
}


//Read the specified number of bytes from from a socket.  
static int readFully(int sock, char *buf, int bufSize)
{
    int rb, readSize = 0;
    while(readSize < bufSize)
    {
        rb = recv(sock, &buf[readSize], bufSize - readSize, 0);
        if(rb < 0)
        {
            printf("Error reading socket\n");
            return -1;
        }
        readSize += rb;
    }
}
//Send a string. Protocol:
//string len (1 bytes)
//ASCII string
static void sendStringMsg(int sock, char *msg)
{
    unsigned char size = strlen(msg);
    send(sock, &size, 1, 0);
    send(sock, msg, size, 0);
}

//Receive a string. Sampe protocol as above
static char *recStringMsg(int sock)
{
    unsigned char msgLen;
    if(readFully(sock, &msgLen, 1) == -1)
        return NULL;
    //Make room for the terminator
    char *msg = malloc(msgLen+1);
    if(readFully(sock, msg, msgLen) == -1)
        return NULL;
    msg[msgLen] = 0;
    return msg;
}

//Handle commands received from client
static int handleMsg(int connSock)
{
    char strBuf[64];
    char *msg = recStringMsg(connSock);
    if(!msg)
        return -1;
    printf("Received message: %s\n", msg);
    if(!strcmp(msg, "SYNC?"))
    {
        if(isSync)
        {
            sendStringMsg(connSock, "YES");
        }
        else
        {
            sendStringMsg(connSock, "NO");
        }
    }
    else if (!strncmp(msg, "SYNC", 4))
    {
        isSync = !strcmp(&msg[strlen("SYNC")+1], "YES");
    }
    else if (!strcmp(msg, "FDIV?"))
    {
        sprintf(strBuf, "%d", fDiv);
        sendStringMsg(connSock, strBuf);
    }
    
    else if (!strncmp(msg, "FDIV", 4) && 
        strlen(msg) > strlen("FDIV")+1) //Make sure we no not overflow a wrong message causing a bus error
    {
        sscanf(&msg[strlen("FDIV")+1], "%d", &fDiv);
        sendStringMsg(connSock, "OK");
    }
    else if (!strcmp(msg, "BUFDIM?"))
    {
        sprintf(strBuf, "%d", bufDim);
        sendStringMsg(connSock, strBuf);
    }
    else if (!strncmp(msg, "BUFDIM", 6) && 
        strlen(msg) > strlen("BUFDIM")+1)
    {
        sscanf(&msg[strlen("BUFDIM")+1], "%d", &bufDim);
        sendStringMsg(connSock, "OK");
    }
    else if (!strcmp(msg, "SAMPLES?"))
    {
        sprintf(strBuf, "%d", nSamples);
        sendStringMsg(connSock, strBuf);
    }
    else if (!strncmp(msg, "SAMPLES", 7) && 
        strlen(msg) > strlen("SAMPLES")+1)
    {
        sscanf(&msg[strlen("SAMPLES")+1], "%d", &nSamples);
        sendStringMsg(connSock, "OK");
    }
    else if (!strcmp(msg, "OPEN"))
    {
        configure();
        sendStringMsg(connSock, "OK");
    }
    else if (!strcmp(msg, "CLOSE"))
    {
        close(fd);
        sendStringMsg(connSock, "OK");
        return -1;
    }
    else if (!strcmp(msg, "START"))
    {
        acquire();
        //Protocol: 
        //Number of samples (4 byte int, little endian)
        //Ch1 samples (16 bytes per sample)
        //Ch2 samples (16 bytes per sample)
        send(connSock, &nSamples, sizeof(int), 0);
        send(connSock, ch1Buf, sizeof(short) * nSamples, 0);
        send(connSock, ch2Buf, sizeof(short) * nSamples, 0);
    }
    else
    {
        printf("Invalid message: %s\n", msg);
    }
    return 0;
}


//Main program: open a sever socket listening for incoming connections
//When a connection is established, handle received commands until a 
//CLOSE command is received
int main(int argc, char *argv[])
{
    int serverSocket, connectSocket, returnCode;
    socklen_t clientAddressLen;
    struct sockaddr_in serverAddress, clientAddress;
    int port;

    if(argc != 2)
    {
        printf("Usage: adc_remote <port>");
        exit(-1);
    }
    sscanf(argv[1], "%d", &port);
    if (((serverSocket = socket(AF_INET,SOCK_STREAM,0))) == -1) 
    {
        perror("Cannot open server socket");
        exit(-1);
    }
    printf("Port: %d\n", port);
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_port = htons(port);
    serverAddress.sin_addr.s_addr = INADDR_ANY;
  
    if (bind (serverSocket, (struct sockaddr*)  &serverAddress, sizeof(serverAddress)) == -1) 
    {
        perror("Error in server socket bind()");
        exit(-1);
    }

    if (listen(serverSocket, 5) == -1) 
    {
        perror("Error in server socket listen()");
        exit(-1);
    }

    while (1) {
    /* Accept incoming connection */
        printf("Waiting connection....\n");
        memset(&clientAddress, 0, sizeof(clientAddress));
        clientAddressLen = sizeof(clientAddress);
        connectSocket = accept(serverSocket, (struct sockaddr *)&clientAddress, &clientAddressLen);
        printf("Connect socket: %d\n", connectSocket);
        if (connectSocket == -1) 
        {
            perror("Error in accept()");
            close(serverSocket);
            exit(-1);
        }
        //Handle connection until client exits
        printf("Connection received\n");
        while(1)
        {
            if(handleMsg(connectSocket) == -1)
            {
                printf("Connection terminated\n");
                break;
            }
        }
    }
    return 0;
  }

  

