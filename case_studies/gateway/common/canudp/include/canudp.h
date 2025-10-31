/** @file
    @brief CAN/UDP Encapsulation and Communication Library, header.

    This header must be included when using any of the
    library functions.  It is protected against multiple inclusions.

    @defgroup canudp CAN/UDP library public interface
    @{

*/

#ifndef CANUDP_H
#define CANUDP_H

#include <stdbool.h>		/* bool data type before C11 */
#include <stdint.h>
#include <sys/time.h>		/* struct timeval */
#include <sys/types.h>		/* BSD compatibility */
#include <sys/socket.h>		/* Socket API */
#include <netinet/in.h>		/* AF_INET */
// TBD: #include <netinet/ip.h>		/* TCP, UDP, RAW sockets */
#include <sys/time.h>		/* struct time val */

#include "canudp_target.h"

/** Status code returned by most functions.  Some status codes are used only
    within the Canudp library and are never seen outside it.
*/
enum Canudp_st {
    CANUDP_ST_OK,		  /**< Successful completion */
    CANUDP_ST_UNIMPL,		  /**< Function not properly implemented */
    CANUDP_ST_IN_PROGRESS,	  /**< Operation in progress, internal use */
    CANUDP_ST_IOCTL,   /**< I/O control or other low-level function failed */
    CANUDP_ST_SOCKET,		  /**< Socket creation failed */
    CANUDP_ST_REUSEADDR,	  /**< Could not set SO_REUSEADDR */
    CANUDP_ST_RCVTIMEO,		  /**< Could not set inbound socket timeout */
    CANUDP_ST_BIND,		  /**< Could not bind the socket */
    CANUDP_ST_GETSOCKNAME,	  /**< Error retrieving socket address */
    CANUDP_ST_BROADCAST,	  /**< Could not set SO_BROADCAST */
    CANUDP_ST_CONNECT,		  /**< Could not connect the socket */
    CANUDP_ST_CLOSE,		  /**< Socket close failed */
    CANUDP_ST_TIMEOUT,		  /**< Timeout during socket operation */
    CANUDP_ST_RECVFROM,		  /**< Generic network receive error */
    CANUDP_ST_SEND,		  /**< Generic network send error */
    CANUDP_ST_SRC_ADDR,		  /**< Invalid datagram source address */
    CANUDP_ST_INVALID_MSG,	  /**< Invalid datagram size or content */
    CANUDP_ST_MSGSIZE,		  /**< Invalid transmit datagram size */
    CANUDP_ST_UNREACHABLE,	  /**< Host/network unreachable */
    CANUDP_ST_TRUNCATED		  /**< Message truncated while sending */
};

/** Socket address configuration, internal use.
*/
struct Canudp_addr_config {
    struct sockaddr_in bcast_addr; /**< Broadcast address */
    struct sockaddr_in local_addr; /**< Local unicast address */
};

/** Socket configuration.  This structure contains all the information needed
    to configure a Canudp context.
*/
struct Canudp_config {
    char if_name[CANUDP_IFNAMSIZ]; /**< Network interface name */
    int udp_port;		   /**< UDP port, host byte order */
};

/** Canudp context. */
struct Canudp_ctx {
    struct Canudp_config config;   /**< Copy ot the configuration */
    int inbound_s;		   /**< Socket for inbound traffic */
    int outbound_s;		   /**< Socket for outboud traffic */
    struct sockaddr_in ephemeral;  /**< Local ephemeral port */
};

/** @name Possible values of struct Canudp_msg::type.

    We do not use an enumeration because the standard does not specify how big
    the underlying data type is going to be; the values may be OR-ed together.

    @{
*/

#define CANUDP_MSG_TYPE_BASE    1 /**< Base frame (11-bit identifier) */
#define CANUDP_MSG_TYPE_EXT     2 /**< Extended frame (29-bit identifier) */
#define CANUDP_MSG_TYPE_RTR	4 /**< Remote Transmission Request */
#define CANUDP_MSG_TYPE_ERR     8 /**< Error indication */

/** @} */

/** Maximum number of data bytes in a CAN frame handled by the library.
    Currently the library supports neither CAN FD not CAN XL.
*/
#define CANUDP_MAX_DATA 8

/** Payload of a UDP datagram that encapsulates a CAN frame.  All members are
    stored in network byte order and must not be accessed directly.  The
    library provides getters and setters that perform the appropriate
    host/network byte ordering conversions.
*/
struct __attribute__((packed)) Canudp_msg {
    uint32_t type;		/**< Message type */
    uint32_t id;		/**< Identifier */
    uint8_t dlc;		/**< Data Length Code */
    uint8_t data[CANUDP_MAX_DATA]; /**< Data */
};

#ifdef __cplusplus
extern "C" {
#endif

    /** @defgroup canudp_msg Encapsulated CAN message getters and setters
	@{
    */
    /** Get the message type of a struct Canudp_msg. */
    static inline uint32_t canudp_msg_type(
	const struct Canudp_msg *msg)
    {
	return ntohl(msg->type);
    }

    /** Get the CAN identifier of a struct Canudp_msg. */
    static inline uint32_t canudp_msg_id(
	const struct Canudp_msg *msg)
    {
	return ntohl(msg->id);
    }

    /** Get the Data Length Code of a struct Canudp_msg. */
    static inline uint8_t canudp_msg_dlc(
	const struct Canudp_msg *msg)
    {
	return msg->dlc;
    }

    /** Get the @p i-th data byte of a struct Canudp_msg. */
    static inline uint8_t canudp_msg_data(
	const struct Canudp_msg *msg,
	int i)
    {
	return msg->data[i];
    }

    /** Get the data length of a struct Canudp_msg.  The data length is not
	stored in the structure and usually coincides with the Data Length Code
	(DLC).  However, it is forced to be zero for RTR frames and is clipped
	to 8 when the DLC is higher.
    */
    static inline int canudp_msg_length(
	const struct Canudp_msg *msg)
    {
	return (canudp_msg_type(msg) & CANUDP_MSG_TYPE_RTR)
	    ? 0
	    : (canudp_msg_dlc(msg) <= 8 ? canudp_msg_dlc(msg) : 8);
    }

    /** Set message type of a struct Canudp_msg. */
    static inline void canudp_msg_set_type(
	struct Canudp_msg *msg,
	uint32_t type)
    {
	msg->type = htonl(type);
    }

    /** Set CAN identifier of a struct Canudp_msg. */
    static inline void canudp_msg_set_id(
	struct Canudp_msg *msg,
	uint32_t id)
    {
	msg->id = htonl(id);
    }

    /** Set the Data Length Code of a struct Canudp_msg.  No checks are
	performed to ensure the DLC is consistent with the message type.
    */
    static inline void canudp_msg_set_dlc(
	struct Canudp_msg *msg,
	uint8_t dlc)
    {
	msg->dlc = dlc;
    }

    /** Set the @p i-th data byte of a struct Canudp_msg. */
    static inline void canudp_msg_set_data(
	struct Canudp_msg *msg,
	int i,
	uint8_t d)
    {
	msg->data[i] = d;
    }
    /** @} */

    /** @defgroup context UDP message transmission and reception
	@{
    */
    /** Open a new Canudp context. */
    enum Canudp_st canudp_open(
	struct Canudp_ctx *ctx,
	const struct Canudp_config *config,
	const struct timeval *receive_timeout);

    /** Close a Canudp context. */
    enum Canudp_st canudp_close(
	struct Canudp_ctx *ctx);

    /** Transmit a CAN frame. */
    enum Canudp_st canudp_transmit(
	struct Canudp_ctx *ctx,
	const struct Canudp_msg *msg);

    /** Receive a CAN frame, waiting if necessary. */
    enum Canudp_st canudp_receive(
	struct Canudp_ctx *ctx,
	struct Canudp_msg *msg);
    /** @} */

    /** @defgroup internal Internal-use functions
	@{
    */
    /** Fill socket address configuration from top-level configuration, only
	meant for internal library use.

	This function fills the socket address configuration @p addr_config
	based on the information found in @p config and returns a status code.

	@param [in] config Top-level configuration.
	@param [out] addr_config Socket address configuration.

	@return Status code
	@retval #CANUDP_ST_OK
	@retval #CANUDP_ST_IOCTL
	@retval #CANUDP_ST_SOCKET

	This function is common to all targets, but has a
	target-dependent implementation because the way IP addresses
	are retrieved from network interfaces depends on the protocol
	stack.
    */
    enum Canudp_st canudp_fill_addr_config(
	const struct Canudp_config *config,
	struct Canudp_addr_config *addr_config);
    /** @} */

#ifdef __cplusplus
}
#endif
#endif

/** @} */
