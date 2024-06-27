#!/bin/bash

ROS1_DISTROS=(noetic)
ROS2_DISTROS=(jazzy)

for ros1_distro in ${ROS1_DISTROS[@]}; do
  mkdir -p ~/workspaces/ros1/$ros1_distro/static_ws/src
  mkdir -p ~/workspaces/ros1/$ros1_distro/dynamic_ws/src
  mkdir -p ~/workspaces/ros1/$ros1_distro/throwaway_ws/src
done

for ros2_distro in ${ROS2_DISTROS[@]}; do
  mkdir -p ~/workspaces/ros2/$ros2_distro/static_ws/src
  mkdir -p ~/workspaces/ros2/$ros2_distro/dynamic_ws/src
  mkdir -p ~/workspaces/ros2/$ros2_distro/throwaway_ws/src
done
