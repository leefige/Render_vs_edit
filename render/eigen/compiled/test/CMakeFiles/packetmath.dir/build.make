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
include test/CMakeFiles/packetmath.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/packetmath.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/packetmath.dir/flags.make

test/CMakeFiles/packetmath.dir/packetmath.cpp.obj: test/CMakeFiles/packetmath.dir/flags.make
test/CMakeFiles/packetmath.dir/packetmath.cpp.obj: test/CMakeFiles/packetmath.dir/includes_CXX.rsp
test/CMakeFiles/packetmath.dir/packetmath.cpp.obj: ../test/packetmath.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/packetmath.dir/packetmath.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\packetmath.dir\packetmath.cpp.obj -c E:\setup\develop\eigen\test\packetmath.cpp

test/CMakeFiles/packetmath.dir/packetmath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packetmath.dir/packetmath.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\test\packetmath.cpp > CMakeFiles\packetmath.dir\packetmath.cpp.i

test/CMakeFiles/packetmath.dir/packetmath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packetmath.dir/packetmath.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\test\packetmath.cpp -o CMakeFiles\packetmath.dir\packetmath.cpp.s

test/CMakeFiles/packetmath.dir/packetmath.cpp.obj.requires:

.PHONY : test/CMakeFiles/packetmath.dir/packetmath.cpp.obj.requires

test/CMakeFiles/packetmath.dir/packetmath.cpp.obj.provides: test/CMakeFiles/packetmath.dir/packetmath.cpp.obj.requires
	$(MAKE) -f test\CMakeFiles\packetmath.dir\build.make test/CMakeFiles/packetmath.dir/packetmath.cpp.obj.provides.build
.PHONY : test/CMakeFiles/packetmath.dir/packetmath.cpp.obj.provides

test/CMakeFiles/packetmath.dir/packetmath.cpp.obj.provides.build: test/CMakeFiles/packetmath.dir/packetmath.cpp.obj


# Object files for target packetmath
packetmath_OBJECTS = \
"CMakeFiles/packetmath.dir/packetmath.cpp.obj"

# External object files for target packetmath
packetmath_EXTERNAL_OBJECTS =

test/packetmath.exe: test/CMakeFiles/packetmath.dir/packetmath.cpp.obj
test/packetmath.exe: test/CMakeFiles/packetmath.dir/build.make
test/packetmath.exe: test/CMakeFiles/packetmath.dir/linklibs.rsp
test/packetmath.exe: test/CMakeFiles/packetmath.dir/objects1.rsp
test/packetmath.exe: test/CMakeFiles/packetmath.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable packetmath.exe"
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\packetmath.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/packetmath.dir/build: test/packetmath.exe

.PHONY : test/CMakeFiles/packetmath.dir/build

test/CMakeFiles/packetmath.dir/requires: test/CMakeFiles/packetmath.dir/packetmath.cpp.obj.requires

.PHONY : test/CMakeFiles/packetmath.dir/requires

test/CMakeFiles/packetmath.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -P CMakeFiles\packetmath.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/packetmath.dir/clean

test/CMakeFiles/packetmath.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\test E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\test E:\setup\develop\eigen\compiled\test\CMakeFiles\packetmath.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/packetmath.dir/depend

