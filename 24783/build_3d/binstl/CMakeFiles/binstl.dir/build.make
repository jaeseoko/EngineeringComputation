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
CMAKE_SOURCE_DIR = /Users/jaeseoko/24783/course_files/3dGraphics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_3d

# Include any dependencies generated for this target.
include binstl/CMakeFiles/binstl.dir/depend.make

# Include the progress variables for this target.
include binstl/CMakeFiles/binstl.dir/progress.make

# Include the compile flags for this target's objects.
include binstl/CMakeFiles/binstl.dir/flags.make

binstl/CMakeFiles/binstl.dir/main.cpp.o: binstl/CMakeFiles/binstl.dir/flags.make
binstl/CMakeFiles/binstl.dir/main.cpp.o: /Users/jaeseoko/24783/course_files/3dGraphics/binstl/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object binstl/CMakeFiles/binstl.dir/main.cpp.o"
	cd /Users/jaeseoko/24783/build_3d/binstl && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binstl.dir/main.cpp.o -c /Users/jaeseoko/24783/course_files/3dGraphics/binstl/main.cpp

binstl/CMakeFiles/binstl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binstl.dir/main.cpp.i"
	cd /Users/jaeseoko/24783/build_3d/binstl && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/course_files/3dGraphics/binstl/main.cpp > CMakeFiles/binstl.dir/main.cpp.i

binstl/CMakeFiles/binstl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binstl.dir/main.cpp.s"
	cd /Users/jaeseoko/24783/build_3d/binstl && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/course_files/3dGraphics/binstl/main.cpp -o CMakeFiles/binstl.dir/main.cpp.s

# Object files for target binstl
binstl_OBJECTS = \
"CMakeFiles/binstl.dir/main.cpp.o"

# External object files for target binstl
binstl_EXTERNAL_OBJECTS =

binstl/binstl.app/Contents/MacOS/binstl: binstl/CMakeFiles/binstl.dir/main.cpp.o
binstl/binstl.app/Contents/MacOS/binstl: binstl/CMakeFiles/binstl.dir/build.make
binstl/binstl.app/Contents/MacOS/binstl: public/fssimplewindow/src/libfssimplewindow.a
binstl/binstl.app/Contents/MacOS/binstl: public/ysclass/src/libysclass.a
binstl/binstl.app/Contents/MacOS/binstl: public/ysbitmapfont/src/libysbitmapfont.a
binstl/binstl.app/Contents/MacOS/binstl: binstl/libbinstllib.a
binstl/binstl.app/Contents/MacOS/binstl: public/ysgl/src/libysgl.a
binstl/binstl.app/Contents/MacOS/binstl: binstl/CMakeFiles/binstl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable binstl.app/Contents/MacOS/binstl"
	cd /Users/jaeseoko/24783/build_3d/binstl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binstl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
binstl/CMakeFiles/binstl.dir/build: binstl/binstl.app/Contents/MacOS/binstl

.PHONY : binstl/CMakeFiles/binstl.dir/build

binstl/CMakeFiles/binstl.dir/clean:
	cd /Users/jaeseoko/24783/build_3d/binstl && $(CMAKE_COMMAND) -P CMakeFiles/binstl.dir/cmake_clean.cmake
.PHONY : binstl/CMakeFiles/binstl.dir/clean

binstl/CMakeFiles/binstl.dir/depend:
	cd /Users/jaeseoko/24783/build_3d && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/course_files/3dGraphics /Users/jaeseoko/24783/course_files/3dGraphics/binstl /Users/jaeseoko/24783/build_3d /Users/jaeseoko/24783/build_3d/binstl /Users/jaeseoko/24783/build_3d/binstl/CMakeFiles/binstl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : binstl/CMakeFiles/binstl.dir/depend

