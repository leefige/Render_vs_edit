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
include test/CMakeFiles/visitor.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/visitor.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/visitor.dir/flags.make

test/CMakeFiles/visitor.dir/visitor.cpp.obj: test/CMakeFiles/visitor.dir/flags.make
test/CMakeFiles/visitor.dir/visitor.cpp.obj: test/CMakeFiles/visitor.dir/includes_CXX.rsp
test/CMakeFiles/visitor.dir/visitor.cpp.obj: ../test/visitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/visitor.dir/visitor.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\visitor.dir\visitor.cpp.obj -c E:\setup\develop\eigen\test\visitor.cpp

test/CMakeFiles/visitor.dir/visitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visitor.dir/visitor.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\test\visitor.cpp > CMakeFiles\visitor.dir\visitor.cpp.i

test/CMakeFiles/visitor.dir/visitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visitor.dir/visitor.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\test && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\test\visitor.cpp -o CMakeFiles\visitor.dir\visitor.cpp.s

test/CMakeFiles/visitor.dir/visitor.cpp.obj.requires:

.PHONY : test/CMakeFiles/visitor.dir/visitor.cpp.obj.requires

test/CMakeFiles/visitor.dir/visitor.cpp.obj.provides: test/CMakeFiles/visitor.dir/visitor.cpp.obj.requires
	$(MAKE) -f test\CMakeFiles\visitor.dir\build.make test/CMakeFiles/visitor.dir/visitor.cpp.obj.provides.build
.PHONY : test/CMakeFiles/visitor.dir/visitor.cpp.obj.provides

test/CMakeFiles/visitor.dir/visitor.cpp.obj.provides.build: test/CMakeFiles/visitor.dir/visitor.cpp.obj


# Object files for target visitor
visitor_OBJECTS = \
"CMakeFiles/visitor.dir/visitor.cpp.obj"

# External object files for target visitor
visitor_EXTERNAL_OBJECTS =

test/visitor.exe: test/CMakeFiles/visitor.dir/visitor.cpp.obj
test/visitor.exe: test/CMakeFiles/visitor.dir/build.make
test/visitor.exe: test/CMakeFiles/visitor.dir/linklibs.rsp
test/visitor.exe: test/CMakeFiles/visitor.dir/objects1.rsp
test/visitor.exe: test/CMakeFiles/visitor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable visitor.exe"
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\visitor.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/visitor.dir/build: test/visitor.exe

.PHONY : test/CMakeFiles/visitor.dir/build

test/CMakeFiles/visitor.dir/requires: test/CMakeFiles/visitor.dir/visitor.cpp.obj.requires

.PHONY : test/CMakeFiles/visitor.dir/requires

test/CMakeFiles/visitor.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\test && $(CMAKE_COMMAND) -P CMakeFiles\visitor.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/visitor.dir/clean

test/CMakeFiles/visitor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\test E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\test E:\setup\develop\eigen\compiled\test\CMakeFiles\visitor.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/visitor.dir/depend

