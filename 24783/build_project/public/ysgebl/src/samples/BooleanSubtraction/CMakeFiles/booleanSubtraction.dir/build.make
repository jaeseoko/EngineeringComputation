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
CMAKE_SOURCE_DIR = /Users/jaeseoko/24783/2D-CAD/Alpha

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_project

# Include any dependencies generated for this target.
include public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/depend.make

# Include the progress variables for this target.
include public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/progress.make

# Include the compile flags for this target's objects.
include public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/flags.make

public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/main.cpp.o: public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/flags.make
public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/main.cpp.o: /Users/jaeseoko/24783/public/src/ysgebl/src/samples/BooleanSubtraction/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/main.cpp.o"
	cd /Users/jaeseoko/24783/build_project/public/ysgebl/src/samples/BooleanSubtraction && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/booleanSubtraction.dir/main.cpp.o -c /Users/jaeseoko/24783/public/src/ysgebl/src/samples/BooleanSubtraction/main.cpp

public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/booleanSubtraction.dir/main.cpp.i"
	cd /Users/jaeseoko/24783/build_project/public/ysgebl/src/samples/BooleanSubtraction && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/ysgebl/src/samples/BooleanSubtraction/main.cpp > CMakeFiles/booleanSubtraction.dir/main.cpp.i

public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/booleanSubtraction.dir/main.cpp.s"
	cd /Users/jaeseoko/24783/build_project/public/ysgebl/src/samples/BooleanSubtraction && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/ysgebl/src/samples/BooleanSubtraction/main.cpp -o CMakeFiles/booleanSubtraction.dir/main.cpp.s

# Object files for target booleanSubtraction
booleanSubtraction_OBJECTS = \
"CMakeFiles/booleanSubtraction.dir/main.cpp.o"

# External object files for target booleanSubtraction
booleanSubtraction_EXTERNAL_OBJECTS =

public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/main.cpp.o
public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/build.make
public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysgebl/src/kernelutil/libgeblutil.a
public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysgebl/src/kernel/libgeblkernel.a
public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysport/src/libysport.a
public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysglcpp/src/libysglcpp.a
public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysclass11/src/libysclass11.a
public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysclass/src/libysclass.a
public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction: public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable booleanSubtraction"
	cd /Users/jaeseoko/24783/build_project/public/ysgebl/src/samples/BooleanSubtraction && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/booleanSubtraction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/build: public/ysgebl/src/samples/BooleanSubtraction/booleanSubtraction

.PHONY : public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/build

public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/clean:
	cd /Users/jaeseoko/24783/build_project/public/ysgebl/src/samples/BooleanSubtraction && $(CMAKE_COMMAND) -P CMakeFiles/booleanSubtraction.dir/cmake_clean.cmake
.PHONY : public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/clean

public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/depend:
	cd /Users/jaeseoko/24783/build_project && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/2D-CAD/Alpha /Users/jaeseoko/24783/public/src/ysgebl/src/samples/BooleanSubtraction /Users/jaeseoko/24783/build_project /Users/jaeseoko/24783/build_project/public/ysgebl/src/samples/BooleanSubtraction /Users/jaeseoko/24783/build_project/public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/ysgebl/src/samples/BooleanSubtraction/CMakeFiles/booleanSubtraction.dir/depend

