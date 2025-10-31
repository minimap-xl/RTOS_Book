/** @file

    Low-level functions for building the low-level socket configuration.
*/

#include <string.h>		/* strncpy() */
#include <unistd.h>
#include <sys/ioctl.h>		/* ioctl() */
#include <net/if.h>		/* struct ifreq */
#include "canudp.h"

/** Calculate the broadcast address of the interface described by @p ifr from
    its unicast address and netmask.  This function uses the auxiliary socket
    @p s to perform the ioctl() it needs.  It stores the calculated broadcast
    address in @p ifr->ifr_broadaddr if successful and returns a status code in
    all cases.

    @return Status code.
    @retval #CANUDP_ST_OK
    @retval #CANUDP_ST_UNIMPL
    @retval #CANUDP_ST_IOCTL
*/
static enum Canudp_st brd_from_addr_netmask(
    int s,			/**< [in] Auxiliary socket  */
    struct ifreq *ifr /**< [out] Interface name and broadcast address */
    )
{
    enum Canudp_st st = CANUDP_ST_UNIMPL;
    if(ioctl(s, SIOCGIFADDR, ifr) == -1
       || ifr->ifr_addr.sa_family != AF_INET)
	st = CANUDP_ST_IOCTL;
    else
    {
	struct sockaddr_in unicast = *(struct sockaddr_in *)&ifr->ifr_addr;

	if(ioctl(s, SIOCGIFNETMASK, ifr) == -1
	   || ifr->ifr_addr.sa_family != AF_INET)
	    st = CANUDP_ST_IOCTL;
	else
	{
	    struct sockaddr_in netmask =
		*(struct sockaddr_in *) &ifr->ifr_netmask;

	    struct sockaddr_in broadaddr = {
		.sin_family = unicast.sin_family,
		.sin_port = unicast.sin_port,
		.sin_addr.s_addr =
		unicast.sin_addr.s_addr | ~netmask.sin_addr.s_addr
	    };

	    *(struct sockaddr_in *) &ifr->ifr_broadaddr = broadaddr;
	    st = CANUDP_ST_OK;
	}
    }
    return st;
}

/** Retrieve the broadcast address of an interface.  This function uses the
    auxiliary socket @p s to retrieve the broadcast address of the interface
    identified by @p ifr.  If the broadcast address is not set, it uses the
    netmask to calculate it.  In both cases, the address is stored in @p
    ifr->ifr_broadaddr.

    @return Status code.
    @retval #CANUDP_ST_OK
    @retval #CANUDP_ST_UNIMPL
    @retval #CANUDP_ST_IOCTL
    @retval Other Status codes from brd_from_addr_netmask().
*/
static enum Canudp_st get_broadaddr(
    int s,			/**< [in] Auxiliary socket  */
    struct ifreq *ifr /**< [out] Interface name and broadcast address */
    )
{
    enum Canudp_st st = CANUDP_ST_UNIMPL;
    if(ioctl(s, SIOCGIFFLAGS, ifr) == -1)
	st = CANUDP_ST_IOCTL;

    else if(ifr->ifr_flags & IFF_BROADCAST)
    {
	/* Broadcast address set */
	if(ioctl(s, SIOCGIFBRDADDR, ifr) == -1
	   || ifr->ifr_broadaddr.sa_family != AF_INET)
	    st = CANUDP_ST_IOCTL;
	else if(
	    ((struct sockaddr_in *) &ifr->ifr_broadaddr)->sin_addr.s_addr == 0)
	    /* 0 is not good as an address; use netmask */
	    st = brd_from_addr_netmask(s, ifr);
	else
	    st = CANUDP_ST_OK;
    }

    else
	/* Broadcast address not set; use netmask */
	st = brd_from_addr_netmask(s, ifr);

    return st;
}


/** @par Linux implementation

    The Linux implementation may return #CANUDP_ST_SOCKET because it opens a
    socket internally to retrieve network interface information via ioctl()
    calls.
*/
enum Canudp_st canudp_fill_addr_config(
    const struct Canudp_config *config,
    struct Canudp_addr_config *addr_config)
{
    enum Canudp_st st = CANUDP_ST_UNIMPL;
    /* Auxiliary socket to issue the ioctl()s we need */
    int s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);

    if(s < 0)  st = CANUDP_ST_SOCKET;

    else
    {
	/* Get local IP address of the interface */
	struct ifreq ifr;
	strncpy(ifr.ifr_name, config->if_name, sizeof(ifr.ifr_name));
	if(ioctl(s, SIOCGIFADDR, &ifr) == -1
	   || ifr.ifr_addr.sa_family != AF_INET)
	    st = CANUDP_ST_IOCTL;

	else
	{
	    addr_config->local_addr = *(struct sockaddr_in *) &ifr.ifr_addr;
	    addr_config->local_addr.sin_port = htons(0);

	    /* Get broadcast IP address of the interface */
	    if((st = get_broadaddr(s, &ifr)) == CANUDP_ST_OK)
	    {
		addr_config->bcast_addr =
		    *(struct sockaddr_in *) &ifr.ifr_broadaddr;
		addr_config->bcast_addr.sin_port = htons(config->udp_port);
		st = CANUDP_ST_OK;
	    }
	}

	/* Always close the auxiliary socket */
	close(s);
    }

    return st;
}
