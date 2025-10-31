# This CMakeLists.txt controls the build of the CAN/UDP gateway project.

# For more information about build system see
# https://docs.espressif.com/projects/esp-idf/en/latest/api-guides/build-system.html
cmake_minimum_required(VERSION 3.16)

# Reduce build time by setting COMPONENTS to build only main plus its
# dependencies.
set(COMPONENTS main)

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(CAN_UDP_Gateway)
