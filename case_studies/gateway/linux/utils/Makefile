# Makefile for the Linux utilities of the CAN/UDP gateway.
#
# This Makefile performs an out-of-tree native build of the canudp library into
# the $(LIBBLD) directory and then builds the utilities in $(BLD).  The
# variables set with ?= may be overridden by setting their value on the make
# command line or in the environment.

# Root of the canudp library source tree
LIBROOT ?= ../../common/canudp

# Build directory for the library
LIBBLD  ?= build-canudp-$(TARGET)

# Library name
LIBNAME  = $(LIBBLD)/libcanudp.a

# Build directory for the utilities
BLD     ?= build-utils-$(TARGET)

# Other libraries to be used when linking
LDLIBS  += -lrt

# Utilities' source and include directory
SRC      = src
INCLUDE  = include

# Target platform
TARGET  ?= linux

# Construct CFLAGS
CDEFS   ?= -O3
CINCS   ?= -I$(INCLUDE) -I$(LIBROOT)/include -I$(LIBROOT)/include/$(TARGET)
CFLAGS  ?= -Wall -pthread -MD -c $(CDEFS) $(CINCS)

# LDFLAGS must include -pthread when linking with -lrt
LDFLAGS ?= -pthread

# Construct list of source files
SRCS     = $(wildcard $(SRC)/*.c)

# Construct list of object and dependency files from $(SRCS).
OBJS     = $(patsubst $(SRC)/%.c,$(BLD)/%.o,$(SRCS))
DEPS     = $(patsubst $(SRC)/%.c,$(BLD)/%.d,$(SRCS))

# Construct list of executables under the assumption that there is one
# executable for each source file.
EXES     = $(patsubst $(SRC)/%.c,$(BLD)/%,$(SRCS))

# Default target
all: $(EXES)

# Clean by removing the build directories
clean:
	@echo "Removing  $(LIBBLD) $(BLD)"
	@rm -rf $(LIBBLD) $(BLD)

# Build an executable from its object file.  All executables depend on the
# canudp library.  Any prerequisites at the right of the | are order-only
# prerequisites and do not become part of $^.
$(BLD)/%: $(BLD)/%.o $(LIBNAME)
	@echo "Linking   $@"
	@$(CC) $(LDFLAGS) $^ $(LDLIBS) -o $@

# Include dependency files if present.  If they are not present, the
# compiler will be executed unconditionally and will generate them
# while compiling (-MD flag).  The dependency files will then be used
# for subsequent builds.
-include $(DEPS)

# This rule matches files in SRC and its subdirectories
$(BLD)/%.o: $(SRC)/%.c
	@echo "Compiling $<"
	@mkdir -p $(@D)		# Ensure the build directory exists
	@$(CC) $(CFLAGS) -o $@ $<

# Do not remove intermediate .o files created by implicit rule
# chaining, to avoid generating them again when make is run a second
# time.  This would happen because they would now be mentioned
# explicitly in their .d files.
.PRECIOUS: $(BLD)/%.o

# Unconditionally update the canudp library.  Override the default build
# directory name in the canudp Makefile by setting BLD on the command line.
$(LIBNAME): $(BLD)
	@echo "Checking  $@"
	@$(MAKE) -f $(LIBROOT)/Makefile BLD=$(LIBBLD)

.PHONY: $(BLD)
