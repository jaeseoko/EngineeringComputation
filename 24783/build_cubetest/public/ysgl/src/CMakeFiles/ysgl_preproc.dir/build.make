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
CMAKE_SOURCE_DIR = /Users/jaeseoko/24783/cubetest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_cubetest

# Include any dependencies generated for this target.
include public/ysgl/src/CMakeFiles/ysgl_preproc.dir/depend.make

# Include the progress variables for this target.
include public/ysgl/src/CMakeFiles/ysgl_preproc.dir/progress.make

# Include the compile flags for this target's objects.
include public/ysgl/src/CMakeFiles/ysgl_preproc.dir/flags.make

public/ysgl/src/CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.o: public/ysgl/src/CMakeFiles/ysgl_preproc.dir/flags.make
public/ysgl/src/CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.o: /Users/jaeseoko/24783/public/src/ysgl/src/glsl_src/preproc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_cubetest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/ysgl/src/CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.o"
	cd /Users/jaeseoko/24783/build_cubetest/public/ysgl/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.o -c /Users/jaeseoko/24783/public/src/ysgl/src/glsl_src/preproc.cpp

public/ysgl/src/CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.i"
	cd /Users/jaeseoko/24783/build_cubetest/public/ysgl/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/ysgl/src/glsl_src/preproc.cpp > CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.i

public/ysgl/src/CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.s"
	cd /Users/jaeseoko/24783/build_cubetest/public/ysgl/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/ysgl/src/glsl_src/preproc.cpp -o CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.s

# Object files for target ysgl_preproc
ysgl_preproc_OBJECTS = \
"CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.o"

# External object files for target ysgl_preproc
ysgl_preproc_EXTERNAL_OBJECTS =

exe/ysgl_preproc: public/ysgl/src/CMakeFiles/ysgl_preproc.dir/glsl_src/preproc.cpp.o
exe/ysgl_preproc: public/ysgl/src/CMakeFiles/ysgl_preproc.dir/build.make
exe/ysgl_preproc: public/ysclass/src/libysclass.a
exe/ysgl_preproc: public/ysgl/src/CMakeFiles/ysgl_preproc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_cubetest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../exe/ysgl_preproc"
	cd /Users/jaeseoko/24783/build_cubetest/public/ysgl/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ysgl_preproc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/ysgl/src/CMakeFiles/ysgl_preproc.dir/build: exe/ysgl_preproc

.PHONY : public/ysgl/src/CMakeFiles/ysgl_preproc.dir/build

public/ysgl/src/CMakeFiles/ysgl_preproc.dir/clean:
	cd /Users/jaeseoko/24783/build_cubetest/public/ysgl/src && $(CMAKE_COMMAND) -P CMakeFiles/ysgl_preproc.dir/cmake_clean.cmake
.PHONY : public/ysgl/src/CMakeFiles/ysgl_preproc.dir/clean

public/ysgl/src/CMakeFiles/ysgl_preproc.dir/depend:
	cd /Users/jaeseoko/24783/build_cubetest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/cubetest /Users/jaeseoko/24783/public/src/ysgl/src /Users/jaeseoko/24783/build_cubetest /Users/jaeseoko/24783/build_cubetest/public/ysgl/src /Users/jaeseoko/24783/build_cubetest/public/ysgl/src/CMakeFiles/ysgl_preproc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/ysgl/src/CMakeFiles/ysgl_preproc.dir/depend

