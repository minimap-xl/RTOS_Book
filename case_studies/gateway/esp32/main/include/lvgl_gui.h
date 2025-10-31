/** @file
    @brief LVGL-Based Graphical User Interface, header.

    @defgroup lvgl_gui Graphical User Interface (GUI)
    @{
*/

#ifndef LVGL_GUI
#define LVGL_GUI

#include <udp_port.h>
#include <can_port.h>

/** Status code returned by most GUI functions.
*/
enum Lvgl_gui_st {
    LVGL_GUI_ST_OK,		/**< Successful completion */
    LVGL_GUI_ST_UNIMPL,		/**< Function not properly implemented */
    LVGL_GUI_ST_FREERTOS,	/**< FreeRTOS error */
    LVGL_GUI_ST_OOM		/**< Out of memory */
};

#ifdef __cplusplus
extern "C" {
#endif

    /** Initialize the GUI. */
    enum Lvgl_gui_st lvgl_gui_init(
	struct Udp_port_ctx *udp_ctx,
	struct Can_port_ctx *can_ctx);

    /** Wait for the GUI to terminate. */
    enum Lvgl_gui_st lvgl_gui_wait_for_termination(void);

    /** Destroy the GUI. */
    enum Lvgl_gui_st lvgl_gui_destroy(void);

#ifdef __cplusplus
}
#endif
#endif

/** @} */
