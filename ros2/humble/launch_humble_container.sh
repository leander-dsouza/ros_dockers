#!/bin/bash
xhost +local:root

docker run -it -d --privileged --net=host \
--name lsd_humble_test \
-v ~/workspaces/ros2/humble/static_ws/src:/static_ws/src \
-v ~/workspaces/ros2/humble/dynamic_ws/src:/dynamic_ws/src \
-v ~/workspaces/ros2/humble/throwaway_ws/src:/throwaway_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
--runtime=nvidia \
 lsd_humble:latest

xhost -local:root
