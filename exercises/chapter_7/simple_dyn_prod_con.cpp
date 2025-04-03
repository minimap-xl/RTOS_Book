#include "dyn_prod_con.h"
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/syscall.h>
#include <time.h>

class SimpleDynamicProducerConsumer: public DynamicProducerConsumer
{
    public:
        SimpleDynamicProducerConsumer(int numThreads):DynamicProducerConsumer(numThreads)
        {

        }
        virtual void consume(char *buf, int size)
        {
            pid_t tid = syscall(SYS_gettid);
          //  printf("Thread %d: value: %d\n", (int)tid, *(int *)buf);

            struct timespec waitTime = {0, 100000000}; //0.1 s
            nanosleep(&waitTime, NULL);
        }
};

int main(int argc, char *argv[])
{
    int targetLen;
    if(argc != 2)
    {
        printf("Usage: simple_dyn_prod_con <Target Queue Len>\n");
        exit(0);
    }
    sscanf(argv[1], "%d", &targetLen);
    SimpleDynamicProducerConsumer spd(10);
    spd.setTargetQueueLen(targetLen);
    spd.start();
    spd.startControl();
    //for (int i = 0; i < 10; i++)
    int i = 0;
    while(true)
    {
        int *currInt = new int[1];
        *currInt = i++;
        spd.produce((char *)currInt, sizeof(int));
        struct timespec waitTime = {0, 10000000}; //0.01 s
        nanosleep(&waitTime, NULL);
    }
    spd.stop();
}

