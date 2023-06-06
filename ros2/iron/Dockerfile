# ROS2 iron
FROM ros:iron

# Prevent console from interacting with the user
ARG DEBIAN_FRONTEND=noninteractive

# This is required else apt-get update throws Hash mismatch error
RUN apt-get clean && rm -rf /var/lib/apt/lists/* && apt-get update -yqqq

# Set environment variables for gpu support with nvidia
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

# Set folder for RUNTIME_DIR for RViz2
RUN mkdir tmp/runtime-root && chmod 0700 tmp/runtime-root
ENV XDG_RUNTIME_DIR='/tmp/runtime-root'

# Added updated mesa drivers for integration with cpu - https://github.com/ros2/rviz/issues/948#issuecomment-1428979499
RUN apt-get install --no-install-recommends -y software-properties-common && \
    add-apt-repository ppa:kisak/kisak-mesa && \
    apt-get update && \
    apt-get upgrade -y

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
