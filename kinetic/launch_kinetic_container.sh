#!/bin/bash
xhost +local:root

docker run -it --privileged --net=host \
--name lsd_kinetic_test \
-v ~/workspaces/kinetic_ws/src:/kinetic_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
 lsd_kinetic:latest

xhost -local:root
