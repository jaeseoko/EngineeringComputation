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
CMAKE_SOURCE_DIR = /Users/jaeseoko/24783/course_files/mesh

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaeseoko/24783/build_mesh

# Include any dependencies generated for this target.
include meshviewer/CMakeFiles/meshviewer.dir/depend.make

# Include the progress variables for this target.
include meshviewer/CMakeFiles/meshviewer.dir/progress.make

# Include the compile flags for this target's objects.
include meshviewer/CMakeFiles/meshviewer.dir/flags.make

meshviewer/CMakeFiles/meshviewer.dir/main.cpp.o: meshviewer/CMakeFiles/meshviewer.dir/flags.make
meshviewer/CMakeFiles/meshviewer.dir/main.cpp.o: /Users/jaeseoko/24783/course_files/mesh/meshviewer/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_mesh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object meshviewer/CMakeFiles/meshviewer.dir/main.cpp.o"
	cd /Users/jaeseoko/24783/build_mesh/meshviewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/meshviewer.dir/main.cpp.o -c /Users/jaeseoko/24783/course_files/mesh/meshviewer/main.cpp

meshviewer/CMakeFiles/meshviewer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/meshviewer.dir/main.cpp.i"
	cd /Users/jaeseoko/24783/build_mesh/meshviewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/course_files/mesh/meshviewer/main.cpp > CMakeFiles/meshviewer.dir/main.cpp.i

meshviewer/CMakeFiles/meshviewer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/meshviewer.dir/main.cpp.s"
	cd /Users/jaeseoko/24783/build_mesh/meshviewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/course_files/mesh/meshviewer/main.cpp -o CMakeFiles/meshviewer.dir/main.cpp.s

meshviewer/CMakeFiles/meshviewer.dir/glutil.cpp.o: meshviewer/CMakeFiles/meshviewer.dir/flags.make
meshviewer/CMakeFiles/meshviewer.dir/glutil.cpp.o: /Users/jaeseoko/24783/course_files/mesh/meshviewer/glutil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaeseoko/24783/build_mesh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object meshviewer/CMakeFiles/meshviewer.dir/glutil.cpp.o"
	cd /Users/jaeseoko/24783/build_mesh/meshviewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/meshviewer.dir/glutil.cpp.o -c /Users/jaeseoko/24783/course_files/mesh/meshviewer/glutil.cpp

meshviewer/CMakeFiles/meshviewer.dir/glutil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/meshviewer.dir/glutil.cpp.i"
	cd /Users/jaeseoko/24783/build_mesh/meshviewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaeseoko/24783/course_files/mesh/meshviewer/glutil.cpp > CMakeFiles/meshviewer.dir/glutil.cpp.i

meshviewer/CMakeFiles/meshviewer.dir/glutil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/meshviewer.dir/glutil.cpp.s"
	cd /Users/jaeseoko/24783/build_mesh/meshviewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaeseoko/24783/course_files/mesh/meshviewer/glutil.cpp -o CMakeFiles/meshviewer.dir/glutil.cpp.s

# Object files for target meshviewer
meshviewer_OBJECTS = \
"CMakeFiles/meshviewer.dir/main.cpp.o" \
"CMakeFiles/meshviewer.dir/glutil.cpp.o"

# External object files for target meshviewer
meshviewer_EXTERNAL_OBJECTS =

meshviewer/meshviewer.app/Contents/MacOS/meshviewer: meshviewer/CMakeFiles/meshviewer.dir/main.cpp.o
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: meshviewer/CMakeFiles/meshviewer.dir/glutil.cpp.o
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: meshviewer/CMakeFiles/meshviewer.dir/build.make
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: public/fssimplewindow/src/libfssimplewindow.a
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: public/ysclass/src/libysclass.a
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: public/ysbitmapfont/src/libysbitmapfont.a
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: meshlib/libmeshlib.a
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: public/ysgl/src/libysgl.a
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: public/ysclass/src/libysclass.a
meshviewer/meshviewer.app/Contents/MacOS/meshviewer: meshviewer/CMakeFiles/meshviewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaeseoko/24783/build_mesh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable meshviewer.app/Contents/MacOS/meshviewer"
	cd /Users/jaeseoko/24783/build_mesh/meshviewer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/meshviewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
meshviewer/CMakeFiles/meshviewer.dir/build: meshviewer/meshviewer.app/Contents/MacOS/meshviewer

.PHONY : meshviewer/CMakeFiles/meshviewer.dir/build

meshviewer/CMakeFiles/meshviewer.dir/clean:
	cd /Users/jaeseoko/24783/build_mesh/meshviewer && $(CMAKE_COMMAND) -P CMakeFiles/meshviewer.dir/cmake_clean.cmake
.PHONY : meshviewer/CMakeFiles/meshviewer.dir/clean

meshviewer/CMakeFiles/meshviewer.dir/depend:
	cd /Users/jaeseoko/24783/build_mesh && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaeseoko/24783/course_files/mesh /Users/jaeseoko/24783/course_files/mesh/meshviewer /Users/jaeseoko/24783/build_mesh /Users/jaeseoko/24783/build_mesh/meshviewer /Users/jaeseoko/24783/build_mesh/meshviewer/CMakeFiles/meshviewer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : meshviewer/CMakeFiles/meshviewer.dir/depend

