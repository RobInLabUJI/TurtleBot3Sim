#!/usr/bin/env bash

rocker --nvidia --x11 --net=rosnet \
  --env ROS_HOSTNAME=rviz \
  --env ROS_MASTER_URI=http://tb3sim:11311 \
  --name rviz tb3sim:latest /scripts/launch_rviz.sh
  
