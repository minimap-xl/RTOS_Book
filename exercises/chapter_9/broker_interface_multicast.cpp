#include "publish_subscribe_multicast.h"

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
    BrokerInterface *brokerI = (BrokerInterface *)arg;
    UDPSocket *sock = brokerI->getPublishSocket();
    while(true)
    {
        char *msg = new char[sizeof(BrokerPublishMessage)];
        int msgLen = sizeof(BrokerPublishMessage);
        if(sock->receiveMsg(msg, msgLen) == 0) 
        {
            printf("Socked down!!\n");
            return NULL;
        }
        BrokerPublishMessage *brokerMessage = (BrokerPublishMessage *)msg;
        brokerI->messageReceived(brokerMessage->getItem(), brokerMessage->getMsgLen(), brokerMessage->getMsg());
        delete [] msg;
    }
}

BrokerInterface::BrokerInterface(char *brokerIp, int brokerPort):publishSock(PUBLISH_PORT), thisPort(thisPort) 
{
    brokerSock.connectTo(brokerIp, brokerPort);
    pthread_t thread;
    pthread_create(&thread, NULL, handleMessageReception, this);
}

BrokerInterface::~BrokerInterface()
{}


/*************
Message structure:
    type (1byte): PUBLISH|SUBSCRIBE
    itemNameLen(1 byte, max 256 chars)
    itemName(itemLen bytes)
If publish message:
    messageLen(4 bytes  Network Endianity)
    message(messageLen bytes)

If subscrbe message, ret message:\
    multicastIpLen: lenght of multiastIp (1 byte)
    multicastIp: multicast IP (multicastIpLen bytes) 

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
    char multicastIpLen;
    brokerSock.receiveMsg(&multicastIpLen, 1);
     char multicastIpBuf[multicastIpLen + 1];
    brokerSock.receiveMsg(multicastIpBuf, multicastIpLen);
    multicastIpBuf[multicastIpLen] = 0;
    std::string multicastIp(multicastIpBuf);
    subscribedHash[item] = multicastIp;
    publishSock.subscribeTo(multicastIp);
}
void BrokerInterface::unsubscribe(std::string item)
{
    if(subscribedHash.find(item) != subscribedHash.end())
    {
        publishSock.unsubscribeFrom(subscribedHash[item]);
    }
}



