# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jaeseoko/24783/jaeseoko/ps4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_ps4

# Include any dependencies generated for this target.
include public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/depend.make

# Include the progress variables for this target.
include public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/progress.make

# Include the compile flags for this target's objects.
include public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/flags.make

public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.o: public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/flags.make
public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.o: /Users/jaeseoko/24783/public/src/fssimplewindow/samples/sample03-mouse/sample03-mouse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_ps4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.o"
	cd /Users/jaeseoko/24783/build_ps4/public/fssimplewindow/samples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.o -c /Users/jaeseoko/24783/public/src/fssimplewindow/samples/sample03-mouse/sample03-mouse.cpp

public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.i"
	cd /Users/jaeseoko/24783/build_ps4/public/fssimplewindow/samples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/fssimplewindow/samples/sample03-mouse/sample03-mouse.cpp > CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.i

public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.s"
	cd /Users/jaeseoko/24783/build_ps4/public/fssimplewindow/samples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/fssimplewindow/samples/sample03-mouse/sample03-mouse.cpp -o CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.s

# Object files for target sample03-mouse
sample03__mouse_OBJECTS = \
"CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.o"

# External object files for target sample03-mouse
sample03__mouse_EXTERNAL_OBJECTS =

public/fssimplewindow/samples/sample03-mouse.app/Contents/MacOS/sample03-mouse: public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/sample03-mouse/sample03-mouse.cpp.o
public/fssimplewindow/samples/sample03-mouse.app/Contents/MacOS/sample03-mouse: public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/build.make
public/fssimplewindow/samples/sample03-mouse.app/Contents/MacOS/sample03-mouse: public/fssimplewindow/src/libfssimplewindow.a
public/fssimplewindow/samples/sample03-mouse.app/Contents/MacOS/sample03-mouse: public/ysbitmapfont/src/libysbitmapfont.a
public/fssimplewindow/samples/sample03-mouse.app/Contents/MacOS/sample03-mouse: public/ysgl/src/libysgl.a
public/fssimplewindow/samples/sample03-mouse.app/Contents/MacOS/sample03-mouse: public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_ps4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample03-mouse.app/Contents/MacOS/sample03-mouse"
	cd /Users/jaeseoko/24783/build_ps4/public/fssimplewindow/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample03-mouse.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/build: public/fssimplewindow/samples/sample03-mouse.app/Contents/MacOS/sample03-mouse

.PHONY : public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/build

public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/clean:
	cd /Users/jaeseoko/24783/build_ps4/public/fssimplewindow/samples && $(CMAKE_COMMAND) -P CMakeFiles/sample03-mouse.dir/cmake_clean.cmake
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/clean

public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/depend:
	cd /Users/jaeseoko/24783/build_ps4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/jaeseoko/ps4 /Users/jaeseoko/24783/public/src/fssimplewindow/samples /Users/jaeseoko/24783/build_ps4 /Users/jaeseoko/24783/build_ps4/public/fssimplewindow/samples /Users/jaeseoko/24783/build_ps4/public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample03-mouse.dir/depend

