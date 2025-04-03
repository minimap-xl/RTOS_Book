#include "publish_subscribe_multicast.h"
#include <pthread.h>

struct ThreadArg{
    Broker *broker;
    TCPSocket *socket;
};

void Broker::handlePublish(char *itemName, TCPSocket *sock)
{
    std::string itemNameStr(itemName);
    int msgLen;
    if(sock->receiveMsg((char *)&msgLen, 4) == 0)
    {
        return;
    }
    msgLen = ntohl(msgLen);
    char *msg = new char[msgLen];
    if(sock->receiveMsg(msg, msgLen) == 0)
    {
        return;
    }
    std::string multicastIp; 
    pthread_mutex_lock(&mutex);
    if(subscriberHash.find(itemNameStr) != subscriberHash.end())
    {
        multicastIp = subscriberHash[itemNameStr];
        pthread_mutex_unlock(&mutex);
        BrokerPublishMessage *publishMessage = new BrokerPublishMessage(itemName, msgLen, msg);
        publishSock.sendMsgTo((char *)publishMessage, sizeof(BrokerPublishMessage), multicastIp, PUBLISH_PORT);
        delete publishMessage;
    }
    else //No subscribers
    {
        pthread_mutex_unlock(&mutex);
    }
}

void Broker::handleSubscribe(char *itemName, TCPSocket *sock)
{
    pthread_mutex_lock(&mutex);
    std::string itemNameStr(itemName);
    std::string multicastIp;
    if(subscriberHash.find(itemNameStr) != subscriberHash.end())
    {
       multicastIp = subscriberHash[itemNameStr];
    }
    else
    {
        incrementLastMulticastIp();
        char multicastIpBuf[64];
        sprintf(multicastIpBuf, "%d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3]);
        multicastIp = multicastIpBuf;
        subscriberHash[itemNameStr] = multicastIp;
    }
    pthread_mutex_unlock(&mutex);
    char multicastIpLen = multicastIp.size();
    sock->sendMsg(&multicastIpLen, 1);
    sock->sendMsg((char *)multicastIp.c_str(), multicastIp.size());
}

Broker::~Broker()
{}
static void *handleBrokerMsg(void *arg)
{
/*************
Message structure:
    type (1byte): PUBLISH|SUBSCRIBE
    itemNameLen(1 byte, max 256 chars)
    itemName(itemLen bytes)
If publish message:
    messageLen(4 bytes  Network Endianity)
    message(messageLen bytes)

If subscribe message the multicast address is returned:
    char retIpLen;
    char retIp(retIpLen bytes)
*************/
    ThreadArg *threadArg = (ThreadArg *)arg;
    TCPSocket *sock = threadArg->socket;
    Broker *broker = threadArg->broker;
    char type, itemLen;
    while(true)
    {
        if(sock->receiveMsg(&type, 1) == 0)
        {
            return NULL;
        }
        if(sock->receiveMsg(&itemLen, 1) == 0)
        {
            return NULL;
        }
        char *itemName = new char[itemLen+1]; //Make room for terminator
        if(sock->receiveMsg(itemName, itemLen) == 0)
        {
            return NULL;
        }
        itemName[itemLen] = 0;
        switch(type) {
            case PUBLISH:
                broker->handlePublish(itemName, sock);
                break;
            case SUBSCRIBE:
                broker->handleSubscribe(itemName, sock);
                break;
            default:
                printf("Unexpected message!\n");
                exit(0);
        }
    }
}

Broker::Broker(int serverPort):serverSock(serverPort)
{
    pthread_mutex_init(&mutex, NULL);
    //Initial Multicast address 230.0.0.0
    ip[0] = 239;
    ip[1] = ip[2] = ip[3] = 0;
}

void Broker::start()
{
    while(true)
    {
        TCPSocket *sock = serverSock.acceptConnection();
        pthread_t thread;
        //We beet to pass to the thread both the Broker instance and the newly created socket
        ThreadArg *threadArg = new ThreadArg;
        threadArg->broker = this;
        threadArg->socket = sock;
        pthread_create(&thread, NULL, handleBrokerMsg, threadArg);
     }
}
void Broker::incrementLastMulticastIp()
{
    for(int i = 3; i >= 0; i--)
    {
        if(ip[i] < 255)
        {
            ip[i]++;
            break;
        }
        else
        {
            ip[i] = 0;
        }
    }
}
int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Usage: broker <port>\n");
        exit(0);
    }
    int port;
    sscanf(argv[1], "%d", &port);
    Broker broker(port);
    broker.start();
}


