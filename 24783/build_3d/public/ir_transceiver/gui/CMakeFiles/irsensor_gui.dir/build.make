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
include public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/depend.make

# Include the progress variables for this target.
include public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/progress.make

# Include the compile flags for this target's objects.
include public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/flags.make

public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/main.cpp.o: public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/flags.make
public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/main.cpp.o: /Users/jaeseoko/24783/public/src/ir_transceiver/gui/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/main.cpp.o"
	cd /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irsensor_gui.dir/main.cpp.o -c /Users/jaeseoko/24783/public/src/ir_transceiver/gui/main.cpp

public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irsensor_gui.dir/main.cpp.i"
	cd /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/ir_transceiver/gui/main.cpp > CMakeFiles/irsensor_gui.dir/main.cpp.i

public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irsensor_gui.dir/main.cpp.s"
	cd /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/ir_transceiver/gui/main.cpp -o CMakeFiles/irsensor_gui.dir/main.cpp.s

public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/irdata.cpp.o: public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/flags.make
public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/irdata.cpp.o: /Users/jaeseoko/24783/public/src/ir_transceiver/gui/irdata.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/irdata.cpp.o"
	cd /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irsensor_gui.dir/irdata.cpp.o -c /Users/jaeseoko/24783/public/src/ir_transceiver/gui/irdata.cpp

public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/irdata.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irsensor_gui.dir/irdata.cpp.i"
	cd /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/public/src/ir_transceiver/gui/irdata.cpp > CMakeFiles/irsensor_gui.dir/irdata.cpp.i

public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/irdata.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irsensor_gui.dir/irdata.cpp.s"
	cd /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/public/src/ir_transceiver/gui/irdata.cpp -o CMakeFiles/irsensor_gui.dir/irdata.cpp.s

# Object files for target irsensor_gui
irsensor_gui_OBJECTS = \
"CMakeFiles/irsensor_gui.dir/main.cpp.o" \
"CMakeFiles/irsensor_gui.dir/irdata.cpp.o"

# External object files for target irsensor_gui
irsensor_gui_EXTERNAL_OBJECTS =

public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/main.cpp.o
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/irdata.cpp.o
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/build.make
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/lib/cheapgui/libcheapgui.a
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/lib/cheaplib/libcheaplib.a
public/ir_transceiver/gui/irsensor_gui: public/fssimplewindow/src/libfssimplewindow.a
public/ir_transceiver/gui/irsensor_gui: public/fssimplefiledialog/src/libfssimplefiledialog.a
public/ir_transceiver/gui/irsensor_gui: public/ysgl/src/libysgl.a
public/ir_transceiver/gui/irsensor_gui: public/ysbitmapfont/src/libysbitmapfont.a
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/lib/yscomport/libcomportlib.a
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/lib/irtoy/libirtoylib.a
public/ir_transceiver/gui/irsensor_gui: public/ysgl/src/libysgl.a
public/ir_transceiver/gui/irsensor_gui: public/fssimplewindow/src/libfssimplewindow.a
public/ir_transceiver/gui/irsensor_gui: public/ysport/src/libysport.a
public/ir_transceiver/gui/irsensor_gui: public/ysclass/src/libysclass.a
public/ir_transceiver/gui/irsensor_gui: public/yssystemfont/src/libyssystemfont.a
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/lib/cheaplib/libcheaplib.a
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/lib/yscomport/libcomportlib.a
public/ir_transceiver/gui/irsensor_gui: public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_3d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable irsensor_gui"
	cd /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/irsensor_gui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/build: public/ir_transceiver/gui/irsensor_gui

.PHONY : public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/build

public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/clean:
	cd /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui && $(CMAKE_COMMAND) -P CMakeFiles/irsensor_gui.dir/cmake_clean.cmake
.PHONY : public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/clean

public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/depend:
	cd /Users/jaeseoko/24783/build_3d && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/course_files/3dGraphics /Users/jaeseoko/24783/public/src/ir_transceiver/gui /Users/jaeseoko/24783/build_3d /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui /Users/jaeseoko/24783/build_3d/public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : public/ir_transceiver/gui/CMakeFiles/irsensor_gui.dir/depend

