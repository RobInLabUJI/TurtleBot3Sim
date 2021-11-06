FROM osrf/ros:noetic-desktop-full-focal

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install -y ros-noetic-joy ros-noetic-teleop-twist-joy \
    ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
    ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
    ros-noetic-rosserial-python ros-noetic-rosserial-client \
    ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
    ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
    ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
    ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers \
    ros-noetic-dynamixel-sdk ros-noetic-turtlebot3-msgs ros-noetic-turtlebot3 && \
    rm -rf /var/lib/apt/lists/*
    
RUN mkdir -p ~/catkin_ws/src && \
    cd ~/catkin_ws/src && \
    git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git && \
    cd ~/catkin_ws && \
    source /opt/ros/noetic/setup.bash && catkin_make

COPY ros_entrypoint.sh /ros_entrypoint.sh

COPY launch_tb3sim_empty.sh /launch_tb3sim_empty.sh
COPY launch_tb3sim_world.sh /launch_tb3sim_world.sh
COPY launch_tb3sim_house.sh /launch_tb3sim_house.sh
COPY launch_tb3_teleop.sh /launch_tb3_teleop.sh
COPY launch_rqt.sh /launch_rqt.sh
COPY launch_tb3_slam.sh /launch_tb3_slam.sh
COPY launch_save_map.sh /launch_save_map.sh
COPY launch_navigation.sh /launch_navigation.sh
COPY launch_rviz.sh /launch_rviz.sh
