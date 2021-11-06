#!/usr/bin/env bash

source "/opt/ros/$ROS_DISTRO/setup.bash"
source "$HOME/catkin_ws/devel/setup.bash"

export TURTLEBOT3_MODEL=burger
roslaunch turtlebot3_slam turtlebot3_slam.launch

