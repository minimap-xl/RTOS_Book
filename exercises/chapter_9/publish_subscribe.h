#include "socket.h"
#include <iostream>
#include <unordered_map>
#include <vector>
#include <pthread.h>
#include <string>

#define PUBLISH 1
#define SUBSCRIBE 2
#define UNSUBSCRIBE 3

class Broker
{
    std::unordered_map<std::string, std::vector<TCPSocket *>> subscriberHash;
    TCPSocketServer serverSock;
    pthread_mutex_t mutex;
    void removeFromSubscribed(char *itemName, std::string ip, int port);
public: 
    void handlePublish(char *itemName, TCPSocket *sock);
    void handleSubscribe(char *itemName, TCPSocket *sock);
    void handleUnsubscribe(char *itemName, TCPSocket *sock);
    Broker(int serverPort);
    ~Broker();
    void start();
};

class BrokerInterface
{
    int thisPort;
    TCPSocket brokerSock;
    std::vector<std::string> subscribedItemsV;
public:
    int getThisPort() { return thisPort;}
    BrokerInterface(char *brokerIp, int brokerPort, int thisPort);
    ~BrokerInterface();
    void publish(std::string item, int msgLen, char *msg);
    void subscribe(std::string item);
    void unsubscribe(std::string item);
    virtual void messageReceived(char *item, int  size, char *msg) = 0;
};


