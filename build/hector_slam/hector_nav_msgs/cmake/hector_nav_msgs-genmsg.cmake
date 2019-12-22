# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hector_nav_msgs: 0 messages, 5 services")

set(MSG_I_FLAGS "-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hector_nav_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv" NAME_WE)
add_custom_target(_hector_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_nav_msgs" "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv" NAME_WE)
add_custom_target(_hector_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_nav_msgs" "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv" "nav_msgs/Path:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv" NAME_WE)
add_custom_target(_hector_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_nav_msgs" "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv" "nav_msgs/Path:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv" NAME_WE)
add_custom_target(_hector_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_nav_msgs" "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv" NAME_WE)
add_custom_target(_hector_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_nav_msgs" "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PointStamped"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_cpp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_cpp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_cpp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_cpp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_nav_msgs
)

### Generating Module File
_generate_module_cpp(hector_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hector_nav_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hector_nav_msgs_generate_messages hector_nav_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_cpp _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_cpp _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_cpp _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_cpp _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_cpp _hector_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_nav_msgs_gencpp)
add_dependencies(hector_nav_msgs_gencpp hector_nav_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_nav_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_eus(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_eus(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_eus(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_eus(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_nav_msgs
)

### Generating Module File
_generate_module_eus(hector_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hector_nav_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hector_nav_msgs_generate_messages hector_nav_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_eus _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_eus _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_eus _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_eus _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_eus _hector_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_nav_msgs_geneus)
add_dependencies(hector_nav_msgs_geneus hector_nav_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_nav_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_lisp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_lisp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_lisp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_lisp(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_nav_msgs
)

### Generating Module File
_generate_module_lisp(hector_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hector_nav_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hector_nav_msgs_generate_messages hector_nav_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_lisp _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_lisp _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_lisp _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_lisp _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_lisp _hector_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_nav_msgs_genlisp)
add_dependencies(hector_nav_msgs_genlisp hector_nav_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_nav_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_nodejs(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_nodejs(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_nodejs(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_nodejs(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_nav_msgs
)

### Generating Module File
_generate_module_nodejs(hector_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hector_nav_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hector_nav_msgs_generate_messages hector_nav_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_nodejs _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_nodejs _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_nodejs _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_nodejs _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_nodejs _hector_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_nav_msgs_gennodejs)
add_dependencies(hector_nav_msgs_gennodejs hector_nav_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_nav_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_py(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_py(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_py(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs
)
_generate_srv_py(hector_nav_msgs
  "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs
)

### Generating Module File
_generate_module_py(hector_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hector_nav_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hector_nav_msgs_generate_messages hector_nav_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetSearchPosition.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_py _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRecoveryInfo.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_py _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetRobotTrajectory.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_py _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetDistanceToObstacle.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_py _hector_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rodrigo/catkin_ws/src/hector_slam/hector_nav_msgs/srv/GetNormal.srv" NAME_WE)
add_dependencies(hector_nav_msgs_generate_messages_py _hector_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_nav_msgs_genpy)
add_dependencies(hector_nav_msgs_genpy hector_nav_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_nav_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_nav_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(hector_nav_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hector_nav_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_nav_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(hector_nav_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hector_nav_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_nav_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(hector_nav_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hector_nav_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_nav_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(hector_nav_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hector_nav_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_nav_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(hector_nav_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hector_nav_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
