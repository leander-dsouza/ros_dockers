#!/bin/bash
xhost +local:root

docker run -it --privileged --net=host \
--name lsd_foxy_test \
-v ~/foxy_ws/src:/foxy_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
 lsd_foxy:latest

xhost -local:root
