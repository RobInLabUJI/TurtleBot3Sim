#!/usr/bin/env bash

source "/opt/ros/$ROS_DISTRO/setup.bash"
source "$HOME/catkin_ws/devel/setup.bash"

export TURTLEBOT3_MODEL=burger
rosrun map_server map_saver -f /tmp/map

