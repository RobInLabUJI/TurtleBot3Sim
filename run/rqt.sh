#!/usr/bin/env bash

rocker --nvidia --x11 --net=rosnet \
  --env ROS_HOSTNAME=rqt \
  --env ROS_MASTER_URI=http://tb3sim:11311 \
  --name rqt tb3sim:latest /scripts/launch_rqt.sh

