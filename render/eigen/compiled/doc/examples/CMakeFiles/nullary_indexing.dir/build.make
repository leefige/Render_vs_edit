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
include doc/examples/CMakeFiles/nullary_indexing.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/nullary_indexing.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/nullary_indexing.dir/flags.make

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj: doc/examples/CMakeFiles/nullary_indexing.dir/flags.make
doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj: doc/examples/CMakeFiles/nullary_indexing.dir/includes_CXX.rsp
doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj: ../doc/examples/nullary_indexing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\doc\examples && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\nullary_indexing.dir\nullary_indexing.cpp.obj -c E:\setup\develop\eigen\doc\examples\nullary_indexing.cpp

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\doc\examples && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\doc\examples\nullary_indexing.cpp > CMakeFiles\nullary_indexing.dir\nullary_indexing.cpp.i

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\doc\examples && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\doc\examples\nullary_indexing.cpp -o CMakeFiles\nullary_indexing.dir\nullary_indexing.cpp.s

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj.requires:

.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj.requires

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj.provides: doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj.requires
	$(MAKE) -f doc\examples\CMakeFiles\nullary_indexing.dir\build.make doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj.provides.build
.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj.provides

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj.provides.build: doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj


# Object files for target nullary_indexing
nullary_indexing_OBJECTS = \
"CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj"

# External object files for target nullary_indexing
nullary_indexing_EXTERNAL_OBJECTS =

doc/examples/nullary_indexing.exe: doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj
doc/examples/nullary_indexing.exe: doc/examples/CMakeFiles/nullary_indexing.dir/build.make
doc/examples/nullary_indexing.exe: doc/examples/CMakeFiles/nullary_indexing.dir/linklibs.rsp
doc/examples/nullary_indexing.exe: doc/examples/CMakeFiles/nullary_indexing.dir/objects1.rsp
doc/examples/nullary_indexing.exe: doc/examples/CMakeFiles/nullary_indexing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nullary_indexing.exe"
	cd /d E:\setup\develop\eigen\compiled\doc\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\nullary_indexing.dir\link.txt --verbose=$(VERBOSE)
	cd /d E:\setup\develop\eigen\compiled\doc\examples && .\nullary_indexing.exe >E:/setup/develop/eigen/compiled/doc/examples/nullary_indexing.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/nullary_indexing.dir/build: doc/examples/nullary_indexing.exe

.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/build

doc/examples/CMakeFiles/nullary_indexing.dir/requires: doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.obj.requires

.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/requires

doc/examples/CMakeFiles/nullary_indexing.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\doc\examples && $(CMAKE_COMMAND) -P CMakeFiles\nullary_indexing.dir\cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/clean

doc/examples/CMakeFiles/nullary_indexing.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\doc\examples E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\doc\examples E:\setup\develop\eigen\compiled\doc\examples\CMakeFiles\nullary_indexing.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/depend

