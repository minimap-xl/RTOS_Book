#include "prod_con.h"
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/syscall.h>

class SimpleProducerConsumer: public ProducerConsumer
{
    public:
        SimpleProducerConsumer(int numThreads):ProducerConsumer(numThreads)
        {

        }
        virtual void consume(char *buf, int size)
        {
            pid_t tid = syscall(SYS_gettid);
            printf("Thread %d: value: %d\n", (int)tid, *(int *)buf);
        }
};

int main(int argc, char *argv[])
{
    int numThreads;
    if(argc != 2)
    {
        printf("Usage: simple_prod_con <numThreads>\n");
        exit(0);
    }
    sscanf(argv[1], "%d", &numThreads);
    SimpleProducerConsumer spd(numThreads);
    spd.start();
    for (int i = 0; i < 10; i++)
    {
        int *currInt = new int[1];
        *currInt = i;
        spd.produce((char *)currInt, sizeof(int));
    }
    spd.stop();
}

