/** @file

    Context open and close.
*/

#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include "canudp.h"


/** Initialize @p ctx, except for Canudp_ctx::ephemeral, and copy the given
    @p config into it.
*/
static inline void ctx_init(
    struct Canudp_ctx *ctx,	/**< [out] Context to be initialized */
    const struct Canudp_config *config /**< [in] Configuration */
    )
{
    ctx->config = *config;
    ctx->inbound_s = ctx->outbound_s = -1;
}

/** Combine status codes.  This function combines the main status code
    @p st with the subsidiary status code @p sub_st.

    @return @p st (ignoring @p sub_st) if @p st was not #CANUDP_ST_OK,
    and @p sub_st otherwise.
*/
static inline enum Canudp_st worst_of(
    enum Canudp_st st,		/**< [in] Main status code */
    enum Canudp_st sub_st	/**< [in] Secondary status code */
    )
{
    return (st != CANUDP_ST_OK) ? st : sub_st;
}

/** Close socket @p s.  This function interprets @p s as a socket descriptor
    and closes it if it is greater than or equal to zero, that is, it
    corresponds to an open socket.

    @return Status code.
    @retval #CANUDP_ST_OK
    @retval #CANUDP_ST_CLOSE
*/
static inline enum Canudp_st close_socket(
    int s			/**< [in] Socket descriptor to be closed */
    )
{
    if(s >= 0)
	return (close(s) < 0) ? CANUDP_ST_CLOSE : CANUDP_ST_OK;

    return CANUDP_ST_OK;
}

/** Open the UDP inbound socket.  This function opens a UDP inbound socket,
    obeying the configuration item struct Canudp_addr_config::bcast_addr of @p
    addr_config.  If @p receive_timeout is not `NULL`, this function sets the
    `SOL_SOCKET/SO_RCVTIMEO` option of the socket to the value @p
    receive_timeout points to.  When successful, this function stores into @p s
    the file descriptor of the newly created socket.

    @return Status code.
    @retval #CANUDP_ST_OK
    @retval #CANUDP_ST_UNIMPL
    @retval #CANUDP_ST_SOCKET
    @retval #CANUDP_ST_REUSEADDR
    @retval #CANUDP_ST_RCVTIMEO
    @retval #CANUDP_ST_BIND
*/
static enum Canudp_st open_inbound(
    const struct Canudp_addr_config *addr_config, /**< [in] Configuration */
    const struct timeval *receive_timeout, /**< [in] Receive timeout, if any */
    int *new_s			/**< [out] Newly created socket */
    )
{
    const int sockopt_true = 1;
    enum Canudp_st st = CANUDP_ST_UNIMPL;
    int s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);

    if(s < 0)  st = CANUDP_ST_SOCKET;

    /* Allow multiple inbound sockets to be bound to the same local
       address/port.  In this way we may have multiple instances of
       Canudp running in different processes on the same host and
       they all receive each other's messages.
    */
    else if(setsockopt(s, SOL_SOCKET, SO_REUSEADDR,
		       &sockopt_true, sizeof(sockopt_true)) == -1)
	st = CANUDP_ST_REUSEADDR;

    else if(receive_timeout
	    && setsockopt(s, SOL_SOCKET, SO_RCVTIMEO, receive_timeout,
			  sizeof(*receive_timeout)) == -1)
	st = CANUDP_ST_RCVTIMEO;

    /* Bind to the multicast/broadcast address to receive from it */
    else if(bind(s, (const struct sockaddr *)&addr_config->bcast_addr,
		 sizeof(addr_config->bcast_addr)) == -1)
	st = CANUDP_ST_BIND;

    else
	st = CANUDP_ST_OK;

    /* Store the socket into the caller's pointer or close it */
    if(st != CANUDP_ST_OK)  close_socket(s);
    else
	*new_s = s;

    return st;
}

/** Open the UDP outbound socket.  This function opens a UDP outbound socket,
    obeying the configuration items struct Canudp_addr_config::local_addr and
    Canudp_addr_config::bcast_addr pointed by @p addr_config.

    When successful, it stores into @p s the file descriptor of the newly
    created socket and into @p ephemeral the local socket address derived from
    Canudp_addr_config::local_addr with an ephemeral port filled in, if
    necessary.  Upon failure this function does not modify @p s, but could
    still overwrite @p ephemeral.

    @return Status code.
    @retval #CANUDP_ST_OK
    @retval #CANUDP_ST_UNIMPL
    @retval #CANUDP_ST_SOCKET
    @retval #CANUDP_ST_BIND
    @retval #CANUDP_ST_GETSOCKNAME
    @retval #CANUDP_ST_BROADCAST
*/
static enum Canudp_st open_outbound(
    const struct Canudp_addr_config *addr_config, /**< [in] Configuration */
    int *new_s,			/**< [out] Newly created socket */
    struct sockaddr_in *ephemeral /**< [out] Local ephemeral port */
    )
{
    const int sockopt_true = 1;
    socklen_t ephemeral_len = sizeof(*ephemeral);
    enum Canudp_st st = CANUDP_ST_UNIMPL;
    int s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);

    if(s < 0)  st = CANUDP_ST_SOCKET;

    /* Bind to config->local_addr.  If the address has a port number
       of zero (likely), bind() assigns an ephemeral port to the
       socket, which we will retrieve later.
    */
    else if(bind(s, (const struct sockaddr *)&addr_config->local_addr,
		 sizeof(addr_config->local_addr)) == -1)
	st = CANUDP_ST_BIND;

    /* Retrieve the local socket address.  This must be done after
       bind()ing the socket because the system assigns the ephemeral
       port only at that point.
    */
    else if(getsockname(
		s, (struct sockaddr *)ephemeral, &ephemeral_len) == -1
	    || ephemeral_len != sizeof(*ephemeral))
	st = CANUDP_ST_GETSOCKNAME;

    /* Enable broadcast transmission here, otherwise connect() to a
       broadcast address fails.
    */
    else if(setsockopt(s, SOL_SOCKET, SO_BROADCAST,
		       &sockopt_true, sizeof(sockopt_true)) == -1)
	st = CANUDP_ST_BROADCAST;

    else if(connect(s, (const struct sockaddr *)&addr_config->bcast_addr,
		    sizeof(addr_config->bcast_addr)) == -1)
	st = CANUDP_ST_CONNECT;

    else
	st = CANUDP_ST_OK;

    /* Store the socket into the caller's pointer or close it */
    if(st != CANUDP_ST_OK)  close_socket(s);
    else
	*new_s = s;

    return st;
}

/** Destroy @p ctx.  This function must work with a partially initialized
    context because it may be called either to recover from an error while
    opening the context or while closing the context normally.

    @return Status code
    @retval Other Status codes of close_socket().
*/
static inline enum Canudp_st ctx_destroy(
    struct Canudp_ctx *ctx	/**< [out] Context to be destroyed */
    )
{
    enum Canudp_st st = close_socket(ctx->outbound_s);
    st = worst_of(st, close_socket(ctx->inbound_s));
    return st;
}

/** @details This function prepares the Canudp context pointed by @p ctx for
    use, based on the configuration @p config.  When @p receive_timeout is not
    `NULL`, the timeout of canudp_receive() operations is set to the value
    indicated by @p receive_timeout.  Otherwise, canudp_receive() waits until
    it receives a message or an error occurs.

    @return Status code.
    @retval #CANUDP_ST_UNIMPL
    @retval Other Status codes of canudp_fill_addr_config(),
    open_inbound(), open_outbound(), ctx_destroy().
*/
enum Canudp_st canudp_open(
    struct Canudp_ctx *ctx,	/**< [out] Context to be opened */
    const struct Canudp_config *config, /**< [in] Configuration */
    const struct timeval *receive_timeout /**< [in] Receive timeout */
    )
{
    enum Canudp_st st = CANUDP_ST_UNIMPL;
    struct Canudp_addr_config addr_config;

    ctx_init(ctx, config);
    if((st = canudp_fill_addr_config(config, &addr_config)) == CANUDP_ST_OK
       && (st = open_inbound(
	       &addr_config, receive_timeout, &ctx->inbound_s)) == CANUDP_ST_OK)
	st = open_outbound(&addr_config, &ctx->outbound_s, &ctx->ephemeral);

    if(st != CANUDP_ST_OK)  ctx_destroy(ctx);
    return st;
}

/** @details This function closes the context pointed by @p ctx.

    @return Status code
    @retval Other Status codes of ctx_destroy().
*/
enum Canudp_st canudp_close(
    struct Canudp_ctx *ctx	/**< [out] Context to be closed */
    )
{
    return ctx_destroy(ctx);
}
