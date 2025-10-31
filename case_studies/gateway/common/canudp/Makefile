# Makefile to build the canudp library on Linux.
#
# This Makefile performs an out-of-tree native build of the library into the
# $(BLD) directory.  The variables set with ?= may be overridden by setting
# their value on the make command line or in the environment.

# Build directory for out-of-tree builds.  By default the directory
# name depends on the target platform to support multiple build trees
# for different platforms under the same root.
BLD     ?= build-$(TARGET)

# Top-level source and include directories.  If this Makefile is
# invoked as <path>/Makefile, these directories are set relative to
# <path> to support completely out-of-tree builds.
SRCROOT  = $(dir $(firstword $(MAKEFILE_LIST)))
SRC      = $(SRCROOT)src
INCLUDE  = $(SRCROOT)include

# Target platform
TARGET  ?= linux

# Construct CFLAGS
CDEFS   ?= -O3
CINCS   ?= -I$(INCLUDE) -I$(INCLUDE)/$(TARGET)
CFLAGS  ?= -Wall -pthread -MD -c $(CDEFS) $(CINCS)

# Add 's' to the standard 'rv' flags that make uses to add the archive index
ARFLAGS ?= rvs

# Construct list of source files
SRCS     = $(wildcard $(SRC)/*.c) $(wildcard $(SRC)/$(TARGET)/*.c)

# Construct list of object and dependency files from $(SRCS)
OBJS     = $(patsubst $(SRC)/%.c,$(BLD)/%.o,$(SRCS))
DEPS     = $(patsubst $(SRC)/%.c,$(BLD)/%.d,$(SRCS))

# Library name
LIB      = $(BLD)/libcanudp.a

# Default target
all: $(LIB)

# Clean by removing the whole build directory
clean:
	rm -rf $(BLD)

# Build the library from the object files
$(LIB): $(OBJS)
	@echo "Updating  $@"
	@mkdir -p $(@D)		# Ensure the build directory exists
	@$(AR) $(ARFLAGS) $@ $?

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
