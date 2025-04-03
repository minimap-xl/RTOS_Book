#include <pthread.h>

//Support class for Queue
class QueueItem
{
public:
    char *buf;
    int size;
    QueueItem *nxt;
    //Constructor
    QueueItem(char *buf, int size):buf(buf), size(size), nxt(NULL){}
};


class Queue 
{
    pthread_mutex_t lock;
    pthread_cond_t empty, full;
    QueueItem *first, *last;
    int numItems;
    int maxItems;
public:
    //Constructor
    Queue(int maxItems = 1000);
    //Destrutor
    ~Queue();
    //Enqueue a new item
    void addItem(char *buf, int size);
    //Get the oldest item in the queue
    char *getItem(int &size);
    int getNumItems();
};
