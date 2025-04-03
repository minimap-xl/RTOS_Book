#include "queue_manager.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <time.h>

class QueueUdp:public QueueManager
{

    int sockFd;
    struct sockaddr_in serverAddr;
    
public:
    QueueUdp(const char *ip, int port)
    {
        if ((sockFd = socket(AF_INET, SOCK_DGRAM, 0)) < 0) 
        {
            perror("Socket creation failed");
            exit(EXIT_FAILURE);
        }
        memset(&serverAddr, 0, sizeof(serverAddr)); 
        serverAddr.sin_family = AF_INET;
        serverAddr.sin_port = htons(port);
        serverAddr.sin_addr.s_addr = inet_addr(ip);
    }

    virtual void consume(char *buf, int size)
    {
        printf("Sending %d bytes...\n", size);
        ssize_t sent_bytes = sendto(sockFd, buf, size, 0,
                                (struct sockaddr *)&serverAddr, sizeof(serverAddr));
        if (sent_bytes < 0) {
            perror("Failed to send");
            close(sockFd);
            exit(EXIT_FAILURE);
        }
    }
};

int main(int argc, char *argv[])
{
    char inFileName[256];
    char outFileName[256];
    struct timespec req = {0};  
    req.tv_sec = 0;             // 0 seconds
    req.tv_nsec = 100000000L;   // 500 million nanoseconds = 0.5 seconds

    QueueUdp qUdp("127.0.0.1", 8333);
    qUdp.start();
    printf("PARTITO\n");
    for(int i = 0; i < 202; i++)
    {
        nanosleep(&req, NULL);
        sprintf(inFileName, "/home/mdsplus/56022_frames_jpg/56022_%03d.jpg", i+1);
        sprintf(outFileName, "Out_%03d.jpg", i+1);
        FILE *f = fopen(inFileName, "r");
   // Get file size
        fseek(f, 0, SEEK_END);
        long fileSize = ftell(f);
        rewind(f);  // Move file pointer back to beginning
        char *buffer = new char[fileSize];
        fread(buffer, 1, fileSize, f);
        fclose(f);
        qUdp.produce(buffer, fileSize);
    }
    qUdp.stop();
    return 0;
}

