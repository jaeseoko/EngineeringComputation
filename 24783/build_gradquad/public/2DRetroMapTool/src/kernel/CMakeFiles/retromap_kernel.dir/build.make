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
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_gradquad

# Include any dependencies generated for this target.
include public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/depend.make

# Include the progress variables for this target.
include public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/progress.make

# Include the compile flags for this target's objects.
include public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/flags.make

public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data.cpp.o: public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/flags.make
public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data.cpp.o: /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel/retromap_data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_gradquad/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data.cpp.o"
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/retromap_kernel.dir/retromap_data.cpp.o -c /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel/retromap_data.cpp

public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/retromap_kernel.dir/retromap_data.cpp.i"
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel/retromap_data.cpp > CMakeFiles/retromap_kernel.dir/retromap_data.cpp.i

public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/retromap_kernel.dir/retromap_data.cpp.s"
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel/retromap_data.cpp -o CMakeFiles/retromap_kernel.dir/retromap_data.cpp.s

public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.o: public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/flags.make
public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.o: /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel/retromap_data_io.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_gradquad/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.o"
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.o -c /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel/retromap_data_io.cpp

public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.i"
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel/retromap_data_io.cpp > CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.i

public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.s"
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel/retromap_data_io.cpp -o CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.s

# Object files for target retromap_kernel
retromap_kernel_OBJECTS = \
"CMakeFiles/retromap_kernel.dir/retromap_data.cpp.o" \
"CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.o"

# External object files for target retromap_kernel
retromap_kernel_EXTERNAL_OBJECTS =

public/2DRetroMapTool/src/kernel/libretromap_kernel.a: public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data.cpp.o
public/2DRetroMapTool/src/kernel/libretromap_kernel.a: public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/retromap_data_io.cpp.o
public/2DRetroMapTool/src/kernel/libretromap_kernel.a: public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/build.make
public/2DRetroMapTool/src/kernel/libretromap_kernel.a: public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_gradquad/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libretromap_kernel.a"
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && $(CMAKE_COMMAND) -P CMakeFiles/retromap_kernel.dir/cmake_clean_target.cmake
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/retromap_kernel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/build: public/2DRetroMapTool/src/kernel/libretromap_kernel.a

.PHONY : public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/build

public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/clean:
	cd /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel && $(CMAKE_COMMAND) -P CMakeFiles/retromap_kernel.dir/cmake_clean.cmake
.PHONY : public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/clean

public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/depend:
	cd /Users/jaeseoko/24783/build_gradquad && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/course_files/3dGraphics /Users/jaeseoko/24783/public/src/2DRetroMapTool/src/kernel /Users/jaeseoko/24783/build_gradquad /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel /Users/jaeseoko/24783/build_gradquad/public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/2DRetroMapTool/src/kernel/CMakeFiles/retromap_kernel.dir/depend

