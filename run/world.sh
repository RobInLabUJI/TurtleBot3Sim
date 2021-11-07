#!/usr/bin/env bash

rocker --nvidia --x11 --volume /tmp:/tmp --net=rosnet \
  --env ROS_HOSTNAME=tb3sim \
  --env ROS_MASTER_URI=http://tb3sim:11311 \
  --name tb3sim tb3sim:latest /scripts/launch_tb3sim_world.sh

