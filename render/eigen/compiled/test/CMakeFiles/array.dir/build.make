# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Develop\CMake\bin\cmake.exe

# The command to remove a file.
RM = D:\Develop\CMake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\setup\develop\eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\setup\develop\eigen\compiled

# Include any dependencies generated for this target.
include test/CMakeFiles/array.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/array.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/array.dir/flags.make

test/CMakeFiles/array.dir/array.cpp.obj: test/CMakeFiles/array.dir/flags.make
test/CMakeFiles/array.dir/array.cpp.obj: test/CMakeFiles/array.dir/includes_CXX.rsp
test/CMakeFiles/array.dir/array.cpp.obj: ../test/array.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/array.dir/array.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\array.dir\array.cpp.obj -c E:\setup\develop\eigen\test\array.cpp

test/CMakeFiles/array.dir/array.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/array.dir/array.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\test\array.cpp > CMakeFiles\array.dir\array.cpp.i

test/CMakeFiles/array.dir/array.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/array.dir/array.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\test\array.cpp -o CMakeFiles\array.dir\array.cpp.s

test/CMakeFiles/array.dir/array.cpp.obj.requires:

.PHONY : test/CMakeFiles/array.dir/array.cpp.obj.requires

test/CMakeFiles/array.dir/array.cpp.obj.provides: test/CMakeFiles/array.dir/array.cpp.obj.requires
	$(MAKE) -f test\CMakeFiles\array.dir\build.make test/CMakeFiles/array.dir/array.cpp.obj.provides.build
.PHONY : test/CMakeFiles/array.dir/array.cpp.obj.provides

test/CMakeFiles/array.dir/array.cpp.obj.provides.build: test/CMakeFiles/array.dir/array.cpp.obj


# Object files for target array
array_OBJECTS = \
"CMakeFiles/array.dir/array.cpp.obj"

# External object files for target array
array_EXTERNAL_OBJECTS =

test/array.exe: test/CMakeFiles/array.dir/array.cpp.obj
test/array.exe: test/CMakeFiles/array.dir/build.make
test/array.exe: test/CMakeFiles/array.dir/linklibs.rsp
test/array.exe: test/CMakeFiles/array.dir/objects1.rsp
test/array.exe: test/CMakeFiles/array.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable array.exe"
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\array.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/array.dir/build: test/array.exe

.PHONY : test/CMakeFiles/array.dir/build

test/CMakeFiles/array.dir/requires: test/CMakeFiles/array.dir/array.cpp.obj.requires

.PHONY : test/CMakeFiles/array.dir/requires

test/CMakeFiles/array.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -P CMakeFiles\array.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/array.dir/clean

test/CMakeFiles/array.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\test E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\test E:\setup\develop\eigen\compiled\test\CMakeFiles\array.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/array.dir/depend
