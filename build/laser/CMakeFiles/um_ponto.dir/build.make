# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Desktop/thiago_ros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/thiago_ros/build

# Include any dependencies generated for this target.
include laser/CMakeFiles/um_ponto.dir/depend.make

# Include the progress variables for this target.
include laser/CMakeFiles/um_ponto.dir/progress.make

# Include the compile flags for this target's objects.
include laser/CMakeFiles/um_ponto.dir/flags.make

laser/CMakeFiles/um_ponto.dir/umponto.cpp.o: laser/CMakeFiles/um_ponto.dir/flags.make
laser/CMakeFiles/um_ponto.dir/umponto.cpp.o: /home/pi/Desktop/thiago_ros/src/laser/umponto.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/Desktop/thiago_ros/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object laser/CMakeFiles/um_ponto.dir/umponto.cpp.o"
	cd /home/pi/Desktop/thiago_ros/build/laser && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/um_ponto.dir/umponto.cpp.o -c /home/pi/Desktop/thiago_ros/src/laser/umponto.cpp

laser/CMakeFiles/um_ponto.dir/umponto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/um_ponto.dir/umponto.cpp.i"
	cd /home/pi/Desktop/thiago_ros/build/laser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/Desktop/thiago_ros/src/laser/umponto.cpp > CMakeFiles/um_ponto.dir/umponto.cpp.i

laser/CMakeFiles/um_ponto.dir/umponto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/um_ponto.dir/umponto.cpp.s"
	cd /home/pi/Desktop/thiago_ros/build/laser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/Desktop/thiago_ros/src/laser/umponto.cpp -o CMakeFiles/um_ponto.dir/umponto.cpp.s

laser/CMakeFiles/um_ponto.dir/umponto.cpp.o.requires:
.PHONY : laser/CMakeFiles/um_ponto.dir/umponto.cpp.o.requires

laser/CMakeFiles/um_ponto.dir/umponto.cpp.o.provides: laser/CMakeFiles/um_ponto.dir/umponto.cpp.o.requires
	$(MAKE) -f laser/CMakeFiles/um_ponto.dir/build.make laser/CMakeFiles/um_ponto.dir/umponto.cpp.o.provides.build
.PHONY : laser/CMakeFiles/um_ponto.dir/umponto.cpp.o.provides

laser/CMakeFiles/um_ponto.dir/umponto.cpp.o.provides.build: laser/CMakeFiles/um_ponto.dir/umponto.cpp.o

# Object files for target um_ponto
um_ponto_OBJECTS = \
"CMakeFiles/um_ponto.dir/umponto.cpp.o"

# External object files for target um_ponto
um_ponto_EXTERNAL_OBJECTS =

/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: laser/CMakeFiles/um_ponto.dir/umponto.cpp.o
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: laser/CMakeFiles/um_ponto.dir/build.make
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /opt/ros/indigo/lib/libroscpp.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/lib/libboost_signals-mt.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/lib/libboost_filesystem-mt.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /opt/ros/indigo/lib/librosconsole.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/lib/liblog4cxx.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/lib/libboost_regex-mt.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /opt/ros/indigo/lib/librostime.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/lib/libboost_date_time-mt.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /opt/ros/indigo/lib/libcpp_common.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/lib/libboost_system-mt.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/lib/libboost_thread-mt.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: /usr/local/lib/libconsole_bridge.so
/home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto: laser/CMakeFiles/um_ponto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto"
	cd /home/pi/Desktop/thiago_ros/build/laser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/um_ponto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
laser/CMakeFiles/um_ponto.dir/build: /home/pi/Desktop/thiago_ros/devel/lib/laser/um_ponto
.PHONY : laser/CMakeFiles/um_ponto.dir/build

laser/CMakeFiles/um_ponto.dir/requires: laser/CMakeFiles/um_ponto.dir/umponto.cpp.o.requires
.PHONY : laser/CMakeFiles/um_ponto.dir/requires

laser/CMakeFiles/um_ponto.dir/clean:
	cd /home/pi/Desktop/thiago_ros/build/laser && $(CMAKE_COMMAND) -P CMakeFiles/um_ponto.dir/cmake_clean.cmake
.PHONY : laser/CMakeFiles/um_ponto.dir/clean

laser/CMakeFiles/um_ponto.dir/depend:
	cd /home/pi/Desktop/thiago_ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/thiago_ros/src /home/pi/Desktop/thiago_ros/src/laser /home/pi/Desktop/thiago_ros/build /home/pi/Desktop/thiago_ros/build/laser /home/pi/Desktop/thiago_ros/build/laser/CMakeFiles/um_ponto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : laser/CMakeFiles/um_ponto.dir/depend
