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
include test/CMakeFiles/permutationmatrices.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/permutationmatrices.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/permutationmatrices.dir/flags.make

test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj: test/CMakeFiles/permutationmatrices.dir/flags.make
test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj: test/CMakeFiles/permutationmatrices.dir/includes_CXX.rsp
test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj: ../test/permutationmatrices.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\permutationmatrices.dir\permutationmatrices.cpp.obj -c E:\setup\develop\eigen\test\permutationmatrices.cpp

test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\test\permutationmatrices.cpp > CMakeFiles\permutationmatrices.dir\permutationmatrices.cpp.i

test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\test\permutationmatrices.cpp -o CMakeFiles\permutationmatrices.dir\permutationmatrices.cpp.s

test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj.requires:

.PHONY : test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj.requires

test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj.provides: test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj.requires
	$(MAKE) -f test\CMakeFiles\permutationmatrices.dir\build.make test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj.provides.build
.PHONY : test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj.provides

test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj.provides.build: test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj


# Object files for target permutationmatrices
permutationmatrices_OBJECTS = \
"CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj"

# External object files for target permutationmatrices
permutationmatrices_EXTERNAL_OBJECTS =

test/permutationmatrices.exe: test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj
test/permutationmatrices.exe: test/CMakeFiles/permutationmatrices.dir/build.make
test/permutationmatrices.exe: test/CMakeFiles/permutationmatrices.dir/linklibs.rsp
test/permutationmatrices.exe: test/CMakeFiles/permutationmatrices.dir/objects1.rsp
test/permutationmatrices.exe: test/CMakeFiles/permutationmatrices.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable permutationmatrices.exe"
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\permutationmatrices.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/permutationmatrices.dir/build: test/permutationmatrices.exe

.PHONY : test/CMakeFiles/permutationmatrices.dir/build

test/CMakeFiles/permutationmatrices.dir/requires: test/CMakeFiles/permutationmatrices.dir/permutationmatrices.cpp.obj.requires

.PHONY : test/CMakeFiles/permutationmatrices.dir/requires

test/CMakeFiles/permutationmatrices.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -P CMakeFiles\permutationmatrices.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/permutationmatrices.dir/clean

test/CMakeFiles/permutationmatrices.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\test E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\test E:\setup\develop\eigen\compiled\test\CMakeFiles\permutationmatrices.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/permutationmatrices.dir/depend
