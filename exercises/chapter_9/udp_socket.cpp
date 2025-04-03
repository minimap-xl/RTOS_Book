
#include "socket.h"

UDPSocket::UDPSocket(int port)
{
    sock = socket(AF_INET, SOCK_DGRAM, 0);
    if(sock < 0)
    {
        perror("Socket creation failed");
        exit(EXIT_FAILURE);
    }
    // Allow multiple sockets to use the same port 
    int reuse = 1;
    if (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(reuse)) < 0) {
        perror("Setting SO_REUSEADDR failed");
        close(sock);
        exit(EXIT_FAILURE);
    }

    if(port > 0)
    {
        struct sockaddr_in serverAddr;
        serverAddr.sin_family = AF_INET;
        serverAddr.sin_addr.s_addr = INADDR_ANY;
        serverAddr.sin_port = htons(port);
        if (bind(sock, (struct sockaddr *)&serverAddr, sizeof(serverAddr)) < 0) 
        {
            perror("Bind failed");
            close(sock);
            exit(EXIT_FAILURE);
        }
    }
}

UDPSocket::~UDPSocket()
{
    close(sock);
}


int UDPSocket::sendMsgTo(char *buf, int size, std::string ip, int port)
{
    ipAddr.sin_family = AF_INET;
    ipAddr.sin_port = htons(port);
    if (inet_pton(AF_INET, ip.c_str(), &ipAddr.sin_addr) <= 0) 
    {
        perror("Invalid IP address");
        return 0;
    }
    return sendto(sock, buf, size, 0, (struct sockaddr *)&ipAddr, sizeof(ipAddr));
}

int UDPSocket::receiveMsg(char *buf, int size)
{
    int readBytes;
    socklen_t ipAddrLen = sizeof(ipAddr);
  //  readBytes = recvfrom(sock, buf, size, 0, (struct sockaddr *)&ipAddr, &ipAddrLen);
    readBytes = recv(sock, buf, size, 0);
    if(readBytes < 0)
    {
        perror("Error receiving message");
        return 0;
    }
    return readBytes;
}

void UDPSocket::subscribeTo(std::string multicastIp)
{
    struct ip_mreq multicastRequest;
    multicastRequest.imr_multiaddr.s_addr = inet_addr(multicastIp.c_str());
    multicastRequest.imr_interface.s_addr = htonl(INADDR_ANY);
    if (setsockopt(sock, IPPROTO_IP, IP_ADD_MEMBERSHIP, &multicastRequest, sizeof(multicastRequest)) < 0) 
    {
        perror("Adding multicast group failed");
    }
}

void UDPSocket::unsubscribeFrom(std::string multicastIp)
{
    struct ip_mreq multicastRequest;
    multicastRequest.imr_multiaddr.s_addr = inet_addr(multicastIp.c_str());
    multicastRequest.imr_interface.s_addr = htonl(INADDR_ANY);
    if(setsockopt(sock, IPPROTO_IP, IP_DROP_MEMBERSHIP, &multicastRequest, sizeof(multicastRequest)) < 0)
    {
        perror("Removing multicast group failed");
    }
}



