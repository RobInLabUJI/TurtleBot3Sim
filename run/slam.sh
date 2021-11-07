#!/usr/bin/env bash

rocker --nvidia --x11 --volume /tmp:/tmp --net=rosnet \
  --env ROS_HOSTNAME=slam \
  --env ROS_MASTER_URI=http://tb3sim:11311 \
  --name slam tb3sim:latest /scripts/launch_tb3_slam.sh

