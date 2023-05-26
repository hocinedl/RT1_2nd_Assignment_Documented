# Install script for directory: /root/Desktop/workspace_ass/src/assignment_2_2022

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/Desktop/workspace_ass/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_2_2022/action" TYPE FILE FILES "/root/Desktop/workspace_ass/src/assignment_2_2022/action/Planning.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_2_2022/msg" TYPE FILE FILES
    "/root/Desktop/workspace_ass/devel/share/assignment_2_2022/msg/PlanningAction.msg"
    "/root/Desktop/workspace_ass/devel/share/assignment_2_2022/msg/PlanningActionGoal.msg"
    "/root/Desktop/workspace_ass/devel/share/assignment_2_2022/msg/PlanningActionResult.msg"
    "/root/Desktop/workspace_ass/devel/share/assignment_2_2022/msg/PlanningActionFeedback.msg"
    "/root/Desktop/workspace_ass/devel/share/assignment_2_2022/msg/PlanningGoal.msg"
    "/root/Desktop/workspace_ass/devel/share/assignment_2_2022/msg/PlanningResult.msg"
    "/root/Desktop/workspace_ass/devel/share/assignment_2_2022/msg/PlanningFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_2_2022/cmake" TYPE FILE FILES "/root/Desktop/workspace_ass/build/assignment_2_2022/catkin_generated/installspace/assignment_2_2022-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/Desktop/workspace_ass/devel/include/assignment_2_2022")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/Desktop/workspace_ass/devel/share/roseus/ros/assignment_2_2022")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/Desktop/workspace_ass/devel/share/common-lisp/ros/assignment_2_2022")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/Desktop/workspace_ass/devel/share/gennodejs/ros/assignment_2_2022")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/root/Desktop/workspace_ass/devel/lib/python3/dist-packages/assignment_2_2022")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/Desktop/workspace_ass/devel/lib/python3/dist-packages/assignment_2_2022")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/Desktop/workspace_ass/build/assignment_2_2022/catkin_generated/installspace/assignment_2_2022.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_2_2022/cmake" TYPE FILE FILES "/root/Desktop/workspace_ass/build/assignment_2_2022/catkin_generated/installspace/assignment_2_2022-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_2_2022/cmake" TYPE FILE FILES
    "/root/Desktop/workspace_ass/build/assignment_2_2022/catkin_generated/installspace/assignment_2_2022Config.cmake"
    "/root/Desktop/workspace_ass/build/assignment_2_2022/catkin_generated/installspace/assignment_2_2022Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/assignment_2_2022" TYPE FILE FILES "/root/Desktop/workspace_ass/src/assignment_2_2022/package.xml")
endif()

