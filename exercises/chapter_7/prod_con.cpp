#include "prod_con.h"
#include <stdio.h>
#include <stdlib.h>


extern "C" {
    static void *threadRtn(void *arg);
}

static void *threadRtn(void *arg)
{
    ProducerConsumer *prodCons = (ProducerConsumer *)arg;
    while(true)
    {
        char *buf;
        int size;
        buf = prodCons->getQueue()->getItem(size);
        //A NULL value for buf indicates the end of the operation
        if(buf == NULL)
        {
           break;
        }
        prodCons->consume(buf, size);
    } 
    pthread_exit(NULL);
}

void ProducerConsumer::produce(char *buf, int size)
{
    queue.addItem(buf, size);
}


void ProducerConsumer::start()
{
    started = true;
    for(int i = 0; i < numThreads; i++)
    {
        if(pthread_create(&threadPool[i], NULL, threadRtn, this) != 0)
        {
            perror("Failed to create thread");
        }
    }
}

Queue * ProducerConsumer::getQueue(){return &queue;}

int ProducerConsumer::getQueueLen()
{
    return queue.getNumItems();
}

void ProducerConsumer::stop()
{
    if(!started)
    {
        return;
    }
    for(int i = 0; i < numThreads; i++)
    {
        //Every thread in the thread pool will read EXACTLY one empty message
        queue.addItem(NULL, 0);
    }
    void *retVal; //Ignored
    for(int i = 0; i < numThreads; i++)
    {
        if(pthread_join(threadPool[i], &retVal) != 0)
        {
            perror("Failed to join thread");
        }
    }
    started = false;
}
