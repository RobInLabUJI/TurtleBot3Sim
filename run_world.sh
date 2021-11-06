#!/usr/bin/env bash

rocker --nvidia --x11 --volume /tmp:/tmp --name tb3sim tb3sim:latest /launch_tb3sim_world.sh

