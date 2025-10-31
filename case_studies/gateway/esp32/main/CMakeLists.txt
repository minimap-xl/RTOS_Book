# This CMakeLists.txt controls the build of the CAN/UDP gateway.

idf_component_register(
  SRC_DIRS src
  PRIV_INCLUDE_DIRS include
  REQUIRES canudp olimex)

target_compile_options(${COMPONENT_LIB} PRIVATE -Wall)
