# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/build

# Include any dependencies generated for this target.
include CMakeFiles/TestBFS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/TestBFS.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/TestBFS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TestBFS.dir/flags.make

CMakeFiles/TestBFS.dir/codegen:
.PHONY : CMakeFiles/TestBFS.dir/codegen

CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o: CMakeFiles/TestBFS.dir/flags.make
CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o: /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/tests/TestBFS.cpp
CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o: CMakeFiles/TestBFS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o"
	/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o -MF CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o.d -o CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o -c /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/tests/TestBFS.cpp

CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.i"
	/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/tests/TestBFS.cpp > CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.i

CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.s"
	/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/tests/TestBFS.cpp -o CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.s

# Object files for target TestBFS
TestBFS_OBJECTS = \
"CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o"

# External object files for target TestBFS
TestBFS_EXTERNAL_OBJECTS =

TestBFS.exe: CMakeFiles/TestBFS.dir/tests/TestBFS.cpp.o
TestBFS.exe: CMakeFiles/TestBFS.dir/build.make
TestBFS.exe: CMakeFiles/TestBFS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TestBFS.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestBFS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TestBFS.dir/build: TestBFS.exe
.PHONY : CMakeFiles/TestBFS.dir/build

CMakeFiles/TestBFS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TestBFS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TestBFS.dir/clean

CMakeFiles/TestBFS.dir/depend:
	cd /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/build /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/build /c/Users/DYNAMIC-COMPUTER/Downloads/hw4-submission/build/CMakeFiles/TestBFS.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/TestBFS.dir/depend
