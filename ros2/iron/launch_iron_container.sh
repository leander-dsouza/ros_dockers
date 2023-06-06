#!/bin/bash
xhost +local:root

docker run -it -d --privileged --net=host \
--name lsd_iron_test \
-v ~/workspaces/ros2/iron/static_ws/src:/static_ws/src \
-v ~/workspaces/ros2/iron/dynamic_ws/src:/dynamic_ws/src \
-v ~/workspaces/ros2/iron/throwaway_ws/src:/throwaway_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
--runtime=nvidia \
 lsd_iron:latest

xhost -local:root
