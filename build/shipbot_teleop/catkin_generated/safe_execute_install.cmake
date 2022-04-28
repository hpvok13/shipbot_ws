execute_process(COMMAND "/shipbot_ws/build/shipbot_teleop/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/shipbot_ws/build/shipbot_teleop/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
