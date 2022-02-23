#!/bin/bash
xhost +local:root

docker run -it --privileged --net=host \
--name lsd_melodic_test \
-v ~/melodic_ws/src:/melodic_ws/src \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
 lsd_melodic:latest

xhost -local:root
