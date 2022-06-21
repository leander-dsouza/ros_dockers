#!/bin/bash
xhost +local:root

docker run -it -d --privileged --net=host \
--name lsd_humble_test \
-v ~/workspaces/humble_ws/src:/humble_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
 lsd_humble:latest

xhost -local:root
