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
CMAKE_SOURCE_DIR = /home/rosmosys/workspace/FaceDetection/smartsoft

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rosmosys/workspace/FaceDetection/smartsoft/build

# Include any dependencies generated for this target.
include CMakeFiles/FaceDetection.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FaceDetection.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FaceDetection.dir/flags.make

CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o: ../src/CaptureSensor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src/CaptureSensor.cc

CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src/CaptureSensor.cc > CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.i

CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src/CaptureSensor.cc -o CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.s

CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o.requires

CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o.provides: CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o.provides

CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o


CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o: ../src/CompHandler.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src/CompHandler.cc

CMakeFiles/FaceDetection.dir/src/CompHandler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src/CompHandler.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src/CompHandler.cc > CMakeFiles/FaceDetection.dir/src/CompHandler.cc.i

CMakeFiles/FaceDetection.dir/src/CompHandler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src/CompHandler.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src/CompHandler.cc -o CMakeFiles/FaceDetection.dir/src/CompHandler.cc.s

CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o.requires

CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o.provides: CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o.provides

CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o


CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o: ../src/SmartStateChangeHandler.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src/SmartStateChangeHandler.cc

CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src/SmartStateChangeHandler.cc > CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.i

CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src/SmartStateChangeHandler.cc -o CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.s

CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o.requires

CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o.provides: CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o.provides

CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o


CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o: ../src/FaceDetectionCore.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src/FaceDetectionCore.cc

CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src/FaceDetectionCore.cc > CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.i

CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src/FaceDetectionCore.cc -o CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.s

CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o.requires

CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o.provides: CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o.provides

CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o


CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o: ../src-gen/FaceDetection.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetection.cc

CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetection.cc > CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.i

CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetection.cc -o CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.s

CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o.requires

CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o.provides: CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o.provides

CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o


CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o: ../src-gen/CaptureSensorCore.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/CaptureSensorCore.cc

CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/CaptureSensorCore.cc > CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.i

CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/CaptureSensorCore.cc -o CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.s

CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o.requires

CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o.provides: CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o.provides

CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o


CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o: ../src-gen/RGBImagePushServiceInUpcallManager.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/RGBImagePushServiceInUpcallManager.cc

CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/RGBImagePushServiceInUpcallManager.cc > CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.i

CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/RGBImagePushServiceInUpcallManager.cc -o CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.s

CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o.requires

CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o.provides: CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o.provides

CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o


CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o: ../src-gen/FaceDetectionImpl.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionImpl.cc

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionImpl.cc > CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.i

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionImpl.cc -o CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.s

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o.requires

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o.provides: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o.provides

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o


CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o: ../src-gen/FaceDetectionExtension.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionExtension.cc

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionExtension.cc > CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.i

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionExtension.cc -o CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.s

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o.requires

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o.provides: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o.provides

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o


CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o: ../src-gen/FaceDetectionAcePortFactory.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionAcePortFactory.cc

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionAcePortFactory.cc > CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.i

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/FaceDetectionAcePortFactory.cc -o CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.s

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o.requires

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o.provides: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o.provides

CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o


CMakeFiles/FaceDetection.dir/src-gen/main.cc.o: CMakeFiles/FaceDetection.dir/flags.make
CMakeFiles/FaceDetection.dir/src-gen/main.cc.o: ../src-gen/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/FaceDetection.dir/src-gen/main.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FaceDetection.dir/src-gen/main.cc.o -c /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/main.cc

CMakeFiles/FaceDetection.dir/src-gen/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FaceDetection.dir/src-gen/main.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/main.cc > CMakeFiles/FaceDetection.dir/src-gen/main.cc.i

CMakeFiles/FaceDetection.dir/src-gen/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FaceDetection.dir/src-gen/main.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rosmosys/workspace/FaceDetection/smartsoft/src-gen/main.cc -o CMakeFiles/FaceDetection.dir/src-gen/main.cc.s

CMakeFiles/FaceDetection.dir/src-gen/main.cc.o.requires:

.PHONY : CMakeFiles/FaceDetection.dir/src-gen/main.cc.o.requires

CMakeFiles/FaceDetection.dir/src-gen/main.cc.o.provides: CMakeFiles/FaceDetection.dir/src-gen/main.cc.o.requires
	$(MAKE) -f CMakeFiles/FaceDetection.dir/build.make CMakeFiles/FaceDetection.dir/src-gen/main.cc.o.provides.build
.PHONY : CMakeFiles/FaceDetection.dir/src-gen/main.cc.o.provides

CMakeFiles/FaceDetection.dir/src-gen/main.cc.o.provides.build: CMakeFiles/FaceDetection.dir/src-gen/main.cc.o


# Object files for target FaceDetection
FaceDetection_OBJECTS = \
"CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o" \
"CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o" \
"CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o" \
"CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o" \
"CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o" \
"CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o" \
"CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o" \
"CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o" \
"CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o" \
"CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o" \
"CMakeFiles/FaceDetection.dir/src-gen/main.cc.o"

# External object files for target FaceDetection
FaceDetection_EXTERNAL_OBJECTS =

FaceDetection: CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/src-gen/main.cc.o
FaceDetection: CMakeFiles/FaceDetection.dir/build.make
FaceDetection: /home/rosmosys/SOFTWARE/smartsoft/repos/AceSmartSoftFramework/build/AceSmartSoftKernel/libAceSmartSoftKernel.so.3.1.0
FaceDetection: /usr/local/lib/libopencv_stitching.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_ml.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_objdetect.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_shape.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_viz.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_highgui.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_superres.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_dnn.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_videostab.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_video.so.3.4.7
FaceDetection: /home/rosmosys/SOFTWARE/smartsoft/repos/DomainModelsRepositories/DomainVision/smartsoft/build/libDomainVision.so.1.0.0
FaceDetection: /usr/local/lib/libopencv_calib3d.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_features2d.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_videoio.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_imgcodecs.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_photo.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_imgproc.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_flann.so.3.4.7
FaceDetection: /usr/local/lib/libopencv_core.so.3.4.7
FaceDetection: /home/rosmosys/SOFTWARE/smartsoft/repos/DomainModelsRepositories/CommBasicObjects/smartsoft/build/libCommBasicObjects.so.1.0.0
FaceDetection: /opt/ACE_wrappers/lib/libACE.so
FaceDetection: /home/rosmosys/SOFTWARE/smartsoft/repos/UtilityRepository/smartXml/build/libSmartXml.so.1.0.0
FaceDetection: /home/rosmosys/SOFTWARE/smartsoft/repos/UtilityRepository/smartProperty/build/libSmartProperty.so.1.0.0
FaceDetection: CMakeFiles/FaceDetection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable FaceDetection"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FaceDetection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FaceDetection.dir/build: FaceDetection

.PHONY : CMakeFiles/FaceDetection.dir/build

CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src/CaptureSensor.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src/CompHandler.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src/SmartStateChangeHandler.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src/FaceDetectionCore.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src-gen/FaceDetection.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src-gen/CaptureSensorCore.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src-gen/RGBImagePushServiceInUpcallManager.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionImpl.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionExtension.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src-gen/FaceDetectionAcePortFactory.cc.o.requires
CMakeFiles/FaceDetection.dir/requires: CMakeFiles/FaceDetection.dir/src-gen/main.cc.o.requires

.PHONY : CMakeFiles/FaceDetection.dir/requires

CMakeFiles/FaceDetection.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FaceDetection.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FaceDetection.dir/clean

CMakeFiles/FaceDetection.dir/depend:
	cd /home/rosmosys/workspace/FaceDetection/smartsoft/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rosmosys/workspace/FaceDetection/smartsoft /home/rosmosys/workspace/FaceDetection/smartsoft /home/rosmosys/workspace/FaceDetection/smartsoft/build /home/rosmosys/workspace/FaceDetection/smartsoft/build /home/rosmosys/workspace/FaceDetection/smartsoft/build/CMakeFiles/FaceDetection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FaceDetection.dir/depend
