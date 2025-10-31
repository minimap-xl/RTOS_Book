/** @file

    Low-level functions for building the socket address configuration on ESP32.
*/

#include "canudp.h"

/** Return a struct sockaddr_in containing an `AF_INET` address built from the
    IP address @p esp_ip4_addr and port number @p port.
*/
static struct sockaddr_in sockaddr_in_from_ip4addr_and_port(
    esp_ip4_addr_t esp_ip4_addr, /**< [in] IP address */
    in_port_t port		 /**< [in] Port number, in network byte order */
    )
{
    struct sockaddr_in ret;
    ret.sin_family = AF_INET;
    ret.sin_addr.s_addr = esp_ip4_addr.addr;
    ret.sin_port = port;
    return ret;
}

/** Return a broadcast address built from the interface IP address @p addr and
    netmask @p netmask.
*/
static esp_ip4_addr_t brd_from_addr_netmask(
    esp_ip4_addr_t addr,	/**< [in] IP address of the network interface */
    esp_ip4_addr_t netmask	/**< [in] Netmask */
    )
{
    esp_ip4_addr_t ret = {
	.addr = addr.addr | ~netmask.addr
    };
    return ret;
}


/** @par ESP32 implementation

    The ESP32 implementation never returns #CANUDP_ST_SOCKET because it does
    not open any sockets internally.  It does not perform any ioctl() call
    either, but it may return #CANUDP_ST_IOCTL anyway when a low-level network
    interface call fails.
*/
enum Canudp_st canudp_fill_addr_config(
    const struct Canudp_config *config,
    struct Canudp_addr_config *addr_config)
{
    enum Canudp_st st = CANUDP_ST_UNIMPL;
    esp_netif_t *netif = esp_netif_get_handle_from_ifkey(config->if_name);
    if(!netif)
	st = CANUDP_ST_IOCTL;
    else
    {
	esp_netif_ip_info_t ip_info;
	if(esp_netif_get_ip_info(netif, &ip_info) != ESP_OK)
	    st = CANUDP_ST_IOCTL;
	else
	{
	    addr_config->local_addr =
		sockaddr_in_from_ip4addr_and_port(ip_info.ip, htons(0));
	    addr_config->bcast_addr =
		sockaddr_in_from_ip4addr_and_port(
		    brd_from_addr_netmask(ip_info.ip, ip_info.netmask),
		    htons(config->udp_port));
	    st = CANUDP_ST_OK;
	}
    }
    return st;
}
