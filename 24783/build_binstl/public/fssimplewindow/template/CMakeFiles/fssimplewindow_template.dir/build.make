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
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_binstl

# Include any dependencies generated for this target.
include public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/depend.make

# Include the progress variables for this target.
include public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/progress.make

# Include the compile flags for this target's objects.
include public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/flags.make

public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/main.cpp.o: public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/flags.make
public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/main.cpp.o: /Users/jaeseoko/24783/public/src/fssimplewindow/template/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_binstl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/main.cpp.o"
	cd /Users/jaeseoko/24783/build_binstl/public/fssimplewindow/template && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fssimplewindow_template.dir/main.cpp.o -c /Users/jaeseoko/24783/public/src/fssimplewindow/template/main.cpp

public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fssimplewindow_template.dir/main.cpp.i"
	cd /Users/jaeseoko/24783/build_binstl/public/fssimplewindow/template && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/fssimplewindow/template/main.cpp > CMakeFiles/fssimplewindow_template.dir/main.cpp.i

public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fssimplewindow_template.dir/main.cpp.s"
	cd /Users/jaeseoko/24783/build_binstl/public/fssimplewindow/template && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/fssimplewindow/template/main.cpp -o CMakeFiles/fssimplewindow_template.dir/main.cpp.s

# Object files for target fssimplewindow_template
fssimplewindow_template_OBJECTS = \
"CMakeFiles/fssimplewindow_template.dir/main.cpp.o"

# External object files for target fssimplewindow_template
fssimplewindow_template_EXTERNAL_OBJECTS =

public/fssimplewindow/template/fssimplewindow_template.app/Contents/MacOS/fssimplewindow_template: public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/main.cpp.o
public/fssimplewindow/template/fssimplewindow_template.app/Contents/MacOS/fssimplewindow_template: public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/build.make
public/fssimplewindow/template/fssimplewindow_template.app/Contents/MacOS/fssimplewindow_template: public/fssimplewindow/src/libfssimplewindow.a
public/fssimplewindow/template/fssimplewindow_template.app/Contents/MacOS/fssimplewindow_template: public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_binstl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fssimplewindow_template.app/Contents/MacOS/fssimplewindow_template"
	cd /Users/jaeseoko/24783/build_binstl/public/fssimplewindow/template && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fssimplewindow_template.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/build: public/fssimplewindow/template/fssimplewindow_template.app/Contents/MacOS/fssimplewindow_template

.PHONY : public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/build

public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/clean:
	cd /Users/jaeseoko/24783/build_binstl/public/fssimplewindow/template && $(CMAKE_COMMAND) -P CMakeFiles/fssimplewindow_template.dir/cmake_clean.cmake
.PHONY : public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/clean

public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/depend:
	cd /Users/jaeseoko/24783/build_binstl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/course_files/3dGraphics /Users/jaeseoko/24783/public/src/fssimplewindow/template /Users/jaeseoko/24783/build_binstl /Users/jaeseoko/24783/build_binstl/public/fssimplewindow/template /Users/jaeseoko/24783/build_binstl/public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/fssimplewindow/template/CMakeFiles/fssimplewindow_template.dir/depend

