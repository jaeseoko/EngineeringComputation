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
include public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/depend.make

# Include the progress variables for this target.
include public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/progress.make

# Include the compile flags for this target's objects.
include public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/flags.make

public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/main.cpp.o: public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/flags.make
public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/main.cpp.o: /Users/jaeseoko/24783/public/src/ir_transceiver/lib/cheapgui/template/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_ps3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/main.cpp.o"
	cd /Users/jaeseoko/24783/build_ps3/public/ir_transceiver/lib/cheapgui/template && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cheapgui_template.dir/main.cpp.o -c /Users/jaeseoko/24783/public/src/ir_transceiver/lib/cheapgui/template/main.cpp

public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cheapgui_template.dir/main.cpp.i"
	cd /Users/jaeseoko/24783/build_ps3/public/ir_transceiver/lib/cheapgui/template && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/ir_transceiver/lib/cheapgui/template/main.cpp > CMakeFiles/cheapgui_template.dir/main.cpp.i

public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cheapgui_template.dir/main.cpp.s"
	cd /Users/jaeseoko/24783/build_ps3/public/ir_transceiver/lib/cheapgui/template && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/ir_transceiver/lib/cheapgui/template/main.cpp -o CMakeFiles/cheapgui_template.dir/main.cpp.s

# Object files for target cheapgui_template
cheapgui_template_OBJECTS = \
"CMakeFiles/cheapgui_template.dir/main.cpp.o"

# External object files for target cheapgui_template
cheapgui_template_EXTERNAL_OBJECTS =

public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/main.cpp.o
public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/build.make
public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/ir_transceiver/lib/cheapgui/libcheapgui.a
public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/ir_transceiver/lib/cheaplib/libcheaplib.a
public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/fssimplewindow/src/libfssimplewindow.a
public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/ysgl/src/libysgl.a
public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/ysbitmapfont/src/libysbitmapfont.a
public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/ysgl/src/libysgl.a
public/ir_transceiver/lib/cheapgui/template/cheapgui_template: public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_ps3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cheapgui_template"
	cd /Users/jaeseoko/24783/build_ps3/public/ir_transceiver/lib/cheapgui/template && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cheapgui_template.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/build: public/ir_transceiver/lib/cheapgui/template/cheapgui_template

.PHONY : public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/build

public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/clean:
	cd /Users/jaeseoko/24783/build_ps3/public/ir_transceiver/lib/cheapgui/template && $(CMAKE_COMMAND) -P CMakeFiles/cheapgui_template.dir/cmake_clean.cmake
.PHONY : public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/clean

public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/depend:
	cd /Users/jaeseoko/24783/build_ps3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/jaeseoko/ps3 /Users/jaeseoko/24783/public/src/ir_transceiver/lib/cheapgui/template /Users/jaeseoko/24783/build_ps3 /Users/jaeseoko/24783/build_ps3/public/ir_transceiver/lib/cheapgui/template /Users/jaeseoko/24783/build_ps3/public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/ir_transceiver/lib/cheapgui/template/CMakeFiles/cheapgui_template.dir/depend

