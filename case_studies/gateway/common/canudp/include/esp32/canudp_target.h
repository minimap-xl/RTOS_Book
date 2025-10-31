/** @file

    Target-dependent header for ESP32/lwIP.  This header contains
    information specific to the target operating system and protocol
    stack.

    @note This header should not be included directly.  Include
    canudp.h instead.

    @defgroup esp32 ESP32/lwIP-specific documentation
    @{
*/

#include "esp_netif.h"

/** Size of a network interface name, in chars.  From the ESP-IDF documentation
    v5.1.1, p. 988: "Interface name as specified in underlying TCP/IP
    stack. Note that the actual name will be copied to the specified buffer,
    which must be allocated to hold maximum interface name size (6 characters
    for lwIP)"
*/
#define CANUDP_IFNAMSIZ 8

/** @} */
