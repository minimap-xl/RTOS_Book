#include "publish_subscribe.h"

class SimpleBrokerInterface:public BrokerInterface
{
public:
    SimpleBrokerInterface(char *brokerIp, int brokerPort, int thisPort):BrokerInterface(brokerIp, brokerPort, thisPort)
    {}
    virtual void messageReceived(char *item, int  size, char *msg)
    {
        printf("received for item %s: %s\n", item, msg);
    }
};





int main(int argc, char *argv[])
{
    if(argc != 4)
    {
        printf("Usage: broker_interface <brokerIp> <brokerPort> <brokerInterfacePort>\n");
        exit(0);
    }
    int brokerPort, thisPort;
    sscanf(argv[2], "%d", &brokerPort);
    sscanf(argv[3], "%d", &thisPort);
    SimpleBrokerInterface brokerI(argv[1], brokerPort, thisPort);
    //sleep(1);
    brokerI.subscribe((char *)"MY_ITEM");
    //sleep(1);
    brokerI.publish((char *)"MY_ITEM", strlen("HELLO"), (char *)"HELLO");
    brokerI.publish((char *)"ANOTHER_ITEM", strlen("WORLD"), (char *)"WORLD");
    sleep(10);
    
}

