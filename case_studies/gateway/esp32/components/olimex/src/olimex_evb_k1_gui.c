/** @file
    @brief GUI support code for Olimex ESP32 boards, implementation.
*/

#include "esp_log.h"
#include "esp_check.h"
#include "driver/i2c.h"
#include "driver/gpio.h"
#include "driver/spi_master.h"
#include "esp_lcd_panel_io.h"
#include "esp_lcd_panel_vendor.h"
#include "esp_lcd_panel_ops.h"
#include "esp_lvgl_port.h"
#include "esp_lcd_ili9341.h"
#include "olimex.h"

/** @name LCD resolution.

    For the ILI9341 the "native" H is the narrow side of the LCD screen, while
    the V is the wide side.
    @{
*/
#define EVB_K1_LCD_H_RES   (240) /**< Horizontal LCD resolution */
#define EVB_K1_LCD_V_RES   (320) /**< Vertical LCD resolution */
/** @} */

/** @name LCD settings.
    @{
*/
#define EVB_K1_LCD_SPI_NUM	    (SPI2_HOST)	       /**< SPI bus number */
#define EVB_K1_LCD_PIXEL_CLK_HZ     (40 * 1000 * 1000) /**< Pixel clock */
#define EVB_K1_LCD_CMD_BITS	    (8)		       /**< Bits in command */
#define EVB_K1_LCD_PARAM_BITS	    (8)		       /**< Bits in parameter */
#define EVB_K1_LCD_RGB_ENDIAN	    (LCD_RGB_ENDIAN_BGR) /**< Color order */
#define EVB_K1_LCD_BITS_PER_PIXEL   (16)	       /**< Bits per pixel */
#define EVB_K1_LCD_DRAW_BUFF_DOUBLE (1)		       /**< Double buffering */
#define EVB_K1_LCD_DRAW_BUFF_HEIGHT (50)	  /**< Rows in double buffer */
/** @} */

/** @name LCD control pins.

    For Olimex ESP32-EVB - UEXT.  No backlight control.
    @{
*/
#define EVB_K1_LCD_GPIO_SCLK	    (GPIO_NUM_14) /**< SPI clock */
#define EVB_K1_LCD_GPIO_MOSI	    (GPIO_NUM_2)  /**< Master -> Slave data */
#define EVB_K1_LCD_GPIO_RST	    (GPIO_NUM_NC) /**< Reset */
#define EVB_K1_LCD_GPIO_DC	    (GPIO_NUM_15) /**< Data/Control */
#define EVB_K1_LCD_GPIO_CS	    (GPIO_NUM_17) /**< Chip select */
/** @} */

/** @name Touch screen I2C bus settings.
    @{
*/
#define EVB_K1_TOUCH_I2C_NUM       I2C_NUM_0 /**< Touch screen I2C bus number */
#define EVB_K1_TOUCH_I2C_CLK_HZ    (400000)  /**< I2C bus clock */
/** @} */

/** @name Touch screen control pins.
    @{
*/
#define EVB_K1_TOUCH_I2C_SDA       (GPIO_NUM_13) /**< Serial data */
#define EVB_K1_TOUCH_I2C_SCL       (GPIO_NUM_16) /**< Serial clock */
/** @} */

/** @name Initial LCD panel and touch screen settings.
    @{
*/
#define EVB_K1_LCD_MIRROR_X	true  /**< Mirror LCD along the X axis */
#define EVB_K1_LCD_MIRROR_Y	false /**< Mirror LCD along the Y axis */
#define EVB_K1_LCD_ON_OFF	true  /**< Display initially turned on */

#define EVB_K1_TOUCH_MIRROR_X	false /**< Mirror touch screen along X */
#define EVB_K1_TOUCH_MIRROR_Y	true  /**< Mirror touch screen along Y */
/** @} */

static const char *TAG = "olimex_evb_k1_gui"; /**< Tag for logging */

/* LCD IO and panel */
static esp_lcd_panel_io_handle_t lcd_io = NULL; /**< LCD I/O handle */
static esp_lcd_panel_handle_t lcd_panel = NULL; /**< LCD panel handle */

/* LVGL touch */
static esp_lcd_panel_io_handle_t touch_io = NULL; /**< Touchscreen I/O handle */
static esp_lcd_touch_handle_t touch = NULL;	  /**< Touchscreen handle */

/* lvgl display */
static lv_disp_t *lvgl_disp = NULL; /**< LVGL display hadle */

/* LVGL touch */
static lv_indev_t *lvgl_touch_indev = NULL; /**< LVGL input device handle */

/** @return ESP_OK on success, ESP_ERR_xxx otherwise. */
esp_err_t olimex_esp32_evb_k1_lcd_init(void)
{
    esp_err_t ret = ESP_OK;

    /* LCD initialization */
    ESP_LOGD(TAG, "Initialize SPI bus");

    const spi_bus_config_t buscfg = {
	.sclk_io_num = EVB_K1_LCD_GPIO_SCLK,
	.mosi_io_num = EVB_K1_LCD_GPIO_MOSI,
	.miso_io_num = GPIO_NUM_NC,
	.quadwp_io_num = GPIO_NUM_NC,
	.quadhd_io_num = GPIO_NUM_NC,
	.max_transfer_sz =
	    EVB_K1_LCD_H_RES * EVB_K1_LCD_DRAW_BUFF_HEIGHT
	    * sizeof(uint16_t),
    };

    ESP_RETURN_ON_ERROR(
	spi_bus_initialize(EVB_K1_LCD_SPI_NUM, &buscfg, SPI_DMA_CH_AUTO),
	TAG, "SPI but init failed");

    ESP_LOGD(TAG, "Install panel I/O");

    const esp_lcd_panel_io_spi_config_t io_config = {
	.dc_gpio_num = EVB_K1_LCD_GPIO_DC,
	.cs_gpio_num = EVB_K1_LCD_GPIO_CS,
	.pclk_hz = EVB_K1_LCD_PIXEL_CLK_HZ,
	.lcd_cmd_bits = EVB_K1_LCD_CMD_BITS,
	.lcd_param_bits = EVB_K1_LCD_PARAM_BITS,
	.spi_mode = 0,
	.trans_queue_depth = 10,
    };

    /* Explicit cast because esp_lcd_spi_bus_handle_t is a void*, whereas
       SPIx_HOST are enumerators of enum spi_host_device_t
    */
    ESP_GOTO_ON_ERROR(
	esp_lcd_new_panel_io_spi(
	    (esp_lcd_spi_bus_handle_t)EVB_K1_LCD_SPI_NUM,
	    &io_config, &lcd_io),
	err, TAG, "New panel SPI I/O failed");

    ESP_LOGD(TAG, "Install LCD driver");

    /* .color_space is deprecated in favor of .rgb_endian */
    const esp_lcd_panel_dev_config_t panel_config = {
	.reset_gpio_num = EVB_K1_LCD_GPIO_RST,
	.rgb_endian = EVB_K1_LCD_RGB_ENDIAN,
	.bits_per_pixel = EVB_K1_LCD_BITS_PER_PIXEL,
    };

    ESP_GOTO_ON_ERROR(
	esp_lcd_new_panel_ili9341(lcd_io, &panel_config, &lcd_panel),
	err, TAG, "New panel failed");

    ESP_LOGD(TAG, "LCD panel initial setup");

    esp_lcd_panel_reset(lcd_panel);
    esp_lcd_panel_init(lcd_panel);
    esp_lcd_panel_mirror(
	lcd_panel,
	EVB_K1_LCD_MIRROR_X, EVB_K1_LCD_MIRROR_Y);
    esp_lcd_panel_disp_on_off(lcd_panel, EVB_K1_LCD_ON_OFF);

    return ret;

err:
    if (lcd_panel) {
	esp_lcd_panel_del(lcd_panel);
    }

    if (lcd_io) {
	esp_lcd_panel_io_del(lcd_io);
    }

    spi_bus_free(EVB_K1_LCD_SPI_NUM);
    return ret;
}

/** @return ESP_OK on success, ESP_ERR_xxx otherwise. */
esp_err_t olimex_esp32_evb_k1_touch_init(void)
{
    /* LCD initialization */
    ESP_LOGD(TAG, "Initialize I2C bus");

    const i2c_config_t config = {
	.mode = I2C_MODE_MASTER,
	.sda_io_num = EVB_K1_TOUCH_I2C_SDA,
	.sda_pullup_en = GPIO_PULLUP_DISABLE, /* External 2.2KOhm pullup */
	.scl_io_num = EVB_K1_TOUCH_I2C_SCL,
	.scl_pullup_en = GPIO_PULLUP_DISABLE, /* External 2.2KOhm pullup */
	.master.clk_speed = EVB_K1_TOUCH_I2C_CLK_HZ, /* Fast mode */
	.clk_flags = 0 /* No special requirements */
    };

    ESP_RETURN_ON_ERROR(
	i2c_param_config(EVB_K1_TOUCH_I2C_NUM, &config),
	TAG, "I2C param_config failed");

    /* Use the same .mode set in the configuration when installing
       the driver.
    */
    ESP_RETURN_ON_ERROR(
	i2c_driver_install(
	    EVB_K1_TOUCH_I2C_NUM, config.mode,
	    (size_t)0, /* slv_rx_buf_len, unused when MASTER */
	    (size_t)0, /* slv_tx_buf_len, unused when MASTER */
	    0	       /* No special interrupt flags */
	    ),
	TAG, "I2C driver_install failed");

    ESP_LOGD(TAG, "Install touchscreen I/O");

    const esp_lcd_panel_io_i2c_config_t io_config =
	OLIMEX_LCD_TOUCH_IO_I2C_NS2009_CONFIG();

    ESP_RETURN_ON_ERROR(
	esp_lcd_new_panel_io_i2c(
	    (esp_lcd_i2c_bus_handle_t)EVB_K1_TOUCH_I2C_NUM,
	    &io_config, &touch_io),
	TAG, "New panel I2C I/O failed");

    ESP_LOGD(TAG, "Install touchscreen driver");

    const esp_lcd_touch_config_t touch_cfg = {
	/* TBD swap and mirror */
	.x_max = EVB_K1_LCD_H_RES,
	.y_max = EVB_K1_LCD_V_RES,
	.rst_gpio_num = GPIO_NUM_NC, // Unsupported by NS2009
	.int_gpio_num = GPIO_NUM_NC, // Unsupported by NS2009
	.flags = {
	    .swap_xy = 0,
	    .mirror_x = EVB_K1_TOUCH_MIRROR_X,
	    .mirror_y = EVB_K1_TOUCH_MIRROR_Y,
	},
    };

    ESP_RETURN_ON_ERROR(
	olimex_lcd_touch_new_i2c_ns2009(touch_io, &touch_cfg, &touch),
	TAG, "New touchscreen failed");

    return ESP_OK;
}

/** @return ESP_OK on success, ESP_ERR_xxx otherwise. */
esp_err_t olimex_esp32_evb_k1_lvgl_init(void)
{
    /* Initialize LVGL */
    ESP_LOGD(TAG, "LVGL initialization");

    const lvgl_port_cfg_t lvgl_cfg = {
	.task_priority = 4,	    /* LVGL task priority */
	.task_stack = 4096,	    /* LVGL task stack size */
	.task_affinity = -1,	    /* LVGL task affinity (-1 is no affinity) */
	.task_max_sleep_ms = 500,   /* Maximum sleep in LVGL task */
	.timer_period_ms = 5	    /* LVGL timer tick period in ms */
    };

    ESP_RETURN_ON_ERROR(
	lvgl_port_init(&lvgl_cfg),
	TAG, "LVGL port initialization failed");

    /* Add LCD screen */
    ESP_LOGD(TAG, "Add LCD screen");

    const lvgl_port_display_cfg_t disp_cfg = {
	.io_handle = lcd_io,
	.panel_handle = lcd_panel,
	.buffer_size =
	    EVB_K1_LCD_H_RES * EVB_K1_LCD_DRAW_BUFF_HEIGHT
	    * sizeof(uint16_t),
	.double_buffer = EVB_K1_LCD_DRAW_BUFF_DOUBLE,
	.hres = EVB_K1_LCD_H_RES,
	.vres = EVB_K1_LCD_V_RES,
	.monochrome = false,

	/* Rotation values must be same as used in esp_lcd for initial settings
	   of the screen
	*/
	.rotation = {
	    .swap_xy = false,
	    .mirror_x = EVB_K1_LCD_MIRROR_X,
	    .mirror_y = EVB_K1_LCD_MIRROR_Y,
	},
	.flags = {
	    .buff_dma = true,
	}
    };
    lvgl_disp = lvgl_port_add_disp(&disp_cfg);

    /* Add touch input (for selected screen) */
    ESP_LOGI(TAG, "Add touchscreen");

    const lvgl_port_touch_cfg_t touch_cfg = {
	.disp = lvgl_disp,
	.handle = touch,
    };
    lvgl_touch_indev = lvgl_port_add_touch(&touch_cfg);

    return ESP_OK;
}

/** @return ESP_OK on success, ESP_ERR_xxx otherwise.

    @note There is no error recovery at the moment.  Any failure in this
    function may leave the GUI subsystem partially initialized.
*/
esp_err_t olimex_esp32_evb_k1_gui_init(void)
{
    esp_err_t st;
    /* Just return without logging anything because these functions already
       log an error message when they fail.
    */

    /* LCD initialization */
    if((st = olimex_esp32_evb_k1_lcd_init()) != ESP_OK)  return st;

    /* Touch initialization */
    if((st = olimex_esp32_evb_k1_touch_init()) != ESP_OK)  return st;

    /* LVGL initialization */
    if((st = olimex_esp32_evb_k1_lvgl_init()) != ESP_OK)  return st;

    return ESP_OK;
}
