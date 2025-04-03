#include "queue.h"
#include <pthread.h>
#define MAX_THREADS 100
class ProducerConsumer {
    Queue queue;
    pthread_t threadPool[MAX_THREADS];
protected:
    int numThreads;
    bool started;
    void addThread();
public:
    ProducerConsumer(int numThreads, int maxItems = 100):numThreads(numThreads),queue(maxItems),started(false){}
    ~ProducerConsumer(){}
    Queue *getQueue();
    void start();
    void stop();
    void produce(char *buf, int size);
    int getQueueLen();
    virtual void consume(char *buf, int size) = 0;
};