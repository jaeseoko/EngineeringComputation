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
CMAKE_SOURCE_DIR = /Users/jaeseoko/24783/jaeseoko/ps7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_ps7

# Include any dependencies generated for this target.
include CMakeFiles/ps7lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ps7lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ps7lib.dir/flags.make

CMakeFiles/ps7lib.dir/ps7lib.cpp.o: CMakeFiles/ps7lib.dir/flags.make
CMakeFiles/ps7lib.dir/ps7lib.cpp.o: /Users/jaeseoko/24783/jaeseoko/ps7/ps7lib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_ps7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ps7lib.dir/ps7lib.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ps7lib.dir/ps7lib.cpp.o -c /Users/jaeseoko/24783/jaeseoko/ps7/ps7lib.cpp

CMakeFiles/ps7lib.dir/ps7lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ps7lib.dir/ps7lib.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/jaeseoko/ps7/ps7lib.cpp > CMakeFiles/ps7lib.dir/ps7lib.cpp.i

CMakeFiles/ps7lib.dir/ps7lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ps7lib.dir/ps7lib.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/jaeseoko/ps7/ps7lib.cpp -o CMakeFiles/ps7lib.dir/ps7lib.cpp.s

# Object files for target ps7lib
ps7lib_OBJECTS = \
"CMakeFiles/ps7lib.dir/ps7lib.cpp.o"

# External object files for target ps7lib
ps7lib_EXTERNAL_OBJECTS =

libps7lib.a: CMakeFiles/ps7lib.dir/ps7lib.cpp.o
libps7lib.a: CMakeFiles/ps7lib.dir/build.make
libps7lib.a: CMakeFiles/ps7lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_ps7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libps7lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ps7lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ps7lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ps7lib.dir/build: libps7lib.a

.PHONY : CMakeFiles/ps7lib.dir/build

CMakeFiles/ps7lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ps7lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ps7lib.dir/clean

CMakeFiles/ps7lib.dir/depend:
	cd /Users/jaeseoko/24783/build_ps7 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/jaeseoko/ps7 /Users/jaeseoko/24783/jaeseoko/ps7 /Users/jaeseoko/24783/build_ps7 /Users/jaeseoko/24783/build_ps7 /Users/jaeseoko/24783/build_ps7/CMakeFiles/ps7lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ps7lib.dir/depend

