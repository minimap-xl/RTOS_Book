/** @file
    @brief UDP Port management, header.

    @defgroup udp_port Gateway, UDP port
    @{
*/

#ifndef UDP_PORT_H
#define UDP_PORT_H

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <freertos/semphr.h>	/* For SemaphoreHandle_t */
#include <freertos/queue.h>	/* For QueueHandle_t */
#include <canudp.h>
#include "port_stats.h"

/** Status code returned by most functions.  The following codes are used only
    internally and never returned to users: #UDP_PORT_ST_FW, #UDP_PORT_ST_TERM,
    #UDP_PORT_ST_TIMEOUT, #UDP_PORT_ST_INV_MSG.
*/
enum Udp_port_st {
    UDP_PORT_ST_OK,		/**< Successful completion */
    UDP_PORT_ST_UNIMPL,		/**< Function not properly implemented */
    UDP_PORT_ST_ESP,		/**< ESP error */
    UDP_PORT_ST_FREERTOS,	/**< FreeRTOS error */
    UDP_PORT_ST_CANUDP,		/**< Canudp error */
    UDP_PORT_ST_INV_STATE,	/**< Invalid port state */
    UDP_PORT_ST_FW,		/**< Forwarding error */
    UDP_PORT_ST_TERM,		/**< Normal termination in progress */
    UDP_PORT_ST_STOP,		/**< Port stop failed */
    UDP_PORT_ST_OVERLOAD,	/**< Forwarding queue full */
    UDP_PORT_ST_TIMEOUT,	/**< Timeout from Canudp */
    UDP_PORT_ST_INV_MSG		/**< Invalid message detected by Canudp */
};

/** Port state. */
enum Udp_port_state {
    UDP_PORT_STATE_STOPPED,	/**< Port stopped */
    UDP_PORT_STATE_RUNNING,	/**< Port running */
    UDP_PORT_STATE_STOPPING,	/**< Port stopping */
    UDP_PORT_STATE_ERROR	/**< Unrecoverable error */
};

/* Forward declaration of the CAN port context to avoid circular references
   between headers.
*/
struct Can_port_ctx;

/** This structure stores all the information the UDP port needs. */
struct Udp_port_ctx {
    SemaphoreHandle_t mutex;	  /**< Mutual exclusion semaphore */
    enum Udp_port_state state;	  /**< Port state */
    int n_tasks;		  /**< Number of tasks alive for this port */
    TaskHandle_t rx_task;	  /**< Receive task */
    TaskHandle_t fw_task;	  /**< Forwarding task */
    struct Can_port_ctx *can_ctx; /**< CAN context to use for forwarding */
    struct Canudp_ctx canudp_ctx; /**< Canudp context for UDP communication */
    QueueHandle_t can_to_udp_fw;  /**< CAN to UDP forwarding queue */
    struct Port_stats stats;	  /**< Statistics */
};

#ifdef __cplusplus
extern "C" {
#endif

    /** Initialize a UDP port. */
    enum Udp_port_st udp_port_init(
	struct Udp_port_ctx *ctx,
	const struct Canudp_config *config
	);

    /** Start a UDP port, using the given CAN context to forward messages. */
    enum Udp_port_st udp_port_start(
	struct Udp_port_ctx *ctx, struct Can_port_ctx *can_ctx);

    /** Stop a UDP port. */
    enum Udp_port_st udp_port_stop(struct Udp_port_ctx *ctx);

    /** Enqueue a message for transmission. */
    enum Udp_port_st udp_port_enqueue(
	struct Udp_port_ctx *ctx, const struct Canudp_msg *msg);

    /** Stop and destroy a UDP port. */
    enum Udp_port_st udp_port_destroy(struct Udp_port_ctx *ctx);

    /** Retrieve UDP port state and statistics */
    enum Udp_port_st udp_port_stats(
	struct Udp_port_ctx *ctx,
	enum Udp_port_state *state, struct Port_stats *stats);

#ifdef __cplusplus
}
#endif
#endif

/** @} */
