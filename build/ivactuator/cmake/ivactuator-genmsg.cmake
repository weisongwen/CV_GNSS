# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ivactuator: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iivactuator:/home/wenws/CV_GNSS/src/ivactuator/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ivactuator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg" NAME_WE)
add_custom_target(_ivactuator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ivactuator" "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ivactuator
  "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ivactuator
)

### Generating Services

### Generating Module File
_generate_module_cpp(ivactuator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ivactuator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ivactuator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ivactuator_generate_messages ivactuator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg" NAME_WE)
add_dependencies(ivactuator_generate_messages_cpp _ivactuator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ivactuator_gencpp)
add_dependencies(ivactuator_gencpp ivactuator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ivactuator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ivactuator
  "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ivactuator
)

### Generating Services

### Generating Module File
_generate_module_eus(ivactuator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ivactuator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ivactuator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ivactuator_generate_messages ivactuator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg" NAME_WE)
add_dependencies(ivactuator_generate_messages_eus _ivactuator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ivactuator_geneus)
add_dependencies(ivactuator_geneus ivactuator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ivactuator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ivactuator
  "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ivactuator
)

### Generating Services

### Generating Module File
_generate_module_lisp(ivactuator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ivactuator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ivactuator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ivactuator_generate_messages ivactuator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg" NAME_WE)
add_dependencies(ivactuator_generate_messages_lisp _ivactuator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ivactuator_genlisp)
add_dependencies(ivactuator_genlisp ivactuator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ivactuator_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ivactuator
  "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ivactuator
)

### Generating Services

### Generating Module File
_generate_module_py(ivactuator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ivactuator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ivactuator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ivactuator_generate_messages ivactuator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wenws/CV_GNSS/src/ivactuator/msg/ivactuator.msg" NAME_WE)
add_dependencies(ivactuator_generate_messages_py _ivactuator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ivactuator_genpy)
add_dependencies(ivactuator_genpy ivactuator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ivactuator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ivactuator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ivactuator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ivactuator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ivactuator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ivactuator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ivactuator_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ivactuator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ivactuator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ivactuator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ivactuator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ivactuator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ivactuator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ivactuator_generate_messages_py std_msgs_generate_messages_py)
endif()
