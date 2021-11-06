#!/usr/bin/env bash

source "/opt/ros/$ROS_DISTRO/setup.bash"
source "$HOME/catkin_ws/devel/setup.bash"

export TURTLEBOT3_MODEL=burger
roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

