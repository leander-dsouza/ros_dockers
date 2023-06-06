#!/bin/bash
xhost +local:root

docker run -it -d --privileged --net=host \
--name lsd_noetic_test \
-v ~/workspaces/ros1/noetic/static_ws/src:/static_ws/src \
-v ~/workspaces/ros1/noetic/dynamic_ws/src:/dynamic_ws/src \
-v ~/workspaces/ros1/noetic/throwaway_ws/src:/throwaway_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
--runtime=nvidia \
 lsd_noetic:latest

xhost -local:root
