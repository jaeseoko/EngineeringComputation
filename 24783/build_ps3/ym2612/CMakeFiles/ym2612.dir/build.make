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
CMAKE_SOURCE_DIR = /Users/jaeseoko/24783/jaeseoko/ps3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_ps3

# Include any dependencies generated for this target.
include ym2612/CMakeFiles/ym2612.dir/depend.make

# Include the progress variables for this target.
include ym2612/CMakeFiles/ym2612.dir/progress.make

# Include the compile flags for this target's objects.
include ym2612/CMakeFiles/ym2612.dir/flags.make

ym2612/CMakeFiles/ym2612.dir/ym2612.cpp.o: ym2612/CMakeFiles/ym2612.dir/flags.make
ym2612/CMakeFiles/ym2612.dir/ym2612.cpp.o: /Users/jaeseoko/24783/MMLPlayer/ym2612/ym2612.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_ps3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ym2612/CMakeFiles/ym2612.dir/ym2612.cpp.o"
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ym2612.dir/ym2612.cpp.o -c /Users/jaeseoko/24783/MMLPlayer/ym2612/ym2612.cpp

ym2612/CMakeFiles/ym2612.dir/ym2612.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ym2612.dir/ym2612.cpp.i"
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/MMLPlayer/ym2612/ym2612.cpp > CMakeFiles/ym2612.dir/ym2612.cpp.i

ym2612/CMakeFiles/ym2612.dir/ym2612.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ym2612.dir/ym2612.cpp.s"
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/MMLPlayer/ym2612/ym2612.cpp -o CMakeFiles/ym2612.dir/ym2612.cpp.s

ym2612/CMakeFiles/ym2612.dir/ym2612wave.cpp.o: ym2612/CMakeFiles/ym2612.dir/flags.make
ym2612/CMakeFiles/ym2612.dir/ym2612wave.cpp.o: /Users/jaeseoko/24783/MMLPlayer/ym2612/ym2612wave.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_ps3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ym2612/CMakeFiles/ym2612.dir/ym2612wave.cpp.o"
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ym2612.dir/ym2612wave.cpp.o -c /Users/jaeseoko/24783/MMLPlayer/ym2612/ym2612wave.cpp

ym2612/CMakeFiles/ym2612.dir/ym2612wave.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ym2612.dir/ym2612wave.cpp.i"
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/MMLPlayer/ym2612/ym2612wave.cpp > CMakeFiles/ym2612.dir/ym2612wave.cpp.i

ym2612/CMakeFiles/ym2612.dir/ym2612wave.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ym2612.dir/ym2612wave.cpp.s"
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/MMLPlayer/ym2612/ym2612wave.cpp -o CMakeFiles/ym2612.dir/ym2612wave.cpp.s

# Object files for target ym2612
ym2612_OBJECTS = \
"CMakeFiles/ym2612.dir/ym2612.cpp.o" \
"CMakeFiles/ym2612.dir/ym2612wave.cpp.o"

# External object files for target ym2612
ym2612_EXTERNAL_OBJECTS =

ym2612/libym2612.a: ym2612/CMakeFiles/ym2612.dir/ym2612.cpp.o
ym2612/libym2612.a: ym2612/CMakeFiles/ym2612.dir/ym2612wave.cpp.o
ym2612/libym2612.a: ym2612/CMakeFiles/ym2612.dir/build.make
ym2612/libym2612.a: ym2612/CMakeFiles/ym2612.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_ps3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libym2612.a"
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && $(CMAKE_COMMAND) -P CMakeFiles/ym2612.dir/cmake_clean_target.cmake
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ym2612.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ym2612/CMakeFiles/ym2612.dir/build: ym2612/libym2612.a

.PHONY : ym2612/CMakeFiles/ym2612.dir/build

ym2612/CMakeFiles/ym2612.dir/clean:
	cd /Users/jaeseoko/24783/build_ps3/ym2612 && $(CMAKE_COMMAND) -P CMakeFiles/ym2612.dir/cmake_clean.cmake
.PHONY : ym2612/CMakeFiles/ym2612.dir/clean

ym2612/CMakeFiles/ym2612.dir/depend:
	cd /Users/jaeseoko/24783/build_ps3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/jaeseoko/ps3 /Users/jaeseoko/24783/MMLPlayer/ym2612 /Users/jaeseoko/24783/build_ps3 /Users/jaeseoko/24783/build_ps3/ym2612 /Users/jaeseoko/24783/build_ps3/ym2612/CMakeFiles/ym2612.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ym2612/CMakeFiles/ym2612.dir/depend
