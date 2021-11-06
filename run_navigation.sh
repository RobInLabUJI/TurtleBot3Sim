#!/usr/bin/env bash

cp map.pgm /tmp
cp map.yaml /tmp
docker exec -it tb3sim /launch_navigation.sh

