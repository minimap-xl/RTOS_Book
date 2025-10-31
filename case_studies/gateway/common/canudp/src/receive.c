/** @file

    Receive function.
*/

#include <stdlib.h>
#include <errno.h>
#include "canudp.h"


/** Map errno @p e from recvfrom() into an enum #Canudp_st.

    @return Status code.
    @retval #CANUDP_ST_TIMEOUT
    @retval #CANUDP_ST_RECVFROM
*/
static enum Canudp_st recvfrom_errno_to_st(
    int e			/**< [in] `errno` after recvfrom() */
    )
{
    enum Canudp_st st = CANUDP_ST_RECVFROM;
    switch(e)
    {
    case EAGAIN:
	st = CANUDP_ST_TIMEOUT;
	break;

    default:
	break;
    }

    return st;
}

/** Compare two struct sockaddr_in addresses, @p a and @p b, for equality.

    @retval true if @p a and @p b are equal (same IP address and port).
    @retval false otherwise.
*/
static inline bool same_addr(
    const struct sockaddr_in *a,
    const struct sockaddr_in *b)
{
    return a->sin_family == b->sin_family && a->sin_port == b->sin_port
	&& a->sin_addr.s_addr == b->sin_addr.s_addr;
}

/** @details This functions waits on context @p ctx for an UDP datagram
    containing a CAN frame.  Upon successful completion it stores the raw
    message into the structure pointed by @p msg, without performing and
    network/host byte order conversion.  The struct Canudp_msg getters and
    setters take care of this.  This function _silently discards_ datagrams
    sent from context @p ctx itself.

    The maximum amount of time this function waits for an incoming message
    depends on the argument @p receive_timeout passed to canudp_open() when
    context @p ctx was created.

    @return Status code.
    @retval #CANUDP_ST_OK
    @retval #CANUDP_ST_SRC_ADDR
    @retval #CANUDP_ST_INVALID_MSG
    @retval Other Status codes of recvfrom_errno_to_st().
*/
enum Canudp_st canudp_receive(
    struct Canudp_ctx *ctx,	/**< [out] Context to be used for receiving */
    struct Canudp_msg *msg	/**< [out] Received message */
    )
{
    enum Canudp_st st = CANUDP_ST_IN_PROGRESS;
    while(st == CANUDP_ST_IN_PROGRESS)
    {
	struct sockaddr_in src_addr;
	socklen_t addr_len = sizeof(src_addr);
	ssize_t recv_st = recvfrom(
	    ctx->inbound_s,
	    msg, sizeof(*msg),
	    0, (struct sockaddr *)&src_addr, &addr_len);

	if(recv_st < 0)  st = recvfrom_errno_to_st(errno);
	else if(addr_len != sizeof(src_addr) || src_addr.sin_family != AF_INET)
	    st = CANUDP_ST_SRC_ADDR;
	else if(recv_st != sizeof(*msg))
	    st = CANUDP_ST_INVALID_MSG;
	else if(!same_addr(&src_addr, &ctx->ephemeral))
	    st = CANUDP_ST_OK;
    }

    return st;
}
