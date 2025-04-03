#include "publish_subscribe_multicast.h"

class SimpleBrokerInterface:public BrokerInterface
{
public:
    SimpleBrokerInterface(char *brokerIp, int brokerPort):BrokerInterface(brokerIp, brokerPort)
    {}
    virtual void messageReceived(std::string item, int  size, char *msg)
    {
        printf("received for item %s: %s\n", item.c_str(), msg);
    }
};





int main(int argc, char *argv[])
{
    if(argc != 3)
    {
        printf("Usage: broker_interface <brokerIp> <brokerPort>");
        exit(0);
    }
    int brokerPort;
    sscanf(argv[2], "%d", &brokerPort);

    SimpleBrokerInterface brokerI(argv[1], brokerPort);
    //sleep(1);
    brokerI.subscribe((char *)"MY_ITEM");
    brokerI.publish((char *)"MY_ITEM", strlen("HELLO"), (char *)"HELLO");
    brokerI.publish((char *)"ANOTHER_ITEM", strlen("WORLD"), (char *)"WORLD");
    sleep(10);
    
}

