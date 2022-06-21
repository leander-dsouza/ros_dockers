#!/bin/bash
xhost +local:root

docker run -it --privileged --net=host \
--name lsd_noetic_test \
-v ~/workspaces/noetic_ws/src:/noetic_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
 lsd_noetic:latest

xhost -local:root
