#include "queue_manager.h"
#include <stdio.h>
#include <stdlib.h>

extern "C" {
    static void *threadRtn(void *arg);
}

static void *threadRtn(void *arg)
{
    QueueManager *queueM = (QueueManager *)arg;
    while(true)
    {
        char *buf;
        int size;
        buf = queueM->getQueue()->getItem(size);
        //A NULL value for buf indicates the end of the operation
        if(buf == NULL)
        {
           break;
        }
        queueM->consume(buf, size);
    } 
    pthread_exit(NULL);

}

void QueueManager::produce(char *buf, int size)
{
    queue.addItem(buf, size);
}


void QueueManager::start()
{
    started = true;
    if(pthread_create(&thread, NULL, threadRtn, this) != 0)
    {
        perror("Failed to create thread");
    }
}

void QueueManager::stop()
{
    if(!started)
    {
        return;
    }
    queue.addItem(NULL, 0);
    void *retVal; //Ignored
    if(pthread_join(thread, &retVal) != 0)
    {
        perror("Failed to join thread");
    }
    started = false;
}

