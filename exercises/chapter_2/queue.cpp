#include "queue.h"
#include <stdio.h>
#include <stdlib.h>
Queue::Queue()
{
    //Initialize Posix Mutex and COndition
    if(pthread_mutex_init(&lock, NULL) !=0)
    {
        perror("MUTEXTINIT");
        exit(0);
    }
    pthread_cond_init(&cond, NULL);
    //Initialize pointers
    first = last = NULL;
    numItems = 0;
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
    numItems++;
    if (first == NULL)
    {
        first = last = new QueueItem(buf, size);
        pthread_cond_signal(&cond);
    }
    else
    {
        last->nxt = new QueueItem(buf, size);
        last = last->nxt;
        //No need to signal conditions
    }
    pthread_mutex_unlock(&lock);
}

char *Queue::getItem(int &size)
{
    pthread_mutex_lock(&lock);
    while(first == NULL)
    {
        pthread_cond_wait(&cond, &lock);
    }
    numItems--;
    char *retBuf = first->buf;
    size = first->size;
    QueueItem *oldFirst = first;
    first = first->nxt;
    delete oldFirst;
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


