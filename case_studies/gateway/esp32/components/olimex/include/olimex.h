/** @file
    @brief Support functions for Olimex ESP32 boards, header.

    @defgroup olimex Support functions for Olimex ESP32 boards.
    @{
*/

#ifndef OLIMEX_H
#define OLIMEX_H

#include "esp_err.h"
#include "esp_netif.h"
#include "esp_lcd_touch.h"

/** @name NS2009 configuration.
    @{
*/

/** I2C address of the NS2009.  The default value 0x48 works when pin 8 is low,
    as on the Olimex MOD-LCD2.8RTP module.
*/
#define OLIMEX_NS2009_ADDRESS (0x48)

/** Default configuration for the NS2009 I2C I/O, to be passed to
    esp_lcd_new_panel_io_i2c() during LCD and touch screen initialization.  The
    .control_phase_bytes field is set to one even if the control phase is
    disaled to avoid a consistency check error with respect to .dc_bit_offset
*/
#define OLIMEX_LCD_TOUCH_IO_I2C_NS2009_CONFIG() \
    {						\
	.dev_addr = OLIMEX_NS2009_ADDRESS,	\
	.control_phase_bytes = 1,		\
	.dc_bit_offset = 0,			\
	.lcd_cmd_bits = 8,			\
	.lcd_param_bits = 0,			\
	.flags.disable_control_phase = 1	\
    }

/** @} */

#ifdef __cplusplus
extern "C" {
#endif

    /** @name Ethernet initialization functions.
	@{
    */
    /** Initialize the ESP32 internal Ethernet interface with a static IP. */
    esp_err_t olimex_esp32_eth_init_static_ip(
	const esp_netif_ip_info_t *ip_info);

    /** @} */

    /** @name GUI initialization functions.
	@{
    */
    /** Create a new NS2009 I2C touchscreen. */
    esp_err_t olimex_lcd_touch_new_i2c_ns2009(
	const esp_lcd_panel_io_handle_t io,
	const esp_lcd_touch_config_t *config,
	esp_lcd_touch_handle_t *out_touch);

    /** Initialize the LCD2.8RTP LCD display on an ESP32-EVB-K1 board. */
    esp_err_t olimex_esp32_evb_k1_lcd_init(void);

    /** Initialize the NS2009 touchscreen on an ESP32-EVB-K1 board. */
    esp_err_t olimex_esp32_evb_k1_touch_init(void);

    /** Initialize LVGL on an ESP32-EVB-K1 board. */
    esp_err_t olimex_esp32_evb_k1_lvgl_init(void);

    /** Initialize the whole GUI subsystem on an ESP32-EVB-K1 board. */
    esp_err_t olimex_esp32_evb_k1_gui_init(void);

    /** @} */

#ifdef __cplusplus
}
#endif

#endif

/** @} */
