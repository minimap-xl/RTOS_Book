/** @file

    Target-dependent header for Linux.  This header contains
    information specific to the target operating system and protocol
    stack.

    @note This header should not be included directly.  Include
    canudp.h instead.

    @defgroup linux Linux-specific documentation
    @{
*/

#include <sys/ioctl.h>
#include <net/if.h>

/** Size of a network interface name, in chars. */
#define CANUDP_IFNAMSIZ IFNAMSIZ

/** @} */
