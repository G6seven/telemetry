# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/g6seven/Documents/dev/telemetry

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/g6seven/Documents/dev/telemetry/build

# Include any dependencies generated for this target.
include CMakeFiles/RaceTelemetry.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RaceTelemetry.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RaceTelemetry.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RaceTelemetry.dir/flags.make

CMakeFiles/RaceTelemetry.dir/src/main.cpp.o: CMakeFiles/RaceTelemetry.dir/flags.make
CMakeFiles/RaceTelemetry.dir/src/main.cpp.o: /home/g6seven/Documents/dev/telemetry/src/main.cpp
CMakeFiles/RaceTelemetry.dir/src/main.cpp.o: CMakeFiles/RaceTelemetry.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/g6seven/Documents/dev/telemetry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RaceTelemetry.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaceTelemetry.dir/src/main.cpp.o -MF CMakeFiles/RaceTelemetry.dir/src/main.cpp.o.d -o CMakeFiles/RaceTelemetry.dir/src/main.cpp.o -c /home/g6seven/Documents/dev/telemetry/src/main.cpp

CMakeFiles/RaceTelemetry.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaceTelemetry.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/g6seven/Documents/dev/telemetry/src/main.cpp > CMakeFiles/RaceTelemetry.dir/src/main.cpp.i

CMakeFiles/RaceTelemetry.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaceTelemetry.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/g6seven/Documents/dev/telemetry/src/main.cpp -o CMakeFiles/RaceTelemetry.dir/src/main.cpp.s

# Object files for target RaceTelemetry
RaceTelemetry_OBJECTS = \
"CMakeFiles/RaceTelemetry.dir/src/main.cpp.o"

# External object files for target RaceTelemetry
RaceTelemetry_EXTERNAL_OBJECTS =

RaceTelemetry: CMakeFiles/RaceTelemetry.dir/src/main.cpp.o
RaceTelemetry: CMakeFiles/RaceTelemetry.dir/build.make
RaceTelemetry: CMakeFiles/RaceTelemetry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/g6seven/Documents/dev/telemetry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RaceTelemetry"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RaceTelemetry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RaceTelemetry.dir/build: RaceTelemetry
.PHONY : CMakeFiles/RaceTelemetry.dir/build

CMakeFiles/RaceTelemetry.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RaceTelemetry.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RaceTelemetry.dir/clean

CMakeFiles/RaceTelemetry.dir/depend:
	cd /home/g6seven/Documents/dev/telemetry/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/g6seven/Documents/dev/telemetry /home/g6seven/Documents/dev/telemetry /home/g6seven/Documents/dev/telemetry/build /home/g6seven/Documents/dev/telemetry/build /home/g6seven/Documents/dev/telemetry/build/CMakeFiles/RaceTelemetry.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/RaceTelemetry.dir/depend

