#include "prod_con_msg.h"
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

#define MAX_MSG_SIZE 8192

struct userMsg {
    long mtype; 
    char msg[MAX_MSG_SIZE];
};



void ProducerConsumerMsg::handleMessage()
{
    struct userMsg recMsg;
    struct msgbuf  slotMsg;
    while(true)
    {
        if(msgrcv(msgId, &recMsg, msgSize + 1, USER_MESSAGE, 0) < 0)
        {
            perror("Error receiving  Message\n");
            exit(0);
        }
        if(recMsg.msg[0] == 1) //Kill message
        {
            printf("Producer process terminated\n");
            exit(0);
        } 
        
        slotMsg.mtype = SLOT_MESSAGE;
        slotMsg.mtext[0] = 0;
        if(msgsnd(msgId, &slotMsg, 1, 0) < 0)
        {
            perror("Error sending slot Message\n");
            exit(0);
        }
        consume(&recMsg.msg[1]);
    }
}


ProducerConsumerMsg::ProducerConsumerMsg(int msgSize, int maxMessages):
    msgSize(msgSize),maxMessages(maxMessages),started(false)
{
    //Check msgSize. Max size flr linux messages is 8192, 1 byte reserved for kill message flag
    if(msgSize > 8191) 
    {
        printf("Maximum allowed message size is 8191\n");
        exit(0);
    }
    if((msgId = msgget(MSG_KEY, IPC_CREAT | 0666)) < 0)
    {
        perror("Cannot get Message Queue\n");
        exit(0);
    }
}

void ProducerConsumerMsg::produce(char *buf)
{
    //Take an empty slot first. Slot Messages have 0 size
    struct msgbuf  slotMsg;
    slotMsg.mtype = SLOT_MESSAGE;
    struct userMsg sendMsg;
    if(msgrcv(msgId, &slotMsg, 1, SLOT_MESSAGE, 0) < 0)
    {
        perror("Error receiving slot Message\n");
        exit(0);
    }
    sendMsg.mtype = USER_MESSAGE;
    sendMsg.msg[0] = 0; //0 means ordinary message, 1 means kill messgae
    memcpy(&sendMsg.msg[1], buf, msgSize);
    if(msgsnd(msgId, &sendMsg, msgSize+1, 0) < 0)
    {
        perror("Error sending Message\n");
        exit(0);
    } 
}

//Empty msg queue for bot slots and messages
void ProducerConsumerMsg::reset()
{
    struct userMsg retMsg;//dummy
    //Empty messages
    while(msgrcv(msgId, &retMsg, msgSize+1, USER_MESSAGE, IPC_NOWAIT) > 0);
    while(msgrcv(msgId, &retMsg, 1, SLOT_MESSAGE, IPC_NOWAIT) > 0);
}
void ProducerConsumerMsg::start(int numProcesses)
{
    this->numProcesses = numProcesses;
    started = true;
    for(int i = 0; i < numProcesses; i++)
    {
        pid_t pid;
        if((pid = fork()) == 0)//child process
        {
            handleMessage();
        }
        else
        {
            processPool[i] = pid;
        }
    }
    struct msgbuf  slotMsg;
    slotMsg.mtype = SLOT_MESSAGE;
    slotMsg.mtext[0] = 0;
    for(int i = 0; i < maxMessages; i++)
    {
        if(msgsnd(msgId, &slotMsg, 1, 0) < 0)
        {
            perror("Error sending slot Message\n");
            exit(0);
        }
    }
}

void ProducerConsumerMsg::stop()
{
    if(!started)
    {
        return;
    }
    userMsg killMsg;
    killMsg.mtype = USER_MESSAGE;
    memset(killMsg.msg, 0, msgSize+1);
    killMsg.msg[0] = 1; //Kill flag
    for(int i = 0; i < numProcesses; i++)
    {
        if(msgsnd(msgId, &killMsg, msgSize + 1, 1) < 0)
        {
            perror("Error sending slot Message\n");
            exit(0);
        }
    }
    int retVal; //Ignored
    for(int i = 0; i < numProcesses; i++)
    {

        if(wait(&retVal) < 0)
        {
            perror("Failed to wait");
        }
    }
    started = false;
}
