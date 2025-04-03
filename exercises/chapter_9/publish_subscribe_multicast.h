#include "socket.h"
#include <iostream>
#include <unordered_map>
#include <vector>
#include <pthread.h>
#include <string>

#define PUBLISH 1
#define SUBSCRIBE 2
#define PUBLISH_PORT 8111

#pragma pack(1)
#define MAX_MESSAGE_LEN 8192
#define MAX_ITEM_NAME_LEN 255

class BrokerPublishMessage 
{
    char itemNameLen;
    char itemName[MAX_ITEM_NAME_LEN+1];
    int msgLen;
    char msg[MAX_MESSAGE_LEN];
public:
    BrokerPublishMessage(std::string itemName, int msgLen, char *msg)
    {
        if(itemName.size() > MAX_MESSAGE_LEN)
        {
            printf("Internal error: Item length %d too large(max 255 chars)", itemName.size());
            exit(0);
        }
        this->itemNameLen = itemName.size();
        memset(this->itemName, 0, MAX_ITEM_NAME_LEN);
        strcpy(this->itemName, itemName.c_str());
        this->msgLen = htonl(msgLen);
        memset(this->msg, 0, MAX_MESSAGE_LEN);
        memcpy(this->msg, msg, msgLen);
    }
    std::string getItem() 
    {
        std::string retName(this->itemName);
        return retName;
    }
    int getMsgLen()
    {
        return ntohl(msgLen);
    }
    char *getMsg() { return msg;}
};




class Broker
{
    std::unordered_map<std::string, std::string> subscriberHash;
    TCPSocketServer serverSock;
    UDPSocket publishSock;
    pthread_mutex_t mutex;
    int ip[4];
    void incrementLastMulticastIp();
public: 
    void handlePublish(char *itemName, TCPSocket *sock);
    void handleSubscribe(char *itemName, TCPSocket *sock);
    Broker(int serverPort);
    ~Broker();
    void start();
};

class BrokerInterface
{
    int thisPort;
    TCPSocket brokerSock;
    UDPSocket publishSock;
    std::unordered_map<std::string, std::string> subscribedHash;
    public:
    int getThisPort() { return thisPort;}
    UDPSocket *getPublishSocket() {return &publishSock;}
    BrokerInterface(char *brokerIp, int brokerPort);
    ~BrokerInterface();
    void publish(std::string item, int msgLen, char *msg);
    void subscribe(std::string item);
    void unsubscribe(std::string item);
    virtual void messageReceived(std::string item, int  size, char *msg) = 0;
};


