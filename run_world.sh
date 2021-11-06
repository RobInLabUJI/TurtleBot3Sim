#!/usr/bin/env bash

rocker --nvidia --x11 --name tb3sim tb3sim:latest /launch_tb3sim_world.sh

