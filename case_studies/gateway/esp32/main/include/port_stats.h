/** @file
    @brief Per-port statistics, header.

    @defgroup port_stats Gateway, per-port statistics
    @{

*/

#ifndef PORT_STATS_H
#define PORT_STATS_H

#include <sys/types.h>

/** This structure stores some statistics about a gateway port.  Statistics are
    the same for both CAN and UDP ports.

    - ::rx counts the number of messages received from the port

    - ::tx counts the number of messages transmitted on the port

    - ::fw counts the number of messages send to the other port for forwarding

    - ::rx_err counts the number of receive errors on the port

    - ::tx_err counts the number of transmit errors on the port

    - ::tx_drop count the number of messages send from the other port to this
      port for forwarding and were dropped because the forwarding queue was
      full.

    - ::fw_err counts the number of errors the other port reported when this
      port tried to forward a message to it
*/
struct Port_stats {
    unsigned rx; /**< Number of successfully received messages */
    unsigned tx; /**< Number of successfully transmitted messages */
    unsigned fw; /**< Number of successfully forwarded messages */
    unsigned rx_err;		/**< Number of receive errors */
    unsigned tx_err;		/**< Number of transmit errors */
    unsigned tx_drop;		/**< Number of dropped messages */
    unsigned fw_err;		/**< Number of forwarding errors */
};

#ifdef __cplusplus
extern "C" {
#endif

    /** Clear statistics to all zeros */
    void clear_port_stats(struct Port_stats *stats);

    /** Print statistics into a string */
    int snprintf_stats(
	char *s, size_t size, const char *name, const struct Port_stats *stats);

#ifdef __cplusplus
}
#endif
#endif

/** @} */
