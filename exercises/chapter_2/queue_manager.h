#include "queue.h"
#include <pthread.h>
class QueueManager {
    Queue queue;
    pthread_t thread;
    bool started;
public:
    QueueManager():started(false){};
    ~QueueManager(){};
    void produce(char *buf, int size);
    void start();
    void stop();
    Queue *getQueue() {return &queue;}
    virtual void consume(char *buf, int size) = 0;
};