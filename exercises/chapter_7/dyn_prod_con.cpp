#include "dyn_prod_con.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <unordered_set>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/syscall.h>


pthread_t controlThread;

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
std::unordered_set<pid_t> activeThreads;

static double kp = 0.1, ki = 0.005;
static double deltaSum = 0;
static bool stopControlFlag;
extern "C" {
    static void *threadRtn(void *arg);
}
extern "C" {
    static void *threadControlRtn(void *arg);
}

static void *controlThreadRtn(void *arg)
{
    DynamicProducerConsumer *prodCons = (DynamicProducerConsumer *)arg;
    while(!stopControlFlag)
    {
        int targetQueueLen = prodCons->getTargetQueueLen();
        int queueLen =  prodCons->getQueueLen();
        printf("Queue Len: %d (Target: %d)\n", queueLen, targetQueueLen);

        int delta =  queueLen - targetQueueLen;
        deltaSum += delta;
        int reqThreads = prodCons->getNumThreads() + kp * delta + ki * deltaSum;
        if (reqThreads < 1)
        {
            reqThreads = 1;
        }
        printf("Requested Threads: %d\n", reqThreads);
        prodCons->setNumThreads(reqThreads);
        sleep(1); 
    }

}



static void *threadRtn(void *arg)
{
    //Regirter first this thread
    pid_t tid = syscall(SYS_gettid);
    pthread_mutex_lock(&mutex);
    activeThreads.insert(tid);
    pthread_mutex_unlock(&mutex);

    DynamicProducerConsumer *prodCons = (DynamicProducerConsumer *)arg;
    while(true)
    {
        char *buf;
        int size;
        buf = prodCons->getQueue()->getItem(size);
        //A NULL value for buf indicates the end of the operation
        if(buf == NULL)
        {
            //Unregister this thread
            pid_t tid = syscall(SYS_gettid);
            pthread_mutex_lock(&mutex);
            activeThreads.erase(tid);
            pthread_mutex_unlock(&mutex);
            break;
        }
        prodCons->consume(buf, size);
    } 
    pthread_exit(NULL);
}

void DynamicProducerConsumer::produce(char *buf, int size)
{
    queue.addItem(buf, size);
}


void DynamicProducerConsumer::start()
{
    started = true;
    for(int i = 0; i < numThreads; i++)
    {
        pthread_t *thread = new pthread_t[1];
        if(pthread_create(thread, NULL, threadRtn, this) != 0)
        {
            perror("Failed to create thread");
        }
    }
}

Queue * DynamicProducerConsumer::getQueue(){return &queue;}

int DynamicProducerConsumer::getQueueLen()
{
    return queue.getNumItems();
}

void DynamicProducerConsumer::stop()
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

    //sleep(1);
    int numPendingThreads;
    while(true)
    {
        int numPendingThreads;
        pthread_mutex_lock(&mutex);
        numPendingThreads = activeThreads.size();
        pthread_mutex_unlock(&mutex);
        if(numPendingThreads == 0)
        {
            break;
        }
    }
    started = false;
}


void DynamicProducerConsumer::setNumThreads(int newNumThreads)
{
    for(int i = newNumThreads; i < numThreads; i++)
    {
        queue.addItem(NULL, 0);
    }
    for(int i = numThreads; i < newNumThreads; i++)
    {
        pthread_t *thread = new pthread_t[1];
        if(pthread_create(thread, NULL, threadRtn, this) != 0)
        {
            perror("Failed to create thread");
        }

    }
    numThreads = newNumThreads;
}

void DynamicProducerConsumer::startControl()
{
    stopControlFlag = false;
    if(pthread_create(&controlThread, NULL, controlThreadRtn, this) != 0)
    {
        perror("Failed to create thread");
    }
}
void DynamicProducerConsumer::stopControl()
{
    stopControlFlag = true;
};



