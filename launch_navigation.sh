#!/usr/bin/env bash

source "/opt/ros/$ROS_DISTRO/setup.bash"
source "$HOME/catkin_ws/devel/setup.bash"

export TURTLEBOT3_MODEL=burger
roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=/tmp/map.yaml

