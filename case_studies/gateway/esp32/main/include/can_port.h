/** @file
    @brief CAN Port management, header.

    @defgroup can_port Gateway, CAN port
    @{
*/

#ifndef CAN_PORT_H
#define CAN_PORT_H

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <freertos/semphr.h>	/* For SemaphoreHandle_t */
#include <freertos/queue.h>	/* For QueueHandle_t */
#include <canudp.h>
#include "port_stats.h"

/** Status code returned by most functions.  The following codes are used only
    internally and never returned to users: #CAN_PORT_ST_FW, #CAN_PORT_ST_TERM,
    #CAN_PORT_ST_TIMEOUT.
*/
enum Can_port_st {
    CAN_PORT_ST_OK,		/**< Successful completion */
    CAN_PORT_ST_UNIMPL,		/**< Function not properly implemented */
    CAN_PORT_ST_ESP,		/**< ESP error */
    CAN_PORT_ST_FREERTOS,	/**< FreeRTOS error */
    CAN_PORT_ST_INV_STATE,	/**< Invalid port state */
    CAN_PORT_ST_FW,		/**< Forwarding (to UDP port) error */
    CAN_PORT_ST_TERM,		/**< Normal termination in progress */
    CAN_PORT_ST_STOP,		/**< Port stop failed */
    CAN_PORT_ST_OVERLOAD,	/**< Forwarding queue full */
    CAN_PORT_ST_TIMEOUT		/**< Timeout from CAN driver */
};

/** Port state. */
enum Can_port_state {
    CAN_PORT_STATE_STOPPED,	/**< Port stopped */
    CAN_PORT_STATE_RUNNING,	/**< Port running */
    CAN_PORT_STATE_STOPPING,	/**< Port stopping */
    CAN_PORT_STATE_ERROR	/**< Unrecoverable error */
};

/* Forward declaration of the UDP port context to avoid circular references
   between headers.
*/
struct Udp_port_ctx;

/** This structure stores all the information the CAN port needs. */
struct Can_port_ctx {
    SemaphoreHandle_t mutex;	  /**< Mutual exclusion semaphore */
    enum Can_port_state state;	  /**< Port state */
    int n_tasks;		  /**< Number of tasks alive for this port */
    TaskHandle_t rx_task;	  /**< Receive task */
    TaskHandle_t fw_task;	  /**< Forwarding task */
    struct Udp_port_ctx *udp_ctx; /**< UDP context to use for forwarding */
    QueueHandle_t udp_to_can_fw;  /**< UDP to CAN forwarding queue */
    struct Port_stats stats;	  /**< Statistics */
};

#ifdef __cplusplus
extern "C" {
#endif

    /** Initialize a CAN port. */
    enum Can_port_st can_port_init(struct Can_port_ctx *ctx);

    /** Start a CAN port, using the given UDP context to forward messages. */
    enum Can_port_st can_port_start(
	struct Can_port_ctx *ctx, struct Udp_port_ctx *udp_ctx);

    /** Stop a CAN port. */
    enum Can_port_st can_port_stop(struct Can_port_ctx *ctx);

    /** Enqueue a message for transmission. */
    enum Can_port_st can_port_enqueue(
	struct Can_port_ctx *ctx, const struct Canudp_msg *msg);

    /** Stop and destroy a CAN port. */
    enum Can_port_st can_port_destroy(struct Can_port_ctx *ctx);

    /** Retrieve CAN port state and statistics. */
    enum Can_port_st can_port_stats(
	struct Can_port_ctx *ctx,
	enum Can_port_state *state, struct Port_stats *stats);
#ifdef __cplusplus
}
#endif
#endif

/** @} */
