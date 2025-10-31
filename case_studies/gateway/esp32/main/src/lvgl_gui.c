/** @file
    @brief LVGL-Based Graphical User Interface, implementation.

*/

#include <sdkconfig.h>
#include <freertos/FreeRTOS.h>
#include <freertos/semphr.h>	/* For SemaphoreHandle_t */
#include <esp_log.h>		/* ESP_LOGx() */
#include <lvgl_gui.h>
#include <esp_lvgl_port.h>

static const char *TAG = "lvgl_gui";  /**< Module name for logging */


#define REFRESH_PERIOD 100	/**< GUI refresh period (ms) */


/** Generic port state used by the GUI. */
enum port_state {
    PORT_STATE_STOPPED, /**< Port stopped */
    PORT_STATE_RUNNING, /**< Port running or stopping */
    PORT_STATE_ERROR	/**< Port error or unknown state */
};

/** Data type that contains all the widgets of one gateway port. */
struct port_widgets
{
    lv_obj_t *state;   /**< Port state */
    lv_obj_t *rx;      /**< Number of successfully received messages */
    lv_obj_t *tx;      /**< Number of successfully transmitted messages */
    lv_obj_t *fw;      /**< Number of successfully forwarded messages */
    lv_obj_t *rx_err;  /**< Number of receive errors */
    lv_obj_t *tx_err;  /**< Number of transmit errors */
    lv_obj_t *tx_drop; /**< Number of dropped messages */
    lv_obj_t *fw_err;  /**< Number of forwarding errors */
};

/** Data type that holds all the state information of the GUI. */
struct view
{
    struct Udp_port_ctx *udp_ctx; /**< UDP port context */
    struct Can_port_ctx *can_ctx; /**< CAN port context */
    lv_obj_t *gui;		  /**< Root of the whole GUI */
    lv_obj_t *bar;		  /**< Top bar */
    struct port_widgets can_port; /**< Widgets of the CAN port */
    struct port_widgets udp_port; /**< Widgets of the UDP port */
    lv_timer_t *refresh;          /**< GUI refresh timer */
    SemaphoreHandle_t exit_sem;   /**< Semaphore to wait on for GUI exit */
};

/** Static state information of the GUI. */
static struct view view;


/** Map the CAN port-specific state @p state into the generic port state used
    by the GUI and return it.

    @return Generic port state.
*/
static enum port_state port_state_of_can(
    enum Can_port_state state)
{
    enum port_state port_state = PORT_STATE_ERROR;
    switch(state)
    {
    case CAN_PORT_STATE_STOPPED:
	port_state = PORT_STATE_STOPPED;
	break;

    case CAN_PORT_STATE_RUNNING:
    case CAN_PORT_STATE_STOPPING:
	port_state = PORT_STATE_RUNNING;
	break;

    default:
	/* This includes CAN_PORT_STATE_ERROR */
	port_state = PORT_STATE_ERROR;
	break;
    }
    return port_state;
}

/** Map the UDP port-specific state @p state into the generic port state used
    by the GUI and return it.

    @return Generic port state.
*/
static enum port_state port_state_of_udp(
    enum Udp_port_state state)
{
    enum port_state port_state = PORT_STATE_ERROR;
    switch(state)
    {
    case UDP_PORT_STATE_STOPPED:
	port_state = PORT_STATE_STOPPED;
	break;

    case UDP_PORT_STATE_RUNNING:
    case UDP_PORT_STATE_STOPPING:
	port_state = PORT_STATE_RUNNING;
	break;

    default:
	/* This includes UDP_PORT_STATE_ERROR */
	port_state = PORT_STATE_ERROR;
	break;
    }
    return port_state;
}

/** Callback invoked when the user clicks on the "Start" button.  It starts
    both gateway ports.  Feedback to the user is provided indirectly, when the
    ports change state.
*/
static void start_cb(lv_event_t *e)
{
    ESP_LOGI(TAG, "Starting gateway ports");
    enum Can_port_st can_st = can_port_start(view.can_ctx, view.udp_ctx);
    if(can_st != CAN_PORT_ST_OK)
	ESP_LOGW(TAG, "can_port_start failed (%d)", can_st);
    else
    {
	enum Udp_port_st udp_st = udp_port_start(view.udp_ctx, view.can_ctx);
	if(udp_st != UDP_PORT_ST_OK)
	    ESP_LOGW(TAG, "udp_port_start failed (%d)", udp_st);
	else
	    ESP_LOGI(TAG, "Both ports started");
    }
}

/** Callback invoked when the user clicks on the "Stop" button.  It stops
    both gateway ports.  Feedback to the user is provided indirectly, when the
    ports change state.
*/
static void stop_cb(lv_event_t *e)
{
    ESP_LOGI(TAG, "Stopping gateway ports");
    enum Udp_port_st udp_st = udp_port_stop(view.udp_ctx);
    if(udp_st != UDP_PORT_ST_OK)
	ESP_LOGW(TAG, "udp_port_stop failed (%d)", udp_st);
    enum Can_port_st can_st = can_port_stop(view.can_ctx);
    if(can_st != CAN_PORT_ST_OK)
	ESP_LOGW(TAG, "can_port_stop failed (%d)", can_st);
}

/** Callback invoked when the user clicks on the "Exit" button.  It stops
    both gateway ports and then makes lvgl_gui_wait_for_termination() return
    to the caller.
*/
static void exit_cb(lv_event_t *e)
{
    ESP_LOGI(TAG, "Exiting");
    stop_cb(e);
    if(xSemaphoreGive(view.exit_sem) != pdTRUE)
	ESP_LOGW(TAG, "Could not give the termination semaphore");
}


/** Create an LVGL label as a child of @p parent suitable to tag the object
    that follows it in @p parent as @p tag.

    @return A pointer to the corresponding LVGL object.
*/
static lv_obj_t *tag_create(
    lv_obj_t *parent,
    const char *tag
    )
{
    lv_obj_t *label = lv_label_create(parent);
    lv_obj_set_width(label, LV_SIZE_CONTENT);
    lv_obj_set_style_text_align(label, LV_TEXT_ALIGN_RIGHT, 0);
    lv_label_set_text_static(label, tag);
    return label;
}

/** Create an LVGL label suitable to hold a number as a child of @p parent.
    The argument @p width is the width of the label.

    @return A pointer to the corresponding LVGL object
*/
static lv_obj_t *number_create(
    lv_obj_t *parent,
    int width
    )
{
    lv_obj_t *label = lv_label_create(parent);
    lv_obj_set_width(label, width);
    lv_obj_set_style_text_align(label, LV_TEXT_ALIGN_RIGHT, 0);
    lv_obj_set_style_text_font(label, &lv_font_unscii_8, 0);
    lv_label_set_text_static(label, "-----");
    return label;
}

/** Create the widgets needed to display the state and status of a gateway port
    as children of @p parent.  Fill the structure pointed by @p port_widgets.
    The argument @p name is the human-readable name of the port used as a
    title.  The color of the label depends on the port state.
*/
static void port_widgets_create(
    struct port_widgets *port_widgets,
    lv_obj_t *parent,
    const char *name
    )
{
    lv_obj_t *flex = lv_obj_create(parent);
    lv_obj_set_size(flex, lv_disp_get_hor_res(NULL), LV_SIZE_CONTENT);
    lv_obj_set_layout(flex, LV_LAYOUT_FLEX);
    lv_obj_set_flex_flow(flex, LV_FLEX_FLOW_ROW);
    lv_obj_set_style_pad_row(flex, 0, 0);
    lv_obj_set_flex_align(
	flex,
	LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);
    lv_obj_clear_flag(flex, LV_OBJ_FLAG_SCROLLABLE);

    lv_obj_t *label = lv_label_create(flex);
    lv_obj_set_flex_grow(label, 1);
    lv_obj_set_style_text_align(label, LV_TEXT_ALIGN_LEFT, 0);
    lv_label_set_text_static(label, name);
    lv_obj_set_style_bg_opa(label, LV_OPA_COVER, LV_PART_MAIN);
    port_widgets->state = label;

    lv_obj_add_flag(tag_create(flex, "R"), LV_OBJ_FLAG_FLEX_IN_NEW_TRACK);
    port_widgets->rx = number_create(flex, LV_SIZE_CONTENT);
    tag_create(flex, "T");
    port_widgets->tx = number_create(flex, LV_SIZE_CONTENT);
    tag_create(flex, "F");
    port_widgets->fw = number_create(flex, LV_SIZE_CONTENT);
    lv_obj_add_flag(tag_create(flex, "RE"), LV_OBJ_FLAG_FLEX_IN_NEW_TRACK);
    port_widgets->rx_err = number_create(flex, LV_SIZE_CONTENT);
    tag_create(flex, "TE");
    port_widgets->tx_err = number_create(flex, LV_SIZE_CONTENT);
    tag_create(flex, "FE");
    port_widgets->fw_err = number_create(flex, LV_SIZE_CONTENT);
    lv_obj_add_flag(tag_create(flex, "D"), LV_OBJ_FLAG_FLEX_IN_NEW_TRACK);
    port_widgets->tx_drop = number_create(flex, LV_SIZE_CONTENT);
}

/** Create the top bar of the GUI as child of @p parent.

    @return A pointer to the corresponding LVGL object
*/
static lv_obj_t *bar_create(lv_obj_t *parent)
{
    lv_obj_t *bar = lv_label_create(parent);
    lv_obj_set_width(bar, lv_disp_get_hor_res(NULL));
    lv_obj_set_style_text_align(bar, LV_TEXT_ALIGN_CENTER, 0);
    lv_label_set_text_static(bar, "RTOS Book - Gateway");
    return bar;
}

/** Create a (clickable) button as a child of @p parent with the given @p
    name.  If non-`NULL`, @p cb is the callback function to be called when the
    user clicks on the button, with `NULL` user data.
*/
static void button_create(
    lv_obj_t *parent, const char *name,
    void (* cb)(lv_event_t *))
{
    lv_obj_t *btn = lv_btn_create(parent);
    lv_obj_set_flex_grow(btn, 1);
    lv_obj_t *label = lv_label_create(btn);
    lv_obj_center(label);
    lv_label_set_text_static(label, name);
    if(cb)  lv_obj_add_event_cb(btn, cb, LV_EVENT_CLICKED, NULL);
}

/** Create a flex container with the three buttons "Start", "Stop", and "Exit"
    as a child of @p parent.  The callback functions associated with the
    buttons are start_cb(), stop_cb(), and exit_cb(), respectively.
*/
static void buttons_create(lv_obj_t *parent)
{
    lv_obj_t *flex = lv_obj_create(parent);
    lv_obj_set_size(flex, lv_disp_get_hor_res(NULL), LV_SIZE_CONTENT);
    lv_obj_set_layout(flex, LV_LAYOUT_FLEX);
    lv_obj_set_flex_flow(flex, LV_FLEX_FLOW_ROW);
    lv_obj_set_style_pad_row(flex, 0, 0);
    lv_obj_set_flex_align(
	flex,
	LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);
    lv_obj_clear_flag(flex, LV_OBJ_FLAG_SCROLLABLE);
    button_create(flex, "Start", start_cb);
    button_create(flex, "Stop", stop_cb);
    button_create(flex, "Exit", exit_cb);
}

/** Update the background color of the given @p label depending on the port
    @p state.
*/
static void update_state(lv_obj_t *label, enum port_state state)
{
    lv_color_t color;

    switch(state)
    {
    case PORT_STATE_STOPPED:
	color = lv_palette_main(LV_PALETTE_YELLOW);
	break;
    case PORT_STATE_RUNNING:
	color = lv_palette_main(LV_PALETTE_GREEN);
	break;
    default:
	/* This includes PORT_STATE_ERROR */
	color = lv_palette_main(LV_PALETTE_RED);
	break;
    }

    lv_obj_set_style_bg_color(label, color, LV_PART_MAIN);
}

/** Update the given @p label to show the @p value passed as argument.
*/
static void update_counter(lv_obj_t *label, unsigned value)
{
    char b[8];
    snprintf(b, sizeof(b), "%05u", value);
    lv_label_set_text(label, b);
}

/** Use update_state() and update_counter() to update the port widgets in @p
    port_widgets with the given port state @p state and statistics @p stats.
*/
static void update_port_widgets(
    struct port_widgets *port_widgets,
    enum port_state state,
    const struct Port_stats *stats
    )
{
    update_state(port_widgets->state, state);
    update_counter(port_widgets->rx, stats->rx);
    update_counter(port_widgets->tx, stats->tx);
    update_counter(port_widgets->fw, stats->fw);
    update_counter(port_widgets->rx_err, stats->rx_err);
    update_counter(port_widgets->tx_err, stats->tx_err);
    update_counter(port_widgets->fw_err, stats->fw_err);
    update_counter(port_widgets->tx_drop, stats->tx_drop);
}

/** Callback invoked periodically from a timer to refresh the GUI.  It calls
    can_port_stats() and udp_port_stats() to retrieve the information it needs
    and then updates the GUI with update_port_widgets().
*/
static void refresh_cb(lv_timer_t *timer)
{
    enum Can_port_state can_st;
    struct Port_stats stats;
    if(can_port_stats(view.can_ctx, &can_st, &stats) != CAN_PORT_ST_OK)
	update_port_widgets(&view.can_port, PORT_STATE_ERROR, NULL);
    else
	update_port_widgets(&view.can_port, port_state_of_can(can_st), &stats);

    enum Udp_port_state udp_st;
    if(udp_port_stats(view.udp_ctx, &udp_st, &stats) != UDP_PORT_ST_OK)
	update_port_widgets(&view.udp_port, PORT_STATE_ERROR, NULL);
    else
	update_port_widgets(&view.udp_port, port_state_of_udp(udp_st), &stats);
}

/** Create the GUI widget hierarchy starting at @p root and fill the global
    GUI state in #view.  Also create the synchronization semaphore used to
    wait for GUI termination and the timer whose callback will refresh the GUI
    periodically.

    @return Status code.
    @retval #LVGL_GUI_ST_OK
    @retval #LVGL_GUI_ST_OOM
*/
static enum Lvgl_gui_st gui_create(lv_obj_t *root)
{
    if((view.exit_sem = xSemaphoreCreateBinary()) == NULL)
	return LVGL_GUI_ST_OOM;

    lv_obj_t *flex = lv_obj_create(root);
    lv_obj_set_size(flex, lv_disp_get_hor_res(NULL), LV_SIZE_CONTENT);
    lv_obj_set_layout(flex, LV_LAYOUT_FLEX);
    lv_obj_set_flex_flow(flex, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_style_pad_column(flex, 0, 0);
    lv_obj_set_flex_align(
	flex,
	LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);
    lv_obj_clear_flag(flex, LV_OBJ_FLAG_SCROLLABLE);
    view.gui = flex;
    view.bar = bar_create(flex);
    port_widgets_create(&view.can_port, flex, "CAN");
    port_widgets_create(&view.udp_port, flex, "UDP");
    buttons_create(flex);
    view.refresh = lv_timer_create(refresh_cb, REFRESH_PERIOD, NULL);
    return LVGL_GUI_ST_OK;
}


/** @details This function initializes the GUI and starts it.  It stores all
    its widgets into static variables, assuming there is only one GUI instance.
    When called with a `NULL` @p udp_ctx or @p can_ctx the function assumes
    that the initialization of one or both ports failed and displays an error
    message.

    @note This function takes care only of the hardware and OS-independent part
    of GUI initialization.  It assumes that LVGL has already been initialized
    and prepared for use in advance.

    @return Status code.
    @retval #LVGL_GUI_ST_OK
    @retval #LVGL_GUI_ST_OOM
*/
enum Lvgl_gui_st lvgl_gui_init(
    struct Udp_port_ctx *udp_ctx,
    struct Can_port_ctx *can_ctx)
{
    view.udp_ctx = udp_ctx;
    view.can_ctx = can_ctx;

    enum Lvgl_gui_st st;
    lvgl_port_lock(0);
    st = gui_create(lv_scr_act());
    lvgl_port_unlock();
    return st;
}

/** @details This function blocks the caller until the GUI terminates upon user
    request or as a consequence of an unrecoverable error.

    @return Status code.
    @retval #LVGL_GUI_ST_OK
    @retval #LVGL_GUI_ST_FREERTOS
*/
enum Lvgl_gui_st lvgl_gui_wait_for_termination(void)
{
    return xSemaphoreTake(view.exit_sem, portMAX_DELAY) != pdTRUE
	? LVGL_GUI_ST_FREERTOS : LVGL_GUI_ST_OK;
}

/** @details This function destroys the GUI that lvgl_gui_init() created.  It
    must be called only after the GUI has terminated, that is, after
    lvgl_gui_wait_for_termination() has returned to the caller.

    @return Status code.
*/
enum Lvgl_gui_st lvgl_gui_destroy(void)
{
    lvgl_port_lock(0);
    lv_timer_del(view.refresh);
    lv_obj_del(view.gui);	/* This also destroys all sub-widgets */
    vSemaphoreDelete(view.exit_sem);
    lvgl_port_unlock();
    return LVGL_GUI_ST_OK;
}
