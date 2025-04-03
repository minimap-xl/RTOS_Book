
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

#define MAX_PROCESSES 100
#define MSG_KEY 1237
#define USER_MESSAGE 1
#define SLOT_MESSAGE  2

class ProducerConsumerMsg {
    key_t msgId;
    pid_t processPool[MAX_PROCESSES];
    int numProcesses;
    int msgSize;
    int maxMessages;
    bool started;
    void handleMessage();
public:
    ProducerConsumerMsg(int msgSize, int maxMessages);
    void start(int numProcesses);
    void stop();
    void produce(char *buf);
    void reset();
    virtual void consume(char *buf) = 0;
};

