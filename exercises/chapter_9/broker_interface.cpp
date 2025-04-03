#include "publish_subscribe.h"

struct BrokerInfo {
    BrokerInterface *brokerI;
    TCPSocket *sock;
};

/***************
 * Received message structure: 
 * - itemLength (1 byte)
 * - item (itemLength bytes)
 * - msgLen (4 bytes Network endianity)
 * - message (msgLen bytes)
****************/
extern "C" void *handleMessageReception(void *arg)
{
    BrokerInfo *info = (BrokerInfo *)arg;
    TCPSocket *sock = info->sock;
    BrokerInterface *brokerI = info->brokerI;
    while(true)
    {
        char itemLen;
        if(sock->receiveMsg(&itemLen, 1) == 0) 
        {
            printf("Socked down!!\n");
            return NULL;
        }
        char *item = new char[itemLen+1];
        if(sock->receiveMsg(item, itemLen) == 0)
        {
            return NULL;
        }
        item[itemLen] = 0;
        int msgLen;
        if(sock->receiveMsg((char *)&msgLen, 4) == 0)
        {
            return NULL;
        }
        msgLen = ntohl(msgLen);
        char *message = new char[msgLen];
        if(sock->receiveMsg(message, msgLen) == 0)
        {
            return NULL;

        }
        brokerI->messageReceived(item, msgLen, message);
        delete [] message;
        delete [] item;
    }
}

extern "C" void *handleBrokerConnection(void *arg)
{
    BrokerInterface *brokerI = (BrokerInterface *)arg;
    TCPSocketServer socketServer(brokerI->getThisPort());
    while(true)
    {
        TCPSocket *sock = socketServer.acceptConnection();
        BrokerInfo *info = new BrokerInfo;
        info->brokerI = brokerI;
        info->sock = sock;
        pthread_t thread;
        pthread_create(&thread,NULL, handleMessageReception, info);
    }
}

BrokerInterface::BrokerInterface(char *brokerIp, int brokerPort, int thisPort):thisPort(thisPort)
{
    brokerSock.connectTo(brokerIp, brokerPort);
    pthread_t thread;
    pthread_create(&thread, NULL, handleBrokerConnection, this);
}

BrokerInterface::~BrokerInterface()
{
    for(size_t i = 0; i < subscribedItemsV.size(); i++)
    {
        unsubscribe(subscribedItemsV[i]);
    }
}

/*************
Message structure:
    type (1byte): PUBLISH|SUBSCRIBE
    itemNameLen(1 byte, max 256 chars)
    itemName(itemLen bytes)
If publish message:
    messageLen(4 bytes  Network Endianity)
    message(messageLen bytes)

*************/
void BrokerInterface::publish(std::string item, int msgLen, char *msg)
{
    char type = PUBLISH;
    brokerSock.sendMsg(&type, 1);
    char itemLen = item.size();
    brokerSock.sendMsg(&itemLen, 1);
    brokerSock.sendMsg((char *)item.c_str(), itemLen);
    int ml = htonl(msgLen);
    brokerSock.sendMsg((char *)&ml, 4);
    brokerSock.sendMsg(msg, msgLen);
}
void BrokerInterface::subscribe(std::string item)
{
    char type = SUBSCRIBE;
    brokerSock.sendMsg(&type, 1);
    char itemLen = item.size();
    brokerSock.sendMsg(&itemLen, 1);
    brokerSock.sendMsg((char *)item.c_str(), itemLen);
    int port = htonl(thisPort);
    brokerSock.sendMsg((char *)&port, 4);
    subscribedItemsV.push_back(item);
}
void BrokerInterface::unsubscribe(std::string item)
{
    char type = UNSUBSCRIBE;
    brokerSock.sendMsg(&type, 1);
    char itemLen = item.size();
    brokerSock.sendMsg(&itemLen, 1);
    brokerSock.sendMsg((char *)item.c_str(), itemLen);
    int port = htonl(thisPort);
    brokerSock.sendMsg((char *)&port, 4);
}





