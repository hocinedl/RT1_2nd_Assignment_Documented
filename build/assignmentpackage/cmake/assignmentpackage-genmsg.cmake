# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "assignmentpackage: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iassignmentpackage:/root/Desktop/workspace_ass/src/assignmentpackage/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(assignmentpackage_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg" NAME_WE)
add_custom_target(_assignmentpackage_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignmentpackage" "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg" ""
)

get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv" NAME_WE)
add_custom_target(_assignmentpackage_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignmentpackage" "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignmentpackage
)

### Generating Services
_generate_srv_cpp(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignmentpackage
)

### Generating Module File
_generate_module_cpp(assignmentpackage
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignmentpackage
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(assignmentpackage_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(assignmentpackage_generate_messages assignmentpackage_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_cpp _assignmentpackage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_cpp _assignmentpackage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignmentpackage_gencpp)
add_dependencies(assignmentpackage_gencpp assignmentpackage_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignmentpackage_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignmentpackage
)

### Generating Services
_generate_srv_eus(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignmentpackage
)

### Generating Module File
_generate_module_eus(assignmentpackage
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignmentpackage
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(assignmentpackage_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(assignmentpackage_generate_messages assignmentpackage_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_eus _assignmentpackage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_eus _assignmentpackage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignmentpackage_geneus)
add_dependencies(assignmentpackage_geneus assignmentpackage_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignmentpackage_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignmentpackage
)

### Generating Services
_generate_srv_lisp(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignmentpackage
)

### Generating Module File
_generate_module_lisp(assignmentpackage
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignmentpackage
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(assignmentpackage_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(assignmentpackage_generate_messages assignmentpackage_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_lisp _assignmentpackage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_lisp _assignmentpackage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignmentpackage_genlisp)
add_dependencies(assignmentpackage_genlisp assignmentpackage_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignmentpackage_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignmentpackage
)

### Generating Services
_generate_srv_nodejs(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignmentpackage
)

### Generating Module File
_generate_module_nodejs(assignmentpackage
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignmentpackage
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(assignmentpackage_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(assignmentpackage_generate_messages assignmentpackage_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_nodejs _assignmentpackage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_nodejs _assignmentpackage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignmentpackage_gennodejs)
add_dependencies(assignmentpackage_gennodejs assignmentpackage_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignmentpackage_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignmentpackage
)

### Generating Services
_generate_srv_py(assignmentpackage
  "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignmentpackage
)

### Generating Module File
_generate_module_py(assignmentpackage
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignmentpackage
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(assignmentpackage_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(assignmentpackage_generate_messages assignmentpackage_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/msg/my_msg.msg" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_py _assignmentpackage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Desktop/workspace_ass/src/assignmentpackage/srv/my_service.srv" NAME_WE)
add_dependencies(assignmentpackage_generate_messages_py _assignmentpackage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignmentpackage_genpy)
add_dependencies(assignmentpackage_genpy assignmentpackage_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignmentpackage_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignmentpackage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignmentpackage
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(assignmentpackage_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(assignmentpackage_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignmentpackage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assignmentpackage
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(assignmentpackage_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(assignmentpackage_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignmentpackage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignmentpackage
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(assignmentpackage_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(assignmentpackage_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignmentpackage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assignmentpackage
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(assignmentpackage_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(assignmentpackage_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignmentpackage)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignmentpackage\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignmentpackage
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(assignmentpackage_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(assignmentpackage_generate_messages_py geometry_msgs_generate_messages_py)
endif()
