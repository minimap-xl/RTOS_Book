/** @file
    @brief NS2009 touchscreen driver for Olimex ESP32 boards, implementation.
*/

#include <string.h>
#include <assert.h>
#include "esp_check.h"		/* ESP_GOTO_ON_FALSE() */
#include "esp_log.h"
#include "esp_heap_caps.h"
#include "olimex.h"

static const char *TAG = "olimex_lcd_touch_ns2009"; /**< Tag for logging */

/** @name NS2009 command definitions and tuning constants.
    @{
*/
/* These commands elicit a 12-bit answer from the controller */
#define NS2009_CMD_READ_X	0xC0 /**< Sample X position */
#define NS2009_CMD_READ_Y	0xD0 /**< Sample Y position */
#define NS2009_CMD_READ_Z1	0xE0 /**< Sample Z1 position (pressure) */
#define NS2009_CMD_READ_Z2	0xF0 /**< Sample Z2 position (pressure) */

/** Touch resistance threshold to detect a touch; empirical value. */
#define RT_THR_DOWN		2000

/** ADC and touchscreen deadband at the sides of X and Y axes; empirical
    value.
*/
#define RT_DEADBAND		300

/** ADC resolution */
#define RT_AD_POINTS		(1<<12)

/** @} */

/** @name Internal functions and private methods linked to
    esp_lcd_touch_handle_t
    @{
*/

/** Scale v, a 12-bit integer from the touchscreen A/D converter,
    to [0, l[, taking the #RT_DEADBAND into account.
*/
static inline uint16_t scale(int v, uint16_t l)
{
    /* Ensure v is in the proper range */
    v = (v < RT_DEADBAND) ? RT_DEADBAND
	: ((v > RT_AD_POINTS - RT_DEADBAND -1) ? RT_AD_POINTS - RT_DEADBAND -1
	   : v);

    return ((v - RT_DEADBAND) * l) / (RT_AD_POINTS - 2*RT_DEADBAND);
}

/** Send @p cmd to the NS2009 and store the 12-bit result into @p *result.

    @return ESP_OK upon success, the return code of esp_lcd_panel_io_rx_param()
    otherwise.
*/
static esp_err_t ns2009_read(
    esp_lcd_touch_handle_t h,
    uint8_t cmd, uint16_t *result)
{
    uint8_t r_buf[2];

    esp_err_t ret = esp_lcd_panel_io_rx_param(h->io, cmd, r_buf, sizeof(r_buf));
    *result = (r_buf[0] << 4) | (r_buf[1] >> 4);
    return ret;
}

/** Delete the esp_lcd_touch_t pointed by @p h.

    @return Always ESP_OK.
*/
static esp_err_t ns2009_del(esp_lcd_touch_handle_t h)
{
    assert(h != NULL);

    heap_caps_free(h);
    return ESP_OK;
}

/** Read data from touch controller into the data buffer in the
    esp_lcd_touch_handle_t pointed by @p h.

    @return ESP_OK on success, ESP_ERR_xxx otherwise.
*/
static esp_err_t ns2009_read_data(esp_lcd_touch_handle_t h)
{
    esp_err_t ret = ESP_OK;
    uint16_t x, y, z1, z2;
    int z2_z1_m1_s7, rt_s7;
    int points;

    ESP_GOTO_ON_ERROR(
	ns2009_read(h, NS2009_CMD_READ_X, &x),
	err, TAG, "NS2009_CMD_READ_X failed");

    ESP_GOTO_ON_ERROR(
	ns2009_read(h, NS2009_CMD_READ_Y, &y),
	err, TAG, "NS2009_CMD_READ_Y failed");

    ESP_GOTO_ON_ERROR(
	ns2009_read(h, NS2009_CMD_READ_Z1, &z1),
	err, TAG, "NS2009_CMD_READ_Z1 failed");

    ESP_GOTO_ON_ERROR(
	ns2009_read(h, NS2009_CMD_READ_Z2, &z2),
	err, TAG, "NS2009_CMD_READ_Z2 failed");

    if(z1 == 0)
    {
	/* Definitely no touch */
	points = 0;
	rt_s7 = RT_THR_DOWN;
    }

    else
    {
	z2_z1_m1_s7 = ((z2 * 1<<7) / z1) - (1<<7);
	rt_s7 = (x * z2_z1_m1_s7) / RT_AD_POINTS;

	/* rt_s7 represents the touch strength (a lower value corresponds to a
	   stronger touch).  It is apparently unused at the moment, but we
	   store it anyway.
	*/
	if(rt_s7 >= RT_THR_DOWN)
	{
	    /* Insufficient touch strength */
	    points = 0;
	    rt_s7 = RT_THR_DOWN;
	}

	else
	    points = 1; /* The NS2009 is a single-point touchscreen */
    }

    portENTER_CRITICAL(&h->data.lock);

    h->data.points = points;
    h->data.coords[0].x = scale(x, h->config.x_max);
    h->data.coords[0].y = scale(y, h->config.y_max);
    h->data.coords[0].strength =  RT_THR_DOWN - rt_s7;

    portEXIT_CRITICAL(&h->data.lock);

    if(points > 0)
	ESP_LOGD(TAG, "\tdown (%4d, %4d) - strength = %d",
		 h->data.coords[0].x, h->data.coords[0].y,
		 h->data.coords[0].strength);

err:
    return ret;
}

/** Store into the arrays @p x, @p y, and (optionally) @p strength the data
    previously retrieved by the ns2009_read_data() function.  The function
    stores up to @p max_point_num points into the arrays and stores into
    @p *point_num the number of points it actually stored.

    @return true if at least one point was read, false otherwise
*/
static bool ns2009_get_xy(
    esp_lcd_touch_handle_t h,
    uint16_t *x, uint16_t *y, uint16_t *strength,
    uint8_t *point_num, uint8_t max_point_num)
{
    portENTER_CRITICAL(&h->data.lock);

    *point_num =
	(h->data.points <= max_point_num ? h->data.points : max_point_num);

    for(int i = 0; i < *point_num; ++i)
    {
	x[i] = h->data.coords[i].x;
	y[i] = h->data.coords[i].y;
	if(strength)  strength[i] = h->data.coords[i].strength;
    }

    portEXIT_CRITICAL(&h->data.lock);

    return *point_num > 0;
}

/** @} */


/** Create a new esp_lcd_touch_handle_t for the NS2009 controller given the LCD
    panel I/O handle @p io and the configuration @p config.  Store the handle
    in @p *out_touch when successful.  This function issues a command to the
    NS2009 to confirm that it is actually reachable and fails if it is not.
    The handler can be deleted by calling esp_lcd_touch_del() on it.

    @return ESP_OK on success, ESP_ERR_xxx otherwise.
*/
esp_err_t olimex_lcd_touch_new_i2c_ns2009(
	const esp_lcd_panel_io_handle_t io,
	const esp_lcd_touch_config_t *config,
	esp_lcd_touch_handle_t *out_touch)
{
    esp_err_t ret = ESP_OK;

    assert(io != NULL);
    assert(config != NULL);
    assert(out_touch != NULL);

    /* Create the esp_lcd_touch_t */
    esp_lcd_touch_handle_t ns2009 =
	heap_caps_calloc(1, sizeof(esp_lcd_touch_t), MALLOC_CAP_DEFAULT);

    /* This macro implicitly sets 'ret' upon error */
    ESP_GOTO_ON_FALSE(
	ns2009, ESP_ERR_NO_MEM,
	err, TAG, "no memory for NS2009 controller");

    /* Save the I/O handle (by reference) and configuration (by value) */
    ns2009->io = io;
    memcpy(&ns2009->config, config, sizeof(esp_lcd_touch_config_t));

    /* Initialize spinlock */
    ns2009->data.lock.owner = portMUX_FREE_VAL;

    /* Only supported callbacks are set.  The others stay at NULL. */
    ns2009->read_data = ns2009_read_data;
    ns2009->get_xy = ns2009_get_xy;
    ns2009->del = ns2009_del;

    /* Issue a transaction to confirm that the NS2009 is there. */
    uint16_t x;
    ESP_GOTO_ON_ERROR(
	ns2009_read(ns2009, NS2009_CMD_READ_X, &x),
	err, TAG, "NS2009 did not respond");

err:
    if(ret != ESP_OK)
    {
	/* Error recovery */
	if(ns2009)  ns2009_del(ns2009);
    }

    else
	/* Set output argument only upon success */
	*out_touch = ns2009;

    return ret;
}
