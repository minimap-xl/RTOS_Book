# This CMakeLists.txt controls the build of the canudp library as an ESP-IDF
# component.

idf_component_register(
  SRC_DIRS src src/esp32
  INCLUDE_DIRS include include/esp32
  REQUIRES lwip esp_netif
)

# Use -Wall as for the Linux build (see the Makefile).  The optimization level
# is set to -O3 by default in the Linux Makefile, but it is not explicitly
# mentioned here because the ESP-IDF COMPILER_OPTIMIZATION configuration option
# determines the optimization level of the whole application.

target_compile_options(${COMPONENT_LIB} PRIVATE -Wall)
