# CAN/UDP Gateway #

This is a simple CAN/UDP gateway for an ESP32 development board.  It is
discussed in detail as a case study in the book *"Real-Time Embedded
Systems, Open-Source Operating Systems Perspective"*, by Ivan Cibrario
Bertolotti and Gabriele Manduchi, 2nd Edition, CRC Press, Taylor & Francis
Group, 2025.

## Project Directory Tree and Build Control Files ##

The directory tree of the case study consists of three parts, which are
relatively independent from each other but are organized in the same way.
Although a full description of how software build systems work and how to
organize the source code of a non-trivial project would be out of scope here,
we will still provide some general information in the following.

  * The subtree rooted at `common/canudp` contains the source code of the
	*Canudp* library.  This library provides a portable way of broadcasting UDP
	datagrams that encapsulate a CAN frame on a local network
	interface. Symmetrically, it also enables library users to wait for the
	arrival of one of these messages and extract the CAN frame it contains.
	Following a pattern common to the other two parts of the case study, source
	files and headers reside in the `src` and `include` subdirectories
	respectively.

  * An ESP32-specific part at `esp32/gateway`, which contains the
  source code of the gateway.

  * A Linux-specific part located at `linux/utils`, with the source
	code of a simple gateway test program.

## ESP32 Software ##

ESP32 builds are coordinated by the [cmake](https://cmake.org) software build
system, although it is rarely invoked directly because the [Espressif
Integrated Development Framework]( https://docs.espressif.com/projects/esp-idf/
en/stable/esp32) (ESP-IDF) provides higher-level access to it by means of the
`idf.py build` command and a set of ESP32-specific cmake definitions and
functions.

Nevertheless, programmers must still provide part of the information
cmake needs by creating a control file called `CMakeLists.txt`
for the project as a whole and for each software component to be built.
These files must be at the root of the sub-tree of the project or component
they pertain to.  Accordingly, there are three such files in the case study, at
`common/canudp`, `esp32/gateway`, and `esp32/gateway/main`.  More information
about their structure and content is provided in embedded comments.

The component at `esp32/gateway/components/olimex` provides some utility
functions to initialize the various hardware components of an Olimex ESP32-EVB
board, which has been taken as a reference for the case study. These functions
are not discussed in the book, but are included in the source code available
here because they are needed to build the project for that board.

Besides the aforementioned build control files, the ESP32 portion of the
project includes a couple more control files. They provide information on
project configuration and specify further dependencies. Namely:

  * The `Kconfig` file declares configuration items that can be set by means of
	the interactive, menu-based `idf.py menuconfig` command. Each configuration
	item declared in this file is translated into a macro definition during the
	build. Source files can then `#include <sdkconfig.h>` to get access to
	these definitions.

  * Besides local dependencies, a project may also have external
    dependencies. The main difference is that local dependencies are satisfied
    by software components that come as part of the project itself or are part
    of ESP-IDF, whereas external dependencies refer to additional open-source
    software components that can be downloaded from the online [ESP Component
    Registry](https://components.espressif.com). The file `idf_component.yml`
    declares those external dependencies; then, the ESP-IDF build system takes
    care of downloading and caching them automatically as needed.

## Linux Software ##

Unlike on the ESP32, Linux builds are controlled by [GNU
make](http://www.gnu.org/software/make/), which takes instructions from a
`Makefile`. Since the Canudp library must be built on both the ESP32 and Linux,
it comes to no surprise it needs both a `Makefile` and a `CMakeLists.txt`.  The
Linux test program has its own `Makefile` as well. It controls the build of
both the Canudp library, by invoking make recursively on the above `Makefile`,
and the test program itself. As before, more information can be found in the
comments embedded in the files.

## Build Process ##

With all the control files in place, building the gateway and the test program
is very straightforward:

  * To build the gateway, enter the `esp32/gateway` directory. Then, run the
    command `idf.py menuconfig` to configure it and `idf.py build` to build the
    executable firmware image.

  * To build the Linux test program, enter the `linux/utils` directory and run
    `make`.

Interested readers may also build the HTML documentation of the three
components of the case study by running the [doxygen](https://www.doxygen.nl)
tool in `common/canudp`, `esp32/gateway`, and `linux/utils`. The tool saves the
documentation it extracts from the sources files in the `html` subdirectory of
each component.  In all cases, the main page is at `html/index.html`.

The above instructions assume that the ESP-IDF development system has been
installed following the instructions available online and the Linux host in use
has all the tools needed to compile native C-language programs.  To build the
documentation, the doxygen tool must also be installed, usually by means of the
package manager available on most Linux distribution.

## Running the Gateway Firmware ##

After a successful build, the Linux test program can be launched directly, like
any other Linux program.  For what concerns the gateway firmware, ESP-IDF
supports several different ways to upload an application into an ESP32 board
and run it.  For instance:

  * The command `idf.py -p <port> flash` uploads both the second-stage
	bootloader and the application firmware to the board connected to the USB
	serial port `<port>`.

  * The command `idf.py -p <port> monitor` connects the terminal from which it
	has been invoked to the serial console of the board and starts the software
	previously uploaded on it.

Several keyboard shortcuts perform useful functions while the `idf.py monitor`
command is running.  For instance, *Control-H* lists all available shortcuts,
*Control-R* restarts the board, and *Control-]* terminates the command.
