/** @file
    @brief Per-port statistics, implementation.

*/

#include <stdio.h>
#include "port_stats.h"

void clear_port_stats(
    struct Port_stats *stats	/**< Pointer to the struct to be cleared */
    )
{
    const struct Port_stats zero = { 0 };
    *stats = zero;
}

/** @details This function puts into @p s a human-readable representation of
    the statistics pointed by @p stats, without writing more than @p size
    characters, including the terminating '\0'.  Argument @p name is included
    in the output as well.

    @return Same as snprintf()
*/
int snprintf_stats(
    char *s,			/**< Output string */
    size_t size,		/**< Size of @p s in bytes */
    const char *name,		/**< Human-readable name of @p stats */
    const struct Port_stats *stats /**< Statistics to be printed */
    )
{
    return snprintf(
	s, size,
	"%s: rx/tx/fw %10u/%10u/%10u, err %10u/%10u/%10u, drop %10u",
	name,
	stats->rx, stats->tx, stats->fw,
	stats->rx_err, stats->tx_err, stats->fw_err,
	stats->tx_drop);
}
