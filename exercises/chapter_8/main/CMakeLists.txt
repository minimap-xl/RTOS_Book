# This CMakeLists.txt controls the build of the CAN/UDP gateway.

idf_component_register(
  SRC_DIRS src)

target_compile_options(${COMPONENT_LIB} PRIVATE -Wall)
