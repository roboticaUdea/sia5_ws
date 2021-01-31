# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "motoman_viz_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Imotoman_viz_msgs:/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(motoman_viz_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg" NAME_WE)
add_custom_target(_motoman_viz_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_viz_msgs" "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg" "motoman_viz_msgs/EuclideanLinkTrajectoryPoint:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg" NAME_WE)
add_custom_target(_motoman_viz_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_viz_msgs" "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg" "motoman_viz_msgs/BoundingBox:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_motoman_viz_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_viz_msgs" "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg" "geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg" NAME_WE)
add_custom_target(_motoman_viz_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_viz_msgs" "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_cpp(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_cpp(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_cpp(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_viz_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(motoman_viz_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_viz_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(motoman_viz_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(motoman_viz_msgs_generate_messages motoman_viz_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_cpp _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_cpp _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_cpp _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_cpp _motoman_viz_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motoman_viz_msgs_gencpp)
add_dependencies(motoman_viz_msgs_gencpp motoman_viz_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motoman_viz_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_eus(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_eus(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_eus(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motoman_viz_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(motoman_viz_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motoman_viz_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(motoman_viz_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(motoman_viz_msgs_generate_messages motoman_viz_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_eus _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_eus _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_eus _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_eus _motoman_viz_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motoman_viz_msgs_geneus)
add_dependencies(motoman_viz_msgs_geneus motoman_viz_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motoman_viz_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_lisp(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_lisp(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_lisp(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_viz_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(motoman_viz_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_viz_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(motoman_viz_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(motoman_viz_msgs_generate_messages motoman_viz_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_lisp _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_lisp _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_lisp _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_lisp _motoman_viz_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motoman_viz_msgs_genlisp)
add_dependencies(motoman_viz_msgs_genlisp motoman_viz_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motoman_viz_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_nodejs(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_nodejs(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_nodejs(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motoman_viz_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(motoman_viz_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motoman_viz_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(motoman_viz_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(motoman_viz_msgs_generate_messages motoman_viz_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_nodejs _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_nodejs _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_nodejs _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_nodejs _motoman_viz_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motoman_viz_msgs_gennodejs)
add_dependencies(motoman_viz_msgs_gennodejs motoman_viz_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motoman_viz_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_py(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_py(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_viz_msgs
)
_generate_msg_py(motoman_viz_msgs
  "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_viz_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(motoman_viz_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_viz_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(motoman_viz_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(motoman_viz_msgs_generate_messages motoman_viz_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectory.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_py _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBoxArray.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_py _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_py _motoman_viz_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotica/sia5_ws/src/motoman_project/motoman_viz_msgs/msg/EuclideanLinkTrajectoryPoint.msg" NAME_WE)
add_dependencies(motoman_viz_msgs_generate_messages_py _motoman_viz_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motoman_viz_msgs_genpy)
add_dependencies(motoman_viz_msgs_genpy motoman_viz_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motoman_viz_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_viz_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_viz_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(motoman_viz_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(motoman_viz_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motoman_viz_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motoman_viz_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(motoman_viz_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(motoman_viz_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_viz_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_viz_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(motoman_viz_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(motoman_viz_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motoman_viz_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motoman_viz_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(motoman_viz_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(motoman_viz_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_viz_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_viz_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_viz_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(motoman_viz_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(motoman_viz_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
