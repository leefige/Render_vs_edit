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
include test/CMakeFiles/nomalloc.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/nomalloc.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/nomalloc.dir/flags.make

test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj: test/CMakeFiles/nomalloc.dir/flags.make
test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj: test/CMakeFiles/nomalloc.dir/includes_CXX.rsp
test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj: ../test/nomalloc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\nomalloc.dir\nomalloc.cpp.obj -c E:\setup\develop\eigen\test\nomalloc.cpp

test/CMakeFiles/nomalloc.dir/nomalloc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nomalloc.dir/nomalloc.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\test\nomalloc.cpp > CMakeFiles\nomalloc.dir\nomalloc.cpp.i

test/CMakeFiles/nomalloc.dir/nomalloc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nomalloc.dir/nomalloc.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\test\nomalloc.cpp -o CMakeFiles\nomalloc.dir\nomalloc.cpp.s

test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj.requires:

.PHONY : test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj.requires

test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj.provides: test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj.requires
	$(MAKE) -f test\CMakeFiles\nomalloc.dir\build.make test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj.provides.build
.PHONY : test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj.provides

test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj.provides.build: test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj


# Object files for target nomalloc
nomalloc_OBJECTS = \
"CMakeFiles/nomalloc.dir/nomalloc.cpp.obj"

# External object files for target nomalloc
nomalloc_EXTERNAL_OBJECTS =

test/nomalloc.exe: test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj
test/nomalloc.exe: test/CMakeFiles/nomalloc.dir/build.make
test/nomalloc.exe: test/CMakeFiles/nomalloc.dir/linklibs.rsp
test/nomalloc.exe: test/CMakeFiles/nomalloc.dir/objects1.rsp
test/nomalloc.exe: test/CMakeFiles/nomalloc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nomalloc.exe"
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\nomalloc.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/nomalloc.dir/build: test/nomalloc.exe

.PHONY : test/CMakeFiles/nomalloc.dir/build

test/CMakeFiles/nomalloc.dir/requires: test/CMakeFiles/nomalloc.dir/nomalloc.cpp.obj.requires

.PHONY : test/CMakeFiles/nomalloc.dir/requires

test/CMakeFiles/nomalloc.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -P CMakeFiles\nomalloc.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/nomalloc.dir/clean

test/CMakeFiles/nomalloc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\test E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\test E:\setup\develop\eigen\compiled\test\CMakeFiles\nomalloc.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/nomalloc.dir/depend

