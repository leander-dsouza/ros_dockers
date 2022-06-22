#!/bin/bash
xhost +local:root

docker run -it -d --privileged --net=host \
--name lsd_melodic_test \
-v ~/workspaces/ros1/melodic/static_ws/src:/static_ws/src \
-v ~/workspaces/ros1/melodic/dynamic_ws/src:/dynamic_ws/src \
-v ~/workspaces/ros1/melodic/throwaway_ws/src:/throwaway_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
 lsd_melodic:latest

xhost -local:root
