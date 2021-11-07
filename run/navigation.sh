#!/usr/bin/env bash

cp map.pgm /tmp
cp map.yaml /tmp

rocker --nvidia --x11 --volume /tmp:/tmp --net=rosnet \
  --env ROS_HOSTNAME=navigation \
  --env ROS_MASTER_URI=http://tb3sim:11311 \
  --name navigation tb3sim:latest /scripts/launch_navigation.sh

