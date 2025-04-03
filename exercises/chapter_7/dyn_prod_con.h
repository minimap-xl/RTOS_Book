#include "queue.h"
#include <pthread.h>

class DynamicProducerConsumer {
#define MAX_THREADS 100
    Queue queue;
protected:
    int numThreads;
    int targetQueueLen;
    bool started;
    double kp, ki;
public:
    DynamicProducerConsumer(int numThreads, int maxItems = 100):numThreads(numThreads),queue(maxItems),started(false){}
    Queue *getQueue();
    void start();
    void stop();
    void produce(char *buf, int size);
    int getQueueLen();
    virtual void consume(char *buf, int size) = 0;
    void setNumThreads(int newNumThreads);
    int getNumThreads(){return numThreads;}
    void setTargetQueueLen(int targetQueueLen){this->targetQueueLen = targetQueueLen;}
    int getTargetQueueLen() {return targetQueueLen;}
    void startControl();
    void stopControl();
};