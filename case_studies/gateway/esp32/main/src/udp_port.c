/** @file
    @brief UDP Port management, implementation.

*/

#include <sdkconfig.h>
#include <esp_log.h>		/* ESP_LOGx() */
#include "udp_port.h"
#include "can_port.h"

static const char *TAG = "udp_port";  /**< Module name for logging */

/** Time interval for the receive and forwarding tasks to stop waiting for
    messages and check for termination requests.
*/
#define UDP_HEARTBEAT_MS 500

/**< Convert the time @p time_ms, expressed in ms, into a struct timeval and
   store the result in @p time_timeval.
*/
static void ms_to_timeval(
    int time_ms,		  /**< Time in ms */
    struct timeval *time_timeval  /**< Corresponding struct timeval */
    )
{
    time_timeval->tv_sec  = time_ms / 1000;
    time_timeval->tv_usec = (time_ms % 1000) * 1000;
}

/** @details This function initializes the UDP port context @p ctx.  It opens a
    Canudp context, but does not start the receiving and forwarding tasks yet.
    The Canudp context is configured according to the content of @p config.

    The message queue for forwarding frames from CAN to UDP is sized according
    to the configuration item:

    | Item                   | Meaning                                     |
    | -----                  | -----                                       |
    | CONFIG_GW_UDP_MQ_SIZE  | Maximum number of elements in the queue     |

    @note Although, in principle, this function could handle multiple UDP
    ports, the underlying ESP-IDF functions support only one CAN port.  For
    this reason, there is no per-port UDP configuration.

    @return Status code.
    @retval #UDP_PORT_ST_OK
    @retval #UDP_PORT_ST_ESP
    @retval #UDP_PORT_ST_FREERTOS
*/
enum Udp_port_st udp_port_init(
    struct Udp_port_ctx *ctx,	/**< UDP port context */
    const struct Canudp_config *config /**< Canudp configuration */
    )
{
    struct timeval receive_timeout;
    ms_to_timeval(UDP_HEARTBEAT_MS, &receive_timeout);
    if(canudp_open(&ctx->canudp_ctx, config, &receive_timeout) != CANUDP_ST_OK)
	return UDP_PORT_ST_CANUDP;

    if((ctx->mutex =
	xSemaphoreCreateMutex()) == NULL)
    {
	canudp_close(&ctx->canudp_ctx);
	return UDP_PORT_ST_FREERTOS;
    }

    if((ctx->can_to_udp_fw =
	xQueueCreate(CONFIG_GW_UDP_MQ_SIZE, sizeof(struct Canudp_msg))) == NULL)
    {
	canudp_close(&ctx->canudp_ctx);
	vSemaphoreDelete(ctx->mutex);
	return UDP_PORT_ST_FREERTOS;
    }

    ctx->state = UDP_PORT_STATE_STOPPED;
    ctx->n_tasks = 0;
    ctx->rx_task = NULL;
    ctx->fw_task = NULL;
    ctx->can_ctx = NULL;
    clear_port_stats(&ctx->stats);
    return UDP_PORT_ST_OK;
}

/** Update the given @p ctx to report normal/abnormal task termination
    depending on @p st @p st indicates we faced a fatal FreeRTOS error
    (#UDP_PORT_ST_FREERTOS).
*/
static void report_task_term(
    struct Udp_port_ctx *ctx,	/**< UDP port context */
    enum Udp_port_st st		/**< Status code */
    )
{
    if(st != UDP_PORT_ST_FREERTOS)
    {
	if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	    /* Unable to lock the context; no way to report the error */
	    ESP_LOGE(TAG, "mutex lock failed");

	else
	{
	    if(st != UDP_PORT_ST_TERM)  ctx->state = UDP_PORT_STATE_ERROR;
	    ctx->n_tasks--;

	    ESP_LOGI(TAG, "task terminated, %d tasks left", ctx->n_tasks);
	    if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		ESP_LOGE(TAG, "mutex unlock failed");
	}
    }
}

/** Handle message @p msg received from Canudp context @p ctx. */
static enum Udp_port_st rx_handle_message(
    struct Udp_port_ctx *ctx,		/**< UDP port context */
    const struct Canudp_msg *msg	/**< Message to be handled */
    )
{
    enum Udp_port_st st = UDP_PORT_ST_UNIMPL;
    if(can_port_enqueue(ctx->can_ctx, msg) != CAN_PORT_ST_OK)
    {
	ESP_LOGW(TAG, "forwarding failed");
	st = UDP_PORT_ST_FW;
    }
    else
	st = UDP_PORT_ST_OK;

    return st;
}

/** Return true if the receive task can recover after error @p st */
static bool is_recoverable(enum Udp_port_st st)
{
    bool recoverable = false;
    switch(st)
    {
    case UDP_PORT_ST_OK:
    case UDP_PORT_ST_TIMEOUT:
    case UDP_PORT_ST_FW:
    case UDP_PORT_ST_INV_MSG:
	recoverable = true;
	break;

    default:
	break;
    }

    return recoverable;
}

/** Receive task. */
static void rx_task(
    void *arg			/**< Raw task argument from FreeRTOS */
    )
{
    struct Udp_port_ctx *ctx = (struct Udp_port_ctx *)arg;
    enum Udp_port_st st = UDP_PORT_ST_OK;

    while(st == UDP_PORT_ST_OK)
    {
	struct Canudp_msg msg;
	enum Canudp_st canudp_st = canudp_receive(&ctx->canudp_ctx, &msg);

	switch(canudp_st)
	{
	case CANUDP_ST_OK:
	    st = rx_handle_message(ctx, &msg);
	    break;

	case CANUDP_ST_TIMEOUT:
	    /* Only check for termination */
	    st = UDP_PORT_ST_TIMEOUT;
	    break;

	case CANUDP_ST_INVALID_MSG:
	    ESP_LOGW(TAG, "invalid message");
	    st = UDP_PORT_ST_INV_MSG;
	    break;

	default:
	    ESP_LOGW(TAG, "canudp_receive %d", canudp_st);
	    st = UDP_PORT_ST_CANUDP;
	    break;
	}

	if(st != UDP_PORT_ST_FREERTOS)
	{
	    /* Update statistics and check for termination */
	    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	    {
		ESP_LOGE(TAG, "mutex lock failed");
		st = UDP_PORT_ST_FREERTOS;
	    }
	    else
	    {
		if(st != UDP_PORT_ST_TIMEOUT)
		    switch(st)
		    {
		    case UDP_PORT_ST_OK:
			ctx->stats.rx++;
			break;

		    case UDP_PORT_ST_FW:
			ctx->stats.fw_err++;
			break;

		    default:
			ctx->stats.rx_err++;
			break;
		    }

		if(ctx->state != UDP_PORT_STATE_RUNNING)  st = UDP_PORT_ST_TERM;

		if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		{
		    ESP_LOGE(TAG, "mutex unlock failed");
		    st = UDP_PORT_ST_FREERTOS;
		}
	    }
	}

	/* Local error recovery */
	if(is_recoverable(st))  st = UDP_PORT_ST_OK;
    }

    report_task_term(ctx, st);
    vTaskDelete(NULL);
}

/** Forwarding task. */
static void fw_task(
    void *arg			/**< Raw task argument from FreeRTOS */
    )
{
    struct Udp_port_ctx *ctx = (struct Udp_port_ctx *)arg;
    enum Udp_port_st st = UDP_PORT_ST_OK;

    ESP_LOGI(TAG, "Forwarding task started");

    while(st == UDP_PORT_ST_OK)
    {
	struct Canudp_msg msg;
	BaseType_t rtos_st =
	    xQueueReceive(
		ctx->can_to_udp_fw, &msg, pdMS_TO_TICKS(UDP_HEARTBEAT_MS));

	/* Check for termination */
	if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	    st = UDP_PORT_ST_FREERTOS;
	else
	{
	    if(ctx->state != UDP_PORT_STATE_RUNNING)  st = UDP_PORT_ST_TERM;

	    if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		st = UDP_PORT_ST_FREERTOS;
	}

	/* Transmit the message only if we did not receive a termination
	   request, we did not encounter other errors, and we successfully
	   extracted a message from the forwarding queue.
	*/
	if(st == UDP_PORT_ST_OK && rtos_st == pdTRUE)
	{
	    enum Canudp_st canudp_st = canudp_transmit(&ctx->canudp_ctx, &msg);

	    /* Update statistics */
	    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
		st = UDP_PORT_ST_FREERTOS;
	    else
	    {
		if(canudp_st != CANUDP_ST_OK)
		{
		    ctx->stats.tx_err++;
		    st = UDP_PORT_ST_CANUDP;
		}
		else
		    ctx->stats.tx++;

		if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		    st = UDP_PORT_ST_FREERTOS;
	    }
	}
    }

    report_task_term(ctx, st);
    vTaskDelete(NULL);
}

/** Create the receive and forwarding tasks for UDP port @p ctx.  This function
    assumes that @p ctx has been locked successfully by the caller and the
    caller will also unlock it after this function returns.  It also assumes
    that @p ctx is in an appropriate state for starting the port and the
    pointer to the CAN port has been set up properly.

    The tasks are created according to the following configuration items:

    | Item                         | Meaning                                   |
    | -----                        | -----                                     |
    | CONFIG_GW_UDP_RX_STACK_DEPTH | Depth of the receive task stack (byte)    |
    | CONFIG_GW_UDP_RX_PRIO        | Priority of the receive task              |
    | CONFIG_GW_UDP_FW_STACK_DEPTH | Depth of the forwarding task stack (byte) |
    | CONFIG_GW_UDP_FW_PRIO        | Priority of the forwarding task           |

    When this function returns, the @p ctx may be in either:
    - The UDP_PORT_STATE_RUNNING state with @p ctx->n_tasks == 2
    - The UDP_PORT_STATE_ERROR state with @p ctx->n_tasks < 2

    When this function returns an error, the caller should call udp_port_stop()
    with the @p ctx mutex unlocked to ensure that any task created for the port
    is properly terminated.

    @return Status code.
    @retval #UDP_PORT_ST_OK
    @retval #UDP_PORT_ST_UNIMPL
    @retval #UDP_PORT_ST_FREERTOS
*/
static enum Udp_port_st port_start(
    struct Udp_port_ctx *ctx	/**< UDP port context */
    )
{
    enum Udp_port_st st = UDP_PORT_ST_UNIMPL;

    ctx->state = UDP_PORT_STATE_RUNNING;
    ctx->n_tasks = 0;

    if(xTaskCreate(
	   rx_task, "UDPR", CONFIG_GW_UDP_RX_STACK_DEPTH,
	   ctx, CONFIG_GW_UDP_RX_PRIO, &ctx->rx_task) != pdPASS)
    {
	ctx->state = UDP_PORT_STATE_ERROR;
	st = UDP_PORT_ST_FREERTOS;
    }
    else
    {
	ctx->n_tasks++;
	if(xTaskCreate(
	       fw_task, "UDPF", CONFIG_GW_UDP_FW_STACK_DEPTH,
	   ctx, CONFIG_GW_UDP_FW_PRIO, &ctx->fw_task) != pdPASS)
	{
	    ctx->state = UDP_PORT_STATE_ERROR;
	    st = UDP_PORT_ST_FREERTOS;
	}
	else
	{
	    ctx->n_tasks++;
	    st = UDP_PORT_ST_OK;
	}
    }

    return st;
}

/** @details This function creates the receive and forwarding tasks for UDP
    port @p ctx and starts it.  After this function completes successfully the
    UDP port may start using the CAN port @p can_ctx for forwarding UDP frames
    at any time, until the UDP port is stopped with udp_port_stop() or
    udp_port_destroy().

    @return Status code.
    @retval #UDP_PORT_ST_OK
    @retval #UDP_PORT_ST_UNIMPL
    @retval #UDP_PORT_ST_FREERTOS
    @retval #UDP_PORT_ST_INV_STATE
    @retval Other Status codes of port_start()
*/
enum Udp_port_st udp_port_start(
    struct Udp_port_ctx *ctx,	/**< UDP port context */
    struct Can_port_ctx *can_ctx /**< CAN port to be used for forwarding */
    )
{
    enum Udp_port_st st = UDP_PORT_ST_UNIMPL;

    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	st = UDP_PORT_ST_FREERTOS;

    else
    {
	if(ctx->state != UDP_PORT_STATE_STOPPED)
	    st = UDP_PORT_ST_INV_STATE;
	else
	{
	    ctx->can_ctx = can_ctx;
	    st = port_start(ctx);
	}

	if(xSemaphoreGive(ctx->mutex) != pdTRUE)
	    st = UDP_PORT_ST_FREERTOS;
    }

    if(st != UDP_PORT_ST_OK
       && st != UDP_PORT_ST_FREERTOS
       && st != UDP_PORT_ST_INV_STATE)  udp_port_stop(ctx);
    return st;
}

/** Maximum number of attempts to stop the tasks associated with a given
    context that udp_port_stop() performs before returning an error indication.
    Each attempt takes #UDP_HEARTBEAT_MS milliseconds.
*/
#define MAX_STOP_ATTEMPTS 3

/** @details This function stops the UDP port @p ctx.  It is guaranteed that
    the UDP port will no longer use the CAN context passed to udp_port_start()
    after this function returns successfully.  To this purpose, the function
    waits until the UDP port completes any pending message processing.

    @return Status code.
    @retval #UDP_PORT_ST_OK
    @retval #UDP_PORT_ST_FREERTOS
    @retval #UDP_PORT_ST_STOP
*/
enum Udp_port_st udp_port_stop(
    struct Udp_port_ctx *ctx	/**< UDP port context */
    )
{
    enum Udp_port_st st = UDP_PORT_ST_TERM;
    int attempt = 0;
    while(st == UDP_PORT_ST_TERM && attempt++ < MAX_STOP_ATTEMPTS)
    {
	if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	    st = UDP_PORT_ST_FREERTOS;
	else
	{
	    /* Ask tasks to terminate */
	    if(ctx->state == UDP_PORT_STATE_RUNNING)
		ctx->state = UDP_PORT_STATE_STOPPING;

	    /* Check whether they did or not */
	    if(ctx->n_tasks == 0)
	    {
		ctx->state = UDP_PORT_STATE_STOPPED;
		st = UDP_PORT_ST_OK;
	    }

	    if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		st = UDP_PORT_ST_FREERTOS;

	    vTaskDelay(pdMS_TO_TICKS(UDP_HEARTBEAT_MS));
	}
    }

    /* MAX_STOP_ATTEMPTS exhausted without being able to terminate the tasks
       associated with the context.  Report an error.
    */
    if(st == UDP_PORT_ST_TERM)  st = UDP_PORT_ST_STOP;
    ESP_LOGI(TAG, "port_stop status %d after %d attempts",
	     st, attempt);
    return st;
}

/** @details This function is meant to be called by another port.  It pushes
    the given @p msg into the forwarding queue of @p ctx so that it will be
    transmitted by the UDP port.  It returns to the caller before the
    transmission takes place.  When the forwarding queue is full it immediately
    returns an error indication without waiting.

    @note In theory, this function should refuse to push when the port has been
    stopped, but it currently obliges for simplicity.  In such a scenario it
    errors out anyway when the forwarding queue becomes full.

    @return Status code.
    @retval #UDP_PORT_ST_OK
    @retval #UDP_PORT_ST_FREERTOS
    @retval #UDP_PORT_ST_OVERLOAD
*/
enum Udp_port_st udp_port_enqueue(
    struct Udp_port_ctx *ctx,		/**< UDP port context */
    const struct Canudp_msg *msg	/**< Message to be transmitted */
    )
{
    enum Udp_port_st st = UDP_PORT_ST_UNIMPL;

    /* No need for mutual exclusion when sending to the queue because it has
       its own mutex.
    */
    BaseType_t rtos_st = xQueueSend(ctx->can_to_udp_fw, msg, 0); /* 0: poll */

    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	st = UDP_PORT_ST_FREERTOS;
    else
    {
	if(rtos_st != pdTRUE)
	{
	    ctx->stats.tx_drop++;
	    st = UDP_PORT_ST_OVERLOAD;
	}
	else
	    st = UDP_PORT_ST_OK;

	if(xSemaphoreGive(ctx->mutex) != pdTRUE)
	    st = UDP_PORT_ST_FREERTOS;
    }

    return st;
}

/** @details This function stops the UDP port @p ctx like udp_port_stop() would
    do and then destroys the port.  The UDP port context may be deallocated
    after this function completes successfully.  On the contrary, if this
    function returns an error, deallocating the context is unsafe because there
    may still be stray tasks using it.  The caller must ensure that this
    function is not executed concurrently with other functions referring to the
    same context to avoid race conditions.

    @return Status code.
    @retval Other Status codes of udp_port_stop()
*/
enum Udp_port_st udp_port_destroy(
    struct Udp_port_ctx *ctx	/**< UDP port context */
    )
{
    enum Udp_port_st st = udp_port_stop(ctx);
    if(st == UDP_PORT_ST_OK)
    {
	vQueueDelete(ctx->can_to_udp_fw);
	vSemaphoreDelete(ctx->mutex);
	if(canudp_close(&ctx->canudp_ctx) != CANUDP_ST_OK)
	    st = UDP_PORT_ST_CANUDP;
    }

    return st;
}

/** @details This function stores into @p state the current state and into
    @p stats the current statistics of port @p ctx.  The snapshot taken by this
    function is guaranteed to be consistent although there are other operations
    in progress on the same @p ctx.

    @return Status code.
    @retval #UDP_PORT_ST_OK
    @retval #UDP_PORT_ST_UNIMPL
    @retval #UDP_PORT_ST_FREERTOS
*/
enum Udp_port_st udp_port_stats(
    struct Udp_port_ctx *ctx,	/**< UDP port context  */
    enum Udp_port_state *state,	/**< Port state */
    struct Port_stats *stats	/**< Port status */
    )
{
    enum Udp_port_st st = UDP_PORT_ST_UNIMPL;

    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	st = UDP_PORT_ST_FREERTOS;

    else
    {
	*state = ctx->state;
	*stats = ctx->stats;

	st = (xSemaphoreGive(ctx->mutex) != pdTRUE
	      ? UDP_PORT_ST_FREERTOS
	      : UDP_PORT_ST_OK);
    }

    return st;
}
