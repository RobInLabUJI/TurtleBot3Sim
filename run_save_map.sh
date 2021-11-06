#!/usr/bin/env bash

docker exec -it tb3sim /launch_save_map.sh
cp /tmp/map.pgm .
cp /tmp/map.yaml .
