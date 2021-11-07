#!/usr/bin/env bash

docker run --rm -it --net=rosnet \
  --env ROS_HOSTNAME=teleop \
  --env ROS_MASTER_URI=http://tb3sim:11311 \
  --name teleop \
  tb3sim:latest /scripts/launch_tb3_teleop.sh
