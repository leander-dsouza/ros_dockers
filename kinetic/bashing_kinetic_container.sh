#!/bin/bash
xhost +local:root

docker exec -it \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
lsd_kinetic_test bash

xhost -local:root

