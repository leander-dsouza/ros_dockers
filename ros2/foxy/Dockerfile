# ROS2 Foxy
FROM ros:foxy

# Prevent console from interacting with the user
ARG DEBIAN_FRONTEND=noninteractive

# This is required else apt-get update throws Hash mismatch error
RUN apt-get clean && rm -rf /var/lib/apt/lists/* && apt-get update -yqqq

# Set folder for RUNTIME_DIR for RViz2
RUN mkdir tmp/runtime-root && chmod 0700 tmp/runtime-root
ENV XDG_RUNTIME_DIR='/tmp/runtime-root'

# Install RViz2 and Gazebo
RUN apt-get install --no-install-recommends -yqqq \
    ros-$ROS_DISTRO-rviz2 \
    ros-$ROS_DISTRO-gazebo-ros

# Optional
#--------------
# Add additional dependencies here as a separate step
# Don't modify above steps, as it will trigger a rebuild

# Non Python/ROS Dependencies
# RUN apt-get install --no-install-recommends -yqqq \
#     vim

# Python Dependencies
# RUN apt-get install --no-install-recommends -yqqq \
#     python-pip

# ROS Dependencies
# RUN apt-get install --no-install-recommends -yqqq \
#     ros-$ROS_DISTRO-xacro
