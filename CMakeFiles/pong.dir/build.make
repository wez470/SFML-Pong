# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/weston/Code/C++/Pong

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/weston/Code/C++/Pong

# Include any dependencies generated for this target.
include CMakeFiles/pong.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pong.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pong.dir/flags.make

CMakeFiles/pong.dir/src/main.cpp.o: CMakeFiles/pong.dir/flags.make
CMakeFiles/pong.dir/src/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/weston/Code/C++/Pong/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pong.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong.dir/src/main.cpp.o -c /home/weston/Code/C++/Pong/src/main.cpp

CMakeFiles/pong.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/weston/Code/C++/Pong/src/main.cpp > CMakeFiles/pong.dir/src/main.cpp.i

CMakeFiles/pong.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/weston/Code/C++/Pong/src/main.cpp -o CMakeFiles/pong.dir/src/main.cpp.s

CMakeFiles/pong.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/pong.dir/src/main.cpp.o.requires

CMakeFiles/pong.dir/src/main.cpp.o.provides: CMakeFiles/pong.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/pong.dir/src/main.cpp.o.provides

CMakeFiles/pong.dir/src/main.cpp.o.provides.build: CMakeFiles/pong.dir/src/main.cpp.o


# Object files for target pong
pong_OBJECTS = \
"CMakeFiles/pong.dir/src/main.cpp.o"

# External object files for target pong
pong_EXTERNAL_OBJECTS =

pong: CMakeFiles/pong.dir/src/main.cpp.o
pong: CMakeFiles/pong.dir/build.make
pong: /usr/lib/x86_64-linux-gnu/libsfml-system.so
pong: /usr/lib/x86_64-linux-gnu/libsfml-window.so
pong: /usr/lib/x86_64-linux-gnu/libsfml-graphics.so
pong: /usr/lib/x86_64-linux-gnu/libsfml-network.so
pong: /usr/lib/x86_64-linux-gnu/libsfml-audio.so
pong: CMakeFiles/pong.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/weston/Code/C++/Pong/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pong"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pong.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pong.dir/build: pong

.PHONY : CMakeFiles/pong.dir/build

CMakeFiles/pong.dir/requires: CMakeFiles/pong.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/pong.dir/requires

CMakeFiles/pong.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pong.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pong.dir/clean

CMakeFiles/pong.dir/depend:
	cd /home/weston/Code/C++/Pong && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/weston/Code/C++/Pong /home/weston/Code/C++/Pong /home/weston/Code/C++/Pong /home/weston/Code/C++/Pong /home/weston/Code/C++/Pong/CMakeFiles/pong.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pong.dir/depend

