/** @file

    Transmit function.
*/

#include <stdlib.h>
#include <errno.h>
#include "canudp.h"


/** Map errno @p e from send() into an enum #Canudp_st.

    @return Status code.
    @retval #CANUDP_ST_MSGSIZE
    @retval #CANUDP_ST_SEND
*/
static enum Canudp_st send_errno_to_st(
    int e			/**< [in] `errno` after send() */
    )
{
    enum Canudp_st st = CANUDP_ST_SEND;
    switch(e)
    {
    case EMSGSIZE:
	st = CANUDP_ST_MSGSIZE;
	break;

    case EHOSTUNREACH:
    case ENETUNREACH:
	st = CANUDP_ST_UNREACHABLE;
	break;

    default:
	break;
    }

    return st;
}

/** @details This function sends the message @p msg using context @p ctx.  The
    length of the datagram being sent coincides with the size of a struct
    Canudp_msg, regardless of the actual length of the CAN frame it contains.
    This function does not perform any network/host byte order conversion
    because the struct Canudp_msg getters and setters take care of this.  It
    returns when the UDP datagram has been successfully _scheduled for
    transmission_, that is, likely before the actual transmission takes place.

    @return Status code.
    @retval #CANUDP_ST_OK
    @retval #CANUDP_ST_UNIMPL
    @retval #CANUDP_ST_TRUNCATED
    @retval Other Status codes of send_errno_to_st().
*/
enum Canudp_st canudp_transmit(
    struct Canudp_ctx *ctx, /**< [out] Context to be used for transmitting */
    const struct Canudp_msg *msg /**< [in] Message to be transmitted */
    )
{
    enum Canudp_st st = CANUDP_ST_UNIMPL;
    ssize_t send_st = send(ctx->outbound_s, msg, sizeof(*msg), 0);
    if(send_st < 0)
	st = send_errno_to_st(errno);
    else if(send_st != sizeof(*msg))
	st = CANUDP_ST_TRUNCATED;
    else
	st = CANUDP_ST_OK;

    return st;
}
