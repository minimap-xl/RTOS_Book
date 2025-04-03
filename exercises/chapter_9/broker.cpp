#include "publish_subscribe.h"
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
    char *message = new char[msgLen];
    if(sock->receiveMsg(message, msgLen) == 0)
    {
        return;
    }
    pthread_mutex_lock(&mutex);
    if(subscriberHash.find(itemNameStr) != subscriberHash.end())
    {
        std::vector<TCPSocket *> socketsV = subscriberHash[itemNameStr];
        std::vector<int> failedV;
        for(size_t i = 0; i < socketsV.size(); i++)
        {
            char itemLen = strlen(itemName);
            socketsV[i]->sendMsg(&itemLen, 1);
            socketsV[i]->sendMsg(itemName, itemLen);
            int ml = htonl(msgLen);
            socketsV[i]->sendMsg((char *)&ml, 4);
            if(socketsV[i]->sendMsg(message, msgLen) < 0)
            {
                failedV.push_back(i);
            }
        }
    //If some clients died, rebuild a vew socket vector of alive 
        if(failedV.size() > 0) 
        {
            std::vector<TCPSocket *> newV;
            for (size_t i = 0; i < socketsV.size(); i++)
            {
                size_t j;
                for(j = 0; j < failedV.size(); j++)
                {
                    if(failedV[j] == i)
                    {
                        break;
                    }
                }
                if(j == failedV.size())
                {
                    newV.push_back(socketsV[i]);
                }
                else
                {
                    delete socketsV[i];
                }
            }
            subscriberHash[itemNameStr] = newV;
        }
   }
 
    pthread_mutex_unlock(&mutex);

    //Remve dead clients
    delete [] message;
}

void Broker::handleSubscribe(char *itemName, TCPSocket *sock)
{
    char ipLen;
    std::string ip = sock->getConnectedIp();
    int port;
    if(sock->receiveMsg((char *)&port, 4) == 0)
    {
        return;
    }
    port = ntohl(port);
    TCPSocket *subscriberSock = new TCPSocket;
    subscriberSock->connectTo(ip, port);
    if(!subscriberSock->isConnected())
    {
        return;
    }
    pthread_mutex_lock(&mutex);
    std::string itemNameStr(itemName);
    if(subscriberHash.find(itemNameStr) != subscriberHash.end())
    {
        std::vector<TCPSocket *> socketsV = subscriberHash[itemNameStr];
        socketsV.push_back(subscriberSock);
        subscriberHash[itemNameStr] = socketsV;
    }
    else
    {
        std::vector<TCPSocket *> newVect;
        newVect.push_back(subscriberSock);
        subscriberHash[itemNameStr] = newVect;
    }
    pthread_mutex_unlock(&mutex);
}

void Broker::handleUnsubscribe(char *itemName, TCPSocket *sock)
{
    char ipLen;
    std::string ip = sock->getConnectedIp();
    int port;
    if(sock->receiveMsg((char *)&port, 4) == 0)
    {
        return;
    }
    port = ntohl(port);
    removeFromSubscribed(itemName, ip, port);
}

void Broker::removeFromSubscribed(char *itemName, std::string ip, int port)
{
    std::string itemNameStr(itemName);
    pthread_mutex_lock(&mutex);
    if(subscriberHash.find(itemNameStr) != subscriberHash.end())
    {
        std::vector<TCPSocket *> socketsV = subscriberHash[itemNameStr];
        for(size_t i = 0; i < socketsV.size(); i++)
        {
            if (socketsV[i]->getConnectedIp() == ip && socketsV[i]->getConnectedPort() == port)
            {
                delete socketsV[i];
                socketsV.erase(socketsV.begin()+i);
                subscriberHash[itemNameStr] = socketsV;
                break;
            }  

        }
    }
    pthread_mutex_unlock(&mutex);
}
Broker::~Broker()
{
    for (const std::pair<std::string, std::vector<TCPSocket *>>& n : subscriberHash)
    {
        std::vector<TCPSocket *> socketsV = n.second;
        for(size_t i = 0; i < socketsV.size(); i++)
        {
            delete(socketsV[i]);
        }
    }
}
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
If subscribe or unsubscribe  message
    port(4 bytes network endianity)
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
            case UNSUBSCRIBE:
                broker->handleUnsubscribe(itemName, sock);
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


