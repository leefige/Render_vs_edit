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
include doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/flags.make

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/flags.make
doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/includes_CXX.rsp
doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj: doc/snippets/compile_PartialRedux_prod.cpp
doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj: ../doc/snippets/PartialRedux_prod.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj"
	cd /d E:\setup\develop\eigen\compiled\doc\snippets && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\compile_PartialRedux_prod.dir\compile_PartialRedux_prod.cpp.obj -c E:\setup\develop\eigen\compiled\doc\snippets\compile_PartialRedux_prod.cpp

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.i"
	cd /d E:\setup\develop\eigen\compiled\doc\snippets && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\setup\develop\eigen\compiled\doc\snippets\compile_PartialRedux_prod.cpp > CMakeFiles\compile_PartialRedux_prod.dir\compile_PartialRedux_prod.cpp.i

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.s"
	cd /d E:\setup\develop\eigen\compiled\doc\snippets && C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\setup\develop\eigen\compiled\doc\snippets\compile_PartialRedux_prod.cpp -o CMakeFiles\compile_PartialRedux_prod.dir\compile_PartialRedux_prod.cpp.s

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj.requires:

.PHONY : doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj.requires

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj.provides: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj.requires
	$(MAKE) -f doc\snippets\CMakeFiles\compile_PartialRedux_prod.dir\build.make doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj.provides.build
.PHONY : doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj.provides

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj.provides.build: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj


# Object files for target compile_PartialRedux_prod
compile_PartialRedux_prod_OBJECTS = \
"CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj"

# External object files for target compile_PartialRedux_prod
compile_PartialRedux_prod_EXTERNAL_OBJECTS =

doc/snippets/compile_PartialRedux_prod.exe: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj
doc/snippets/compile_PartialRedux_prod.exe: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/build.make
doc/snippets/compile_PartialRedux_prod.exe: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/linklibs.rsp
doc/snippets/compile_PartialRedux_prod.exe: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/objects1.rsp
doc/snippets/compile_PartialRedux_prod.exe: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\setup\develop\eigen\compiled\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_PartialRedux_prod.exe"
	cd /d E:\setup\develop\eigen\compiled\doc\snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\compile_PartialRedux_prod.dir\link.txt --verbose=$(VERBOSE)
	cd /d E:\setup\develop\eigen\compiled\doc\snippets && .\compile_PartialRedux_prod.exe >E:/setup/develop/eigen/compiled/doc/snippets/PartialRedux_prod.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/build: doc/snippets/compile_PartialRedux_prod.exe

.PHONY : doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/build

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/requires: doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/compile_PartialRedux_prod.cpp.obj.requires

.PHONY : doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/requires

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/clean:
	cd /d E:\setup\develop\eigen\compiled\doc\snippets && $(CMAKE_COMMAND) -P CMakeFiles\compile_PartialRedux_prod.dir\cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/clean

doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\setup\develop\eigen E:\setup\develop\eigen\doc\snippets E:\setup\develop\eigen\compiled E:\setup\develop\eigen\compiled\doc\snippets E:\setup\develop\eigen\compiled\doc\snippets\CMakeFiles\compile_PartialRedux_prod.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_PartialRedux_prod.dir/depend
