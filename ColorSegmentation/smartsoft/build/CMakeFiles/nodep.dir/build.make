# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft/build

# Utility rule file for nodep.

# Include the progress variables for this target.
include CMakeFiles/nodep.dir/progress.make

CMakeFiles/nodep:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Build ColorSegmentation without dependency checking"
	/usr/bin/make ColorSegmentation/fast

nodep: CMakeFiles/nodep
nodep: CMakeFiles/nodep.dir/build.make

.PHONY : nodep

# Rule to build all files generated by this target.
CMakeFiles/nodep.dir/build: nodep

.PHONY : CMakeFiles/nodep.dir/build

CMakeFiles/nodep.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nodep.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nodep.dir/clean

CMakeFiles/nodep.dir/depend:
	cd /home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft /home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft /home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft/build /home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft/build /home/lmartinez/SOFTWARE/smartsoft-ace-mdsd-v3/repos/perception_components/ColorSegmentation/smartsoft/build/CMakeFiles/nodep.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nodep.dir/depend

