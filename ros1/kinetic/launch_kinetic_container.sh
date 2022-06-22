#!/bin/bash
xhost +local:root

docker run -it -d --privileged --net=host \
--name lsd_kinetic_test \
-v ~/workspaces/ros1/kinetic/static_ws/src:/static_ws/src \
-v ~/workspaces/ros1/kinetic/dynamic_ws/src:/dynamic_ws/src \
-v ~/workspaces/ros1/kinetic/throwaway_ws/src:/throwaway_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
 lsd_kinetic:latest

xhost -local:root
