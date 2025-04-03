#include "queue.h"
#include <stdio.h>
#include <stdlib.h>
Queue::Queue(int maxItems)
{
    //Initialize Posix Mutex and COndition
    if(pthread_mutex_init(&lock, NULL) !=0)
    {
        perror("MUTEXTINIT");
        exit(0);
    }
    pthread_cond_init(&empty, NULL);
    pthread_cond_init(&full, NULL);
    //Initialize pointers
    first = last = NULL;
    numItems = 0;
    this->maxItems = maxItems;
}

Queue::~Queue()
{
    return;
    //Deallocate elements still enqueued
    pthread_mutex_lock(&lock);
    QueueItem *currItem = first;
    while(currItem)
    {
        QueueItem *prevItem = currItem;
        currItem = currItem->nxt;
        if(prevItem->buf)
        {
            delete [] prevItem->buf;
        }
        delete prevItem;
    }
    pthread_mutex_unlock(&lock);
}

void Queue::addItem(char *buf, int size)
{
    pthread_mutex_lock(&lock);
    while(numItems == maxItems)
    {
        pthread_cond_wait(&full, &lock);
    }
    numItems++;
    if (first == NULL)
    {
        first = last = new QueueItem(buf, size);
    }
    else
    {
        last->nxt = new QueueItem(buf, size);
        last = last->nxt;
        //No need to signal conditions
    }
    pthread_cond_signal(&empty);
    pthread_mutex_unlock(&lock);
}

char *Queue::getItem(int &size)
{
     pthread_mutex_lock(&lock);
    while(numItems == 0)
    {
        pthread_cond_wait(&empty, &lock);
    }
    numItems--;
    char *retBuf = first->buf;
    size = first->size;
    QueueItem *oldFirst = first;
    first = first->nxt;
    delete oldFirst;
    pthread_cond_signal(&full);
    pthread_mutex_unlock(&lock);
    return retBuf;
}

int Queue::getNumItems()
{
    pthread_mutex_lock(&lock);
    int retNumItems = numItems;
    pthread_mutex_unlock(&lock);
    return retNumItems;
}


