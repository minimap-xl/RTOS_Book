/** @file
    @brief Ethernet support code for Olimex ESP32 boards, implementation.
*/

#include "esp_check.h"
#include "esp_event.h"
#include "esp_eth.h"
#include "esp_mac.h"
#include "esp_eth_driver.h"
#include "driver/gpio.h"
#include "olimex.h"

/** @name ESP32-EVB-K1 board PHY settings.

    These settings determine how the Ethernet PHY is connected to the Ethernet
    controller.  They are specific to the Olimex ESP32-EVB-K1 board.

    @{
*/
#define PHY_ADDR  0x00		/**< SMI address of the PHY. */
#define RST_GPIO  GPIO_NUM_NC	/**< GPIO connected to the PHY NRST pin (NC). */
#define MDC_GPIO  GPIO_NUM_23	/**< MD clock line. */
#define MDIO_GPIO GPIO_NUM_18	/**< MD I/O line. */

/** @} */

#if 0				      /* TBD: No logging for now */
static const char *TAG = "ESP32 Eth"; /**< Tag for logging */
#endif

/** @details This function initializes the internal Ethernet interface of the
    ESP32-EVB-K1 with the static IP address, netmask, and gateway found in @p
    ip_info.

    @note This function returns an error code, but currently it is always
    ESP_OK.  Errors are caught by means of ESP_ERROR_CHECK(), which aborts the
    program upon failure.  This function currently does not attempt any form of
    error recovery and may leave the lwIP/Ethernet subsystem partially
    initialized upon failure.

    @return ESP_OK on success, ESP_ERR_xxx otherwise.
*/
esp_err_t olimex_esp32_eth_init_static_ip(
    const esp_netif_ip_info_t *ip_info
    )
{
    /* U8 on the Olimex ESP32-EVB may disable the Ethernet clock for up to
       470ms after power-up or reset.
    */
    vTaskDelay(pdMS_TO_TICKS(500));

    /* PHY */
    eth_phy_config_t phy_config = ETH_PHY_DEFAULT_CONFIG();
    phy_config.phy_addr = PHY_ADDR;
    phy_config.reset_gpio_num = RST_GPIO;
    esp_eth_phy_t *phy = esp_eth_phy_new_lan87xx(&phy_config);

    /* MAC */
    eth_mac_config_t mac_config = ETH_MAC_DEFAULT_CONFIG();
    eth_esp32_emac_config_t esp32_emac_config = ETH_ESP32_EMAC_DEFAULT_CONFIG();
    esp32_emac_config.smi_mdc_gpio_num = MDC_GPIO;
    esp32_emac_config.smi_mdio_gpio_num = MDIO_GPIO;
    esp_eth_mac_t *mac = esp_eth_mac_new_esp32(&esp32_emac_config, &mac_config);

    /* Ethernet driver */
    esp_eth_handle_t eth_handle = NULL;
    esp_eth_config_t eth_config = ETH_DEFAULT_CONFIG(mac, phy);
    ESP_ERROR_CHECK(esp_eth_driver_install(&eth_config, &eth_handle));

    /* Netif */
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    esp_netif_config_t netif_config = ESP_NETIF_DEFAULT_ETH();
    esp_netif_t *eth_netif = esp_netif_new(&netif_config);
    ESP_ERROR_CHECK(esp_netif_dhcpc_stop(eth_netif));
    ESP_ERROR_CHECK(esp_netif_set_ip_info(eth_netif, ip_info));
    ESP_ERROR_CHECK(
	esp_netif_attach(eth_netif, esp_eth_new_netif_glue(eth_handle)));
    ESP_ERROR_CHECK(esp_eth_start(eth_handle));

    return ESP_OK;
}
