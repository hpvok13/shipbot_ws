################################################################################
# Set minimum required version of cmake, project name and compile options
################################################################################
cmake_minimum_required(VERSION 3.0.2)
project(shipbot_navigation)

################################################################################
# Find catkin packages and libraries for catkin and system dependencies
################################################################################
find_package(catkin REQUIRED COMPONENTS std_msgs nav_msgs roscpp tf genmsg)

################################################################################
# Setup for python modules and scripts
################################################################################

################################################################################
# Declare ROS messages, services and actions
################################################################################

################################################################################
# Declare ROS dynamic reconfigure parameters
################################################################################

################################################################################
# Declare catkin specific configuration to be passed to dependent projects
################################################################################
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES mecanumbot
  CATKIN_DEPENDS message_runtime #geometry_msgs roscpp tf
#  DEPENDS system_lib
)

################################################################################
# Build
################################################################################
include_directories(include
  ${catkin_INCLUDE_DIRS}
)

add_executable(odometry_publisher src/odometry_publisher.cpp)

target_link_libraries(odometry_publisher
  ${catkin_LIBRARIES}
)

################################################################################
# Install
################################################################################
install(DIRECTORY launch maps param rviz config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)


################################################################################
# Test
################################################################################
