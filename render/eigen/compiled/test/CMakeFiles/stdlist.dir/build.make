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
include test/CMakeFiles/stdlist.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/stdlist.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/stdlist.dir/flags.make

test/CMakeFiles/stdlist.dir/stdlist.cpp.obj: test/CMakeFiles/stdlist.dir/flags.make
test/CMakeFiles/stdlist.dir/stdlist.cpp.obj: test/CMakeFiles/stdlist.dir/includes_CXX.rsp
test/CMakeFiles/stdlist.dir/stdlist.cpp.obj: ../test/stdlist.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/stdlist.dir/stdlist.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stdlist.dir\stdlist.cpp.obj -c E:\setup\develop\eigen\test\stdlist.cpp

test/CMakeFiles/stdlist.dir/stdlist.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stdlist.dir/stdlist.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\test\stdlist.cpp > CMakeFiles\stdlist.dir\stdlist.cpp.i

test/CMakeFiles/stdlist.dir/stdlist.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stdlist.dir/stdlist.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\test\stdlist.cpp -o CMakeFiles\stdlist.dir\stdlist.cpp.s

test/CMakeFiles/stdlist.dir/stdlist.cpp.obj.requires:

.PHONY : test/CMakeFiles/stdlist.dir/stdlist.cpp.obj.requires

test/CMakeFiles/stdlist.dir/stdlist.cpp.obj.provides: test/CMakeFiles/stdlist.dir/stdlist.cpp.obj.requires
	$(MAKE) -f test\CMakeFiles\stdlist.dir\build.make test/CMakeFiles/stdlist.dir/stdlist.cpp.obj.provides.build
.PHONY : test/CMakeFiles/stdlist.dir/stdlist.cpp.obj.provides

test/CMakeFiles/stdlist.dir/stdlist.cpp.obj.provides.build: test/CMakeFiles/stdlist.dir/stdlist.cpp.obj


# Object files for target stdlist
stdlist_OBJECTS = \
"CMakeFiles/stdlist.dir/stdlist.cpp.obj"

# External object files for target stdlist
stdlist_EXTERNAL_OBJECTS =

test/stdlist.exe: test/CMakeFiles/stdlist.dir/stdlist.cpp.obj
test/stdlist.exe: test/CMakeFiles/stdlist.dir/build.make
test/stdlist.exe: test/CMakeFiles/stdlist.dir/linklibs.rsp
test/stdlist.exe: test/CMakeFiles/stdlist.dir/objects1.rsp
test/stdlist.exe: test/CMakeFiles/stdlist.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stdlist.exe"
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\stdlist.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/stdlist.dir/build: test/stdlist.exe

.PHONY : test/CMakeFiles/stdlist.dir/build

test/CMakeFiles/stdlist.dir/requires: test/CMakeFiles/stdlist.dir/stdlist.cpp.obj.requires

.PHONY : test/CMakeFiles/stdlist.dir/requires

test/CMakeFiles/stdlist.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -P CMakeFiles\stdlist.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/stdlist.dir/clean

test/CMakeFiles/stdlist.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\test E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\test E:\setup\develop\eigen\compiled\test\CMakeFiles\stdlist.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/stdlist.dir/depend
