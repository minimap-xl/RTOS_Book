#include "prod_con_msg.h"
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/syscall.h>

class SimpleProducerConsumerMsg: public ProducerConsumerMsg
{
    public:
        SimpleProducerConsumerMsg(int msgSize, int maxMessages):ProducerConsumerMsg(msgSize, maxMessages)
        {
        }
        virtual void consume(char *buf)
        {
            pid_t pid = getpid();
            printf("Process %d: value: %d\n", (int)pid, *(int *)buf);
        }
};

int main(int argc, char *argv[])
{
    int numProcesses;
    if(argc != 2)
    {
        printf("Usage: simple_prod_con <numProcesses>");
    }
    sscanf(argv[1], "%d", &numProcesses);
    SimpleProducerConsumerMsg spd(sizeof(int), 1);
    spd.reset();
    spd.start(numProcesses);
    for (int i = 0; i < 10; i++)
    {
        spd.produce((char *)&i);
    }
    spd.stop();
}

