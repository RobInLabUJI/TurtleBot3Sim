#!/usr/bin/env bash

docker run --rm -it --volume /tmp:/tmp --net=rosnet \
  --env ROS_HOSTNAME=save_map \
  --env ROS_MASTER_URI=http://tb3sim:11311 \
  --name save_map \
  tb3sim:latest /scripts/launch_save_map.sh
  
cp /tmp/map.pgm .
cp /tmp/map.yaml .
