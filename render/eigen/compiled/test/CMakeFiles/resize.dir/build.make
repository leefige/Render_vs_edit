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
include test/CMakeFiles/resize.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/resize.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/resize.dir/flags.make

test/CMakeFiles/resize.dir/resize.cpp.obj: test/CMakeFiles/resize.dir/flags.make
test/CMakeFiles/resize.dir/resize.cpp.obj: test/CMakeFiles/resize.dir/includes_CXX.rsp
test/CMakeFiles/resize.dir/resize.cpp.obj: ../test/resize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/resize.dir/resize.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\resize.dir\resize.cpp.obj -c E:\setup\develop\eigen\test\resize.cpp

test/CMakeFiles/resize.dir/resize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/resize.dir/resize.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\test\resize.cpp > CMakeFiles\resize.dir\resize.cpp.i

test/CMakeFiles/resize.dir/resize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/resize.dir/resize.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\test\resize.cpp -o CMakeFiles\resize.dir\resize.cpp.s

test/CMakeFiles/resize.dir/resize.cpp.obj.requires:

.PHONY : test/CMakeFiles/resize.dir/resize.cpp.obj.requires

test/CMakeFiles/resize.dir/resize.cpp.obj.provides: test/CMakeFiles/resize.dir/resize.cpp.obj.requires
	$(MAKE) -f test\CMakeFiles\resize.dir\build.make test/CMakeFiles/resize.dir/resize.cpp.obj.provides.build
.PHONY : test/CMakeFiles/resize.dir/resize.cpp.obj.provides

test/CMakeFiles/resize.dir/resize.cpp.obj.provides.build: test/CMakeFiles/resize.dir/resize.cpp.obj


# Object files for target resize
resize_OBJECTS = \
"CMakeFiles/resize.dir/resize.cpp.obj"

# External object files for target resize
resize_EXTERNAL_OBJECTS =

test/resize.exe: test/CMakeFiles/resize.dir/resize.cpp.obj
test/resize.exe: test/CMakeFiles/resize.dir/build.make
test/resize.exe: test/CMakeFiles/resize.dir/linklibs.rsp
test/resize.exe: test/CMakeFiles/resize.dir/objects1.rsp
test/resize.exe: test/CMakeFiles/resize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable resize.exe"
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\resize.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/resize.dir/build: test/resize.exe

.PHONY : test/CMakeFiles/resize.dir/build

test/CMakeFiles/resize.dir/requires: test/CMakeFiles/resize.dir/resize.cpp.obj.requires

.PHONY : test/CMakeFiles/resize.dir/requires

test/CMakeFiles/resize.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -P CMakeFiles\resize.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/resize.dir/clean

test/CMakeFiles/resize.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\test E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\test E:\setup\develop\eigen\compiled\test\CMakeFiles\resize.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/resize.dir/depend

