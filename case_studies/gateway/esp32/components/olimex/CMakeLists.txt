# This CMakeLists.txt controls the build of the 'olimex' component.  It
# contains a set of utility functions for Olimex ESP32 boards.

idf_component_register(
  SRC_DIRS src
  INCLUDE_DIRS include
  REQUIRES esp_lcd_touch esp_lcd_ili9341 esp_lvgl_port esp_netif esp_eth)

target_compile_options(${COMPONENT_LIB} PRIVATE -Wall)
