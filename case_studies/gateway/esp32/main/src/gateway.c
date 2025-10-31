/** @file
    @brief CAN/UDP gateway, main progrm

*/

#include <sdkconfig.h>
#include <esp_err.h>
#include <esp_check.h>
#include <esp_log.h>		/* ESP_LOGx() */
#include "olimex.h"
#include "can_port.h"
#include "udp_port.h"
#include "lvgl_gui.h"

static const char *TAG = "gateway";  /**< Module name for logging */

/** This function starts the gateway and keeps it running for about 100*500ms
    when no GUI is available.
*/
void start_no_gui(
    struct Udp_port_ctx *udp_ctx,
    struct Can_port_ctx *can_ctx)
{
    enum Can_port_st can_st = can_port_start(can_ctx, udp_ctx);
    if(can_st != CAN_PORT_ST_OK)
	ESP_LOGW(TAG, "can_port_start failed (%d)", can_st);
    else
    {
	enum Udp_port_st udp_st = udp_port_start(udp_ctx, can_ctx);
	if(udp_st != UDP_PORT_ST_OK)
	    ESP_LOGW(TAG, "udp_port_start failed (%d)", udp_st);
	else
	{
	    ESP_LOGI(TAG, "waiting...");
	    for(int i=0; i<100; i++)
	    {
		char b[128];
		enum Can_port_state can_state;
		enum Udp_port_state udp_state;
		struct Port_stats stats;
		if((can_st = can_port_stats(can_ctx, &can_state, &stats))
		   != CAN_PORT_ST_OK)
		    ESP_LOGW(TAG, "can_port_stats failed (%d)", can_st);
		else
		{
		    snprintf_stats(b, sizeof(b), "CAN", &stats);
		    fprintf(stderr, "State %d, %s\n", can_state, b);
		}
		if((udp_st = udp_port_stats(udp_ctx, &udp_state, &stats))
		   != UDP_PORT_ST_OK)
		    ESP_LOGW(TAG, "udp_port_stats failed (%d)", can_st);
		else
		{
		    snprintf_stats(b, sizeof(b), "UDP", &stats);
		    fprintf(stderr, "State %d, %s\n\n", udp_state, b);
		}
		vTaskDelay(500);
	    }

	    ESP_LOGI(TAG, "...no longer waiting");
	    if((udp_st = udp_port_stop(udp_ctx)) != UDP_PORT_ST_OK)
		ESP_LOGW(TAG, "udp_port_stop failed (%d)", udp_st);
	}

	if((can_st = can_port_stop(can_ctx)) != CAN_PORT_ST_OK)
	    ESP_LOGW(TAG, "can_port_stop failed (%d)", can_st);
    }
}

/** This function starts the gateway when the GUI is available.  In this case,
    the GUI controls everything and here we just wait for it to terminate.
*/
void start_gui(void)
{
    if(lvgl_gui_wait_for_termination() != LVGL_GUI_ST_OK)
	ESP_LOGW(TAG, "GUI termination failed");

    ESP_LOGI(TAG, "Terminating");
    if(lvgl_gui_destroy() != LVGL_GUI_ST_OK)
	ESP_LOGW(TAG, "Could not destroy the GUI");
}

void app_main(void)
{
    bool no_gui = false;
    if(olimex_esp32_evb_k1_gui_init() != ESP_OK)
    {
	ESP_LOGW(TAG, "GUI low-level init failed");
	no_gui = true;
    }
    else
	ESP_LOGI(TAG, "GUI low-level init completed");

    /* Set the gateway IP to our own IP address, we don't want to use a real
       gateway.
    */
    esp_netif_ip_info_t ip_info;
    ESP_ERROR_CHECK(esp_netif_str_to_ip4(CONFIG_GW_IP,  &ip_info.ip));
    ESP_ERROR_CHECK(
	esp_netif_str_to_ip4(CONFIG_GW_NETMASK, &ip_info.netmask));
    ESP_ERROR_CHECK(esp_netif_str_to_ip4(CONFIG_GW_IP, &ip_info.gw));
    olimex_esp32_eth_init_static_ip(&ip_info);
    ESP_LOGI(TAG, "Ethernet init completed");

    struct Can_port_ctx can_ctx;
    enum Can_port_st can_st = can_port_init(&can_ctx);

    if(can_st != CAN_PORT_ST_OK)
	ESP_LOGW(TAG, "can_port_init failed (%d)", can_st);
    else
    {
	const struct Canudp_config canudp_config = {
	    .if_name = CONFIG_GW_UDP_IF_NAME,
	    .udp_port = CONFIG_GW_UDP_PORT
	};

	struct Udp_port_ctx udp_ctx;
	enum Udp_port_st udp_st = udp_port_init(&udp_ctx, &canudp_config);

	if(udp_st != UDP_PORT_ST_OK)
	    ESP_LOGW(TAG, "udp_port_init failed (%d)", udp_st);
	else
	{
	    if(no_gui == true ||
	       lvgl_gui_init(&udp_ctx, &can_ctx) != LVGL_GUI_ST_OK)
	    {
		ESP_LOGW(TAG, "GUI high-level init failed");
		start_no_gui(&udp_ctx, &can_ctx);
		no_gui = true;
	    }
	    else
	    {
		ESP_LOGI(TAG, "GUI high-level init completed");
		start_gui();
	    }

	    if((udp_st = udp_port_destroy(&udp_ctx)) != UDP_PORT_ST_OK)
		ESP_LOGW(TAG, "udp_port_destroy failed (%d)", udp_st);
	}

	if((can_st = can_port_destroy(&can_ctx)) != CAN_PORT_ST_OK)
	    ESP_LOGW(TAG, "can_port_destroy failed (%d)", can_st);
    }
}
