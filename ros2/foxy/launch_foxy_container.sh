#!/bin/bash
xhost +local:root

docker run -it -d --privileged --net=host \
--name lsd_foxy_test \
-v ~/workspaces/ros2/foxy/static_ws/src:/static_ws/src \
-v ~/workspaces/ros2/foxy/dynamic_ws/src:/dynamic_ws/src \
-v ~/workspaces/ros2/foxy/throwaway_ws/src:/throwaway_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
 lsd_foxy:latest

xhost -local:root
