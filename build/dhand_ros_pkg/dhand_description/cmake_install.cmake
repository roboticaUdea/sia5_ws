# Install script for directory: /home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/robotica/sia5_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robotica/sia5_ws/build/dhand_ros_pkg/dhand_description/catkin_generated/installspace/dhand_description.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/cmake" TYPE FILE FILES
    "/home/robotica/sia5_ws/build/dhand_ros_pkg/dhand_description/catkin_generated/installspace/dhand_descriptionConfig.cmake"
    "/home/robotica/sia5_ws/build/dhand_ros_pkg/dhand_description/catkin_generated/installspace/dhand_descriptionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description" TYPE FILE FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/launch" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/launch/rviz" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/launch/rviz/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/meshes/collision" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/meshes/collision/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/meshes/collision/finger" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/meshes/collision/finger/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/meshes/visual/adapter" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/meshes/visual/adapter/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/meshes/visual/base" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/meshes/visual/base/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/meshes/visual/finger/base" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/meshes/visual/finger/base/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/meshes/visual/finger/middle" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/meshes/visual/finger/middle/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/meshes/visual/finger/top" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/meshes/visual/finger/top/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/robots" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/robots/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/urdf" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/urdf/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/urdf/adapter" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/urdf/adapter/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/urdf/base" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/urdf/base/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dhand_description/urdf/finger" TYPE DIRECTORY FILES "/home/robotica/sia5_ws/src/dhand_ros_pkg/dhand_description/urdf/finger/")
endif()

