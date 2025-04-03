
#include "socket.h"
#include <netinet/tcp.h> 
#include <string>

TCPSocket::TCPSocket()
{
    sock = socket(AF_INET, SOCK_STREAM, 0);
    if(sock < 0)
    {
        perror("Socket creation failed");
        exit(EXIT_FAILURE);
    }
    int flag = 1;
    if (setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, (void *)&flag, sizeof(int)) == -1) 
    {
        perror("setsockopt failed");
        close(sock);
        exit(EXIT_FAILURE);
    }
    connected = false;
}

TCPSocket::~TCPSocket()
{
    close(sock);
}

TCPSocket::TCPSocket(int sock, struct sockaddr_in ipAddr)
{
    this->sock = sock;
    connected = true;
}

std::string TCPSocket::getConnectedIp()
{
    if(!connected)
        return NULL;
    char clientIp[INET_ADDRSTRLEN];
    inet_ntop(AF_INET, &ipAddr.sin_addr, clientIp, INET_ADDRSTRLEN);
    std::string retIp(clientIp);
    return retIp;
}

int TCPSocket::getConnectedPort()
{
    if(!connected)
    {
        return -1;
    }
    return ntohs(ipAddr.sin_port);
}

void TCPSocket::connectTo(std::string ip, int port)
{
    if(connected)
    {
        printf("TCP Socket already connected\n");
        return;
    }
    ipAddr.sin_family = AF_INET;
    ipAddr.sin_port = htons(port);
    if (inet_pton(AF_INET, ip.c_str(), &ipAddr.sin_addr) <= 0) 
    {
        perror("Invalid IP address");
        return;
    }
    if (connect(sock, (struct sockaddr *)&ipAddr, sizeof(ipAddr)) < 0) 
    {
        perror("Connection failed");
        close(sock);
        return;
    }
    connected = true;
}



int TCPSocket::sendMsg(char *buf, int size)
{
    if(!connected)
    {
        printf("TCPSocket not yet connected\n");
        return 0;
    }
    int status = send(sock, buf, size, MSG_NOSIGNAL);
    return status;
}
int TCPSocket::receiveMsg(char *buf, int size)
{
    int bytesReceived = 0;
    int bytesToReceive, readBytes;
    while(bytesReceived < size)
    {
        bytesToReceive = size - bytesReceived;
        readBytes = recv(sock,buf, bytesToReceive, 0);
        if(readBytes < 0)
        {
            perror("Error receiving message");
            return 0;
        }
        bytesReceived += readBytes;
    }
    //For TCP connection, message of length size are always returned
    return size;
}

TCPSocketServer::TCPSocketServer(int port)
{
    struct sockaddr_in address;
    int addrLen = sizeof(address);
    serverSock = socket(AF_INET, SOCK_STREAM, 0);
    if (serverSock < 0) 
    {
        perror("Socket creation failed");
        exit(EXIT_FAILURE);
    }
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(port);
    if (bind(serverSock, (struct sockaddr *)&address, sizeof(address)) < 0) 
    {
        perror("Bind failed");
        close(serverSock);
        exit(EXIT_FAILURE);
    }
    if (listen(serverSock, 1) < 0) 
    {
        perror("Listen failed");
        close(serverSock);
        exit(EXIT_FAILURE);
    }
}

TCPSocket *TCPSocketServer::acceptConnection()
{
    struct sockaddr_in address;
    int addrLen = sizeof(address);
    int retSock = accept(serverSock, (struct sockaddr *)&address, (socklen_t*)&addrLen);
    return new TCPSocket(retSock, address);
}

