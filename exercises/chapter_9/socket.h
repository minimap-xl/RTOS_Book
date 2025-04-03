#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <string>



class UDPSocket
{
    int sock;
    struct sockaddr_in ipAddr;
public:
    UDPSocket(int port = -1);
     ~UDPSocket();
    int sendMsgTo(char *buf, int size, std::string ip, int port);
    int receiveMsg(char *buf, int size);
    void subscribeTo(std::string ip);
    void unsubscribeFrom(std::string multicastIp);
};


class TCPSocket
{
    bool connected;
    int sock;
    struct sockaddr_in ipAddr;
    //Used by TCPSocketServer
    TCPSocket(int sock, struct sockaddr_in ipAddr);
public:
    TCPSocket();
    ~TCPSocket();
    std::string getConnectedIp();
    int getConnectedPort();
    void connectTo(std::string ip, int port);
    int sendMsg(char *buf, int size);
    int receiveMsg(char *buf, int size);
 
    friend class TCPSocketServer;
};

class TCPSocketServer
{
    int serverSock;
public:
    TCPSocketServer(int port);
    TCPSocket *acceptConnection();
};