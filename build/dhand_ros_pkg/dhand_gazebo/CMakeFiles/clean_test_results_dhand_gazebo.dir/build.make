# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/robotica/sia5_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robotica/sia5_ws/build

# Utility rule file for clean_test_results_dhand_gazebo.

# Include the progress variables for this target.
include dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/progress.make

dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo:
	cd /home/robotica/sia5_ws/build/dhand_ros_pkg/dhand_gazebo && /usr/bin/python2 /opt/ros/melodic/share/catkin/cmake/test/remove_test_results.py /home/robotica/sia5_ws/build/test_results/dhand_gazebo

clean_test_results_dhand_gazebo: dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo
clean_test_results_dhand_gazebo: dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/build.make

.PHONY : clean_test_results_dhand_gazebo

# Rule to build all files generated by this target.
dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/build: clean_test_results_dhand_gazebo

.PHONY : dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/build

dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/clean:
	cd /home/robotica/sia5_ws/build/dhand_ros_pkg/dhand_gazebo && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_dhand_gazebo.dir/cmake_clean.cmake
.PHONY : dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/clean

dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/depend:
	cd /home/robotica/sia5_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robotica/sia5_ws/src /home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_gazebo /home/robotica/sia5_ws/build /home/robotica/sia5_ws/build/dhand_ros_pkg/dhand_gazebo /home/robotica/sia5_ws/build/dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dhand_ros_pkg/dhand_gazebo/CMakeFiles/clean_test_results_dhand_gazebo.dir/depend

