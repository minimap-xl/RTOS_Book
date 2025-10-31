/** @file
    @brief CAN Port management, implementation.

*/

#include <sdkconfig.h>
#include <esp_check.h>		/* ESP_RETURN_ON_...() */
#include <esp_log.h>		/* ESP_LOGx() */
#include <esp_clk_tree.h>	/* esp_clk_tree_src_get_freq_hz() */
#include <driver/twai.h>
#include "can_port.h"
#include "udp_port.h"

static const char *TAG = "can_port";  /**< Module name for logging */

/** @name CAN bit timing.

    The following values result in 10 quanta per bit with the sampling point at
    70%.
*/

/** @{ */
#define TSEG_1 6		/**< Propagation + Phase 1 (without SYNC) */
#define TSEG_2 3		/**< Phase 2 */
/** @} */

/** @details This function initializes the CAN port context @p ctx.  It opens
    a connection to the underlying CAN controller, but does not start the
    receiving and forwarding tasks yet.

    The CAN controller is configured according to the following configuration
    items:

    | Item                   | Meaning                                     |
    | -----                  | -----                                       |
    | CONFIG_GW_CAN_TX_GPIO  | GPIO pin used for the CAN transmit line     |
    | CONFIG_GW_CAN_RX_GPIO  | GPIO pin used for the CAN transmit line     |
    | CONFIG_GW_CAN_BIT_RATE | CAN bit rate                                |
    | CONFIG_GW_CAN_SJW      | CAN synchronization jump width              |

    CONFIG_GW_CAN_SJW is expressed in quanta.  This function configures the
    CAN controller to use 10 quanta per bit.

    The message queue for forwarding frames from UDP to CAN is sized according
    to the configuration item:

    | Item                   | Meaning                                     |
    | -----                  | -----                                       |
    | CONFIG_GW_CAN_MQ_SIZE  | Maximum number of elements in the queue     |

    @note Although, in principle, this function could handle multiple CAN
    ports, the underlying ESP-IDF function supports only one.  For this reason,
    there is no per-port CAN controller configuration.

    @return Status code.
    @retval #CAN_PORT_ST_OK
    @retval #CAN_PORT_ST_ESP
    @retval #CAN_PORT_ST_FREERTOS
*/
enum Can_port_st can_port_init(
    struct Can_port_ctx *ctx	/**< CAN port context */
    )
{
    twai_general_config_t g_config =
	TWAI_GENERAL_CONFIG_DEFAULT(
	    CONFIG_GW_CAN_TX_GPIO,
	    CONFIG_GW_CAN_RX_GPIO,
	    TWAI_MODE_NORMAL);
    g_config.intr_flags = ESP_INTR_FLAG_LEVEL2;

    const twai_filter_config_t f_config =
	TWAI_FILTER_CONFIG_ACCEPT_ALL();

    uint32_t clock_f;
    ESP_RETURN_ON_FALSE(
	esp_clk_tree_src_get_freq_hz(
	    TWAI_CLK_SRC_DEFAULT, ESP_CLK_TREE_SRC_FREQ_PRECISION_EXACT,
	    &clock_f) == ESP_OK,
	CAN_PORT_ST_ESP,
	TAG,
	"esp_clk_tree_src_get_freq_hz() failed");

    const twai_timing_config_t t_config = {
	.clk_src = TWAI_CLK_SRC_DEFAULT,
	.quanta_resolution_hz = 0,
	.brp = clock_f / (CONFIG_GW_CAN_BIT_RATE * (1 + TSEG_1 + TSEG_2)),
	.tseg_1 = TSEG_1,
	.tseg_2 = TSEG_2,
	.sjw = CONFIG_GW_CAN_SJW,
	.triple_sampling = false
    };

    ESP_LOGI(
	TAG,
	"bit_rate: %d b/s, clock_f: %lu Hz, brp: %lu%s",
	CONFIG_GW_CAN_BIT_RATE, clock_f, t_config.brp,
	clock_f % (CONFIG_GW_CAN_BIT_RATE * (1 + TSEG_1 + TSEG_2))
	? "(*)" : "");

    ESP_RETURN_ON_FALSE(
	twai_driver_install(&g_config, &t_config, &f_config) == ESP_OK,
	CAN_PORT_ST_ESP,
	TAG,
	"twai_driver_install() failed");

    if((ctx->mutex =
	xSemaphoreCreateMutex()) == NULL)
    {
	(void)twai_driver_uninstall();
	return CAN_PORT_ST_FREERTOS;
    }

    if((ctx->udp_to_can_fw =
	xQueueCreate(CONFIG_GW_CAN_MQ_SIZE, sizeof(struct Canudp_msg))) == NULL)
    {
	vSemaphoreDelete(ctx->mutex);
	(void)twai_driver_uninstall();
	return CAN_PORT_ST_FREERTOS;
    }

    ctx->state = CAN_PORT_STATE_STOPPED;
    ctx->n_tasks = 0;
    ctx->rx_task = NULL;
    ctx->fw_task = NULL;
    ctx->udp_ctx = NULL;
    clear_port_stats(&ctx->stats);
    return CAN_PORT_ST_OK;
}

/** @name TWAI alerts handled by the receive task.

    They are divided into two subgroups:
    - #ALERTS_RX indicate that one or more frames have been received
    - #ALERTS_ERR indicate various error conditions.
*/

/** @{ */
#define ALERTS_RX  TWAI_ALERT_RX_DATA	 /**< Frame RX */
#define ALERTS_ERR (TWAI_ALERT_TX_FAILED|TWAI_ALERT_RX_QUEUE_FULL	\
		    |TWAI_ALERT_ERR_PASS|TWAI_ALERT_BUS_OFF) /**< Errors */
#define ALERTS_ALL (ALERTS_RX|ALERTS_ERR) /**< All alerts combined */
/** @} */

/** Time interval for the receive and forwarding tasks to stop waiting for
    messages and check for termination requests.
*/
#define CAN_HEARTBEAT_MS 500

/** Update the given @p ctx to report normal/abnormal task termination
    depending on @p st @p st indicates we faced a fatal FreeRTOS error
    (#CAN_PORT_ST_FREERTOS).
*/
static void report_task_term(
    struct Can_port_ctx *ctx,	/**< CAN port context */
    enum Can_port_st st		/**< Status code */
    )
{
    if(st != CAN_PORT_ST_FREERTOS)
    {
	if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	    /* Unable to lock the context; no way to report the error */
	    ESP_LOGE(TAG, "mutex lock failed");

	else
	{
	    if(st != CAN_PORT_ST_TERM)  ctx->state = CAN_PORT_STATE_ERROR;
	    ctx->n_tasks--;

	    ESP_LOGI(TAG, "task terminated, %d tasks left", ctx->n_tasks);
	    if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		ESP_LOGE(TAG, "mutex unlock failed");
	}
    }
}

/**< Handle the given @p alerts from the CAN controller in context @p ctx.
     This function is called with the @p ctx unlocked.
*/
static enum Can_port_st rx_handle_alerts(
    struct Can_port_ctx *ctx,	/**< CAN port context  */
    uint32_t alerts		/**< Alerts from the CAN controller */
    )
{
    enum Can_port_st st = CAN_PORT_ST_OK;

    /* Log CAN errors but otherwise ignore them */
    if(alerts & ALERTS_ERR)
	ESP_LOGW(TAG, "error alerts: 0x%lx", alerts);

    if(alerts & ALERTS_RX)
    {
	twai_message_t twai_msg;
	esp_err_t esp_st = ESP_OK;
	while(st == CAN_PORT_ST_OK
	      && (esp_st = twai_receive(&twai_msg, 0)) == ESP_OK)
	{
	    /* Convert twai_message_t into a Canudp_msg */
	    struct Canudp_msg msg;
	    uint32_t msg_type = 0;

	    if(twai_msg.extd)  msg_type |= CANUDP_MSG_TYPE_EXT;
	    else  msg_type |= CANUDP_MSG_TYPE_BASE;

	    if(twai_msg.rtr)  msg_type |= CANUDP_MSG_TYPE_RTR;
	    canudp_msg_set_type(&msg, msg_type);
	    canudp_msg_set_id(&msg, twai_msg.identifier);
	    canudp_msg_set_dlc(&msg, twai_msg.data_length_code);

	    for(int i=0, len=canudp_msg_length(&msg); i<len; i++)
		canudp_msg_set_data(&msg, i, twai_msg.data[i]);

	    if(udp_port_enqueue(ctx->udp_ctx, &msg) != UDP_PORT_ST_OK)
	    {
		ESP_LOGW(TAG, "forwarding failed");
		st = CAN_PORT_ST_FW;
	    }
	}

	/* Report a CAN receive error only if esp_st says so */
	if(esp_st != ESP_OK && esp_st != ESP_ERR_TIMEOUT)
	{
	    ESP_LOGE(TAG, "error receiving CAN message");
	    st = CAN_PORT_ST_ESP;
	}
    }

    return st;
}

/** Return true if the receive task can recover after error @p st */
static bool is_recoverable(enum Can_port_st st)
{
    bool recoverable = false;
    switch(st)
    {
    case CAN_PORT_ST_OK:
    case CAN_PORT_ST_TIMEOUT:
    case CAN_PORT_ST_FW:
	recoverable = true;
	break;

    default:
	break;
    }

    return recoverable;
}

/** Receive task.

    @note This task counts as _received messages_ the alerts it receives
    from the CAN port driver, although they are not actual messages received
    from the CAN bus.
 */
static void rx_task(
    void *arg			/**< Raw task argument from FreeRTOS */
    )
{
    struct Can_port_ctx *ctx = (struct Can_port_ctx *)arg;
    enum Can_port_st st = CAN_PORT_ST_OK;

    ESP_LOGI(TAG, "Receive task started");

    if(twai_reconfigure_alerts(ALERTS_ALL, NULL) != ESP_OK
       || twai_start() != ESP_OK)
    {
	ESP_LOGW(TAG, "could not configure alerts or start the controller");
	st = CAN_PORT_ST_ESP;
    }

    else
    {
	while(st == CAN_PORT_ST_OK)
	{
	    uint32_t alerts;
	    esp_err_t esp_st =
		twai_read_alerts(&alerts, pdMS_TO_TICKS(CAN_HEARTBEAT_MS));

	    switch(esp_st)
	    {
	    case ESP_OK:
		st = rx_handle_alerts(ctx, alerts);
		break;

	    case ESP_ERR_TIMEOUT:
		/* Only check for termination */
		st = CAN_PORT_ST_TIMEOUT;
		break;

	    default:
		st = CAN_PORT_ST_ESP;
		break;
	    }

	    if(st != CAN_PORT_ST_FREERTOS)
	    {
		/* Update statistics and check for termination */
		if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
		    st = CAN_PORT_ST_FREERTOS;
		else
		{
		    if(st != CAN_PORT_ST_TIMEOUT)
			switch(st)
			{
			case CAN_PORT_ST_OK:
			    ctx->stats.rx++;
			    break;

			case CAN_PORT_ST_FW:
			    ctx->stats.fw_err++;
			    break;

			default:
			    ctx->stats.rx_err++;
			    break;
			}

		    if(ctx->state != CAN_PORT_STATE_RUNNING)
			st = CAN_PORT_ST_TERM;

		    if(xSemaphoreGive(ctx->mutex) != pdTRUE)
			st = CAN_PORT_ST_FREERTOS;
		}
	    }

	    /* Local error recovery */
	    if(is_recoverable(st))  st = CAN_PORT_ST_OK;
	}

	if(twai_stop() != ESP_OK)  st = CAN_PORT_ST_ESP;
    }

    report_task_term(ctx, st);
    vTaskDelete(NULL);
}

/** Forwarding task. */
static void fw_task(void *arg)
{
    struct Can_port_ctx *ctx = (struct Can_port_ctx *)arg;
    enum Can_port_st st = CAN_PORT_ST_OK;

    ESP_LOGI(TAG, "Forwarding task started");

    while(st == CAN_PORT_ST_OK)
    {
	struct Canudp_msg msg;
	BaseType_t rtos_st =
	    xQueueReceive(
		ctx->udp_to_can_fw, &msg, pdMS_TO_TICKS(CAN_HEARTBEAT_MS));

	/* Check for termination */
	if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	    st = CAN_PORT_ST_FREERTOS;
	else
	{
	    if(ctx->state != CAN_PORT_STATE_RUNNING)  st = CAN_PORT_ST_TERM;

	    if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		st = CAN_PORT_ST_FREERTOS;
	}

	/* Transmit the message only if we did not receive a termination
	   request, we did not encounter other errors, and we successfully
	   extracted a message from the forwarding queue.
	*/
	if(st == CAN_PORT_ST_OK && rtos_st == pdTRUE)
	{
	    uint32_t msg_type = canudp_msg_type(&msg);
	    twai_message_t twai_msg;
	    twai_msg.extd = ((msg_type & CANUDP_MSG_TYPE_EXT) != 0);
	    twai_msg.rtr = ((msg_type & CANUDP_MSG_TYPE_RTR) != 0);
	    twai_msg.identifier = canudp_msg_id(&msg);
	    twai_msg.data_length_code = canudp_msg_dlc(&msg);

	    for(int i=0, len=canudp_msg_length(&msg); i<len; i++)
		twai_msg.data[i] = canudp_msg_data(&msg, i);

	    /* No need for mutual exclusion when calling twai_transmit()
	       because the CAN port has its own mutex.
	    */
	    esp_err_t esp_st = twai_transmit(&twai_msg, portMAX_DELAY);

	    /* Update statistics */
	    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
		st = CAN_PORT_ST_FREERTOS;
	    else
	    {
		if(esp_st != ESP_OK)
		{
		    ctx->stats.tx_err++;
		    st = CAN_PORT_ST_ESP;
		}
		else
		    ctx->stats.tx++;

		if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		    st = CAN_PORT_ST_FREERTOS;
	    }
	}
    }

    report_task_term(ctx, st);
    vTaskDelete(NULL);
}

/** Create the receive and forwarding tasks for CAN port @p ctx.  This function
    assumes that @p ctx has been locked successfully by the caller and the
    caller will also unlock it after this function returns.  It also assumes
    that @p ctx is in an appropriate state for starting the port and the
    pointer to the UDP port has been set up properly.

    The tasks are created according to the following configuration items:

    | Item                         | Meaning                                   |
    | -----                        | -----                                     |
    | CONFIG_GW_CAN_RX_STACK_DEPTH | Depth of the receive task stack (byte)    |
    | CONFIG_GW_CAN_RX_PRIO        | Priority of the receive task              |
    | CONFIG_GW_CAN_FW_STACK_DEPTH | Depth of the forwarding task stack (byte) |
    | CONFIG_GW_CAN_FW_PRIO        | Priority of the forwarding task           |

    When this function returns, the @p ctx may be in either:
    - The CAN_PORT_STATE_RUNNING state with @p ctx->n_tasks == 2
    - The CAN_PORT_STATE_ERROR state with @p ctx->n_tasks < 2

    When this function returns an error, the caller should call can_port_stop()
    with the @p ctx mutex unlocked to ensure that any task created for the port
    is properly terminated.

    @return Status code.
    @retval #CAN_PORT_ST_OK
    @retval #CAN_PORT_ST_UNIMPL
    @retval #CAN_PORT_ST_FREERTOS
*/
static enum Can_port_st port_start(
    struct Can_port_ctx *ctx	/**< CAN port context */
    )
{
    enum Can_port_st st = CAN_PORT_ST_UNIMPL;

    ctx->state = CAN_PORT_STATE_RUNNING;
    ctx->n_tasks = 0;

    if(xTaskCreate(
	   rx_task, "CANR", CONFIG_GW_CAN_RX_STACK_DEPTH,
	   ctx, CONFIG_GW_CAN_RX_PRIO, &ctx->rx_task) != pdPASS)
    {
	ctx->state = CAN_PORT_STATE_ERROR;
	st = CAN_PORT_ST_FREERTOS;
    }
    else
    {
	ctx->n_tasks++;
	if(xTaskCreate(
	       fw_task, "CANF", CONFIG_GW_CAN_FW_STACK_DEPTH,
	   ctx, CONFIG_GW_CAN_FW_PRIO, &ctx->fw_task) != pdPASS)
	{
	    ctx->state = CAN_PORT_STATE_ERROR;
	    st = CAN_PORT_ST_FREERTOS;
	}
	else
	{
	    ctx->n_tasks++;
	    st = CAN_PORT_ST_OK;
	}
    }

    return st;
}

/** @details This function creates the receive and forwarding tasks for CAN
    port @p ctx and starts it.  After this function completes successfully the
    CAN port may start using the UDP port @p udp_ctx for forwarding CAN frames
    at any time, until the CAN port is stopped with can_port_stop() or
    can_port_destroy().  Starting or stopping a CAN port does _not_ reset its
    statistics.

    @return Status code.
    @retval #CAN_PORT_ST_OK
    @retval #CAN_PORT_ST_UNIMPL
    @retval #CAN_PORT_ST_FREERTOS
    @retval #CAN_PORT_ST_INV_STATE
    @retval Other Status codes of port_start().
*/
enum Can_port_st can_port_start(
    struct Can_port_ctx *ctx,	/**< CAN port context */
    struct Udp_port_ctx *udp_ctx /**< UDP port to be used for forwarding */
    )
{
    enum Can_port_st st = CAN_PORT_ST_UNIMPL;

    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	st = CAN_PORT_ST_FREERTOS;

    else
    {
	if(ctx->state != CAN_PORT_STATE_STOPPED)
	    st = CAN_PORT_ST_INV_STATE;
	else
	{
	    ctx->udp_ctx = udp_ctx;
	    st = port_start(ctx);
	}

	if(xSemaphoreGive(ctx->mutex) != pdTRUE)
	    st = CAN_PORT_ST_FREERTOS;
    }

    if(st != CAN_PORT_ST_OK
       && st != CAN_PORT_ST_FREERTOS
       && st != CAN_PORT_ST_INV_STATE)  can_port_stop(ctx);
    return st;
}

/** Maximum number of attempts to stop the tasks associated with a given
    context that can_port_stop() performs before returning an error indication.
    Each attempt takes #CAN_HEARTBEAT_MS milliseconds.
*/
#define MAX_STOP_ATTEMPTS 3

/** @details This function stops the CAN port @p ctx.  It is guaranteed that
    the CAN port will no longer use the UDP context passed to can_port_start()
    after this function returns successfully.  To this purpose, the function
    waits until the CAN port completes any pending message processing.
    Starting or stopping a CAN port does _not_ reset its statistics.

    @return Status code.
    @retval #CAN_PORT_ST_OK
    @retval #CAN_PORT_ST_FREERTOS
    @retval #CAN_PORT_ST_STOP
*/
enum Can_port_st can_port_stop(
    struct Can_port_ctx *ctx	/**< CAN port context */
    )
{
    enum Can_port_st st = CAN_PORT_ST_TERM;
    int attempt = 0;
    while(st == CAN_PORT_ST_TERM && attempt++ < MAX_STOP_ATTEMPTS)
    {
	if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	    st = CAN_PORT_ST_FREERTOS;
	else
	{
	    /* Ask tasks to terminate */
	    if(ctx->state == CAN_PORT_STATE_RUNNING)
		ctx->state = CAN_PORT_STATE_STOPPING;

	    /* Check whether they did or not */
	    if(ctx->n_tasks == 0)
	    {
		ctx->state = CAN_PORT_STATE_STOPPED;
		st = CAN_PORT_ST_OK;
	    }

	    if(xSemaphoreGive(ctx->mutex) != pdTRUE)
		st = CAN_PORT_ST_FREERTOS;

	    vTaskDelay(pdMS_TO_TICKS(CAN_HEARTBEAT_MS));
	}
    }

    /* MAX_STOP_ATTEMPTS exhausted without being able to terminate the tasks
       associated with the context.  Report an error.
    */
    if(st == CAN_PORT_ST_TERM)  st = CAN_PORT_ST_STOP;
    ESP_LOGI(TAG, "port_stop status %d after %d attempts",
	     st, attempt);
    return st;
}

/** @details This function is meant to be called by another port.  It pushes
    the given @p msg into the forwarding queue of @p ctx so that it will be
    transmitted by the CAN port.  It returns to the caller before the
    transmission takes place.  When the forwarding queue is full it immediately
    returns an error indication without waiting.

    @note In theory, this function should refuse to push when the port has been
    stopped, but it currently obliges for simplicity.  In such a scenario it
    errors out anyway when the forwarding queue becomes full.

    @return Status code.
    @retval #CAN_PORT_ST_OK
    @retval #CAN_PORT_ST_FREERTOS
    @retval #CAN_PORT_ST_OVERLOAD
*/
enum Can_port_st can_port_enqueue(
    struct Can_port_ctx *ctx,		/**< CAN port context */
    const struct Canudp_msg *msg	/**< Message to be transmitted */
    )
{
    enum Can_port_st st = CAN_PORT_ST_UNIMPL;

    /* No need for mutual exclusion when sending to the queue because it has
       its own mutex.
    */
    BaseType_t rtos_st = xQueueSend(ctx->udp_to_can_fw, msg, 0); /* 0: poll */

    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	st = CAN_PORT_ST_FREERTOS;
    else
    {
	if(rtos_st != pdTRUE)
	{
	    ctx->stats.tx_drop++;
	    st = CAN_PORT_ST_OVERLOAD;
	}
	else
	    st = CAN_PORT_ST_OK;

	if(xSemaphoreGive(ctx->mutex) != pdTRUE)
	    st = CAN_PORT_ST_FREERTOS;
    }

    return st;
}

/** @details This function stops the CAN port @p ctx like can_port_stop() would
    do and then destroys the port.  The CAN port context may be deallocated
    after this function completes successfully.  On the contrary, if this
    function returns an error, deallocating the context is unsafe because there
    may still be stray tasks using it.  The caller must ensure that this
    function is not executed concurrently with other functions referring to the
    same context to avoid race conditions.

    @return Status code.
    @retval #CAN_PORT_ST_OK
    @retval #CAN_PORT_ST_ESP
    @retval Other Status codes of can_port_stop().
*/
enum Can_port_st can_port_destroy(
    struct Can_port_ctx *ctx	/**< CAN port context */
    )
{
    enum Can_port_st st = can_port_stop(ctx);
    if(st == CAN_PORT_ST_OK)
    {
	vQueueDelete(ctx->udp_to_can_fw);
	vSemaphoreDelete(ctx->mutex);
	if(twai_driver_uninstall() != ESP_OK)  st = CAN_PORT_ST_ESP;
    }

    return st;
}

/** @details This function stores into @p state the current state and into
    @p stats the current statistics of port @p ctx.  The snapshot taken by this
    function is guaranteed to be consistent although there are other operations
    in progress on the same @p ctx.

    @return Status code.
    @retval #CAN_PORT_ST_OK
    @retval #CAN_PORT_ST_UNIMPL
    @retval #CAN_PORT_ST_FREERTOS
*/
enum Can_port_st can_port_stats(
    struct Can_port_ctx *ctx,	/**< CAN port context  */
    enum Can_port_state *state,	/**< Port state */
    struct Port_stats *stats	/**< Port status */
    )
{
    enum Can_port_st st = CAN_PORT_ST_UNIMPL;

    if(xSemaphoreTake(ctx->mutex, portMAX_DELAY) != pdTRUE)
	st = CAN_PORT_ST_FREERTOS;

    else
    {
	*state = ctx->state;
	*stats = ctx->stats;

	st = (xSemaphoreGive(ctx->mutex) != pdTRUE
	      ? CAN_PORT_ST_FREERTOS
	      : CAN_PORT_ST_OK);
    }

    return st;
}
