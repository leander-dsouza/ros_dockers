# ROS Noetic
FROM ros:noetic

# Prevent console from interacting with the user
ARG DEBIAN_FRONTEND=noninteractive

# This is required else apt-get update throws Hash mismatch error
RUN apt-get clean && rm -rf /var/lib/apt/lists/* && apt-get update -yqqq

# Source ROS environment
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /root/.bashrc

# Install catkin_tools for catkin build, RViz and Gazebo
RUN apt-get install --no-install-recommends -yqqq \
    python3-catkin-tools \
    ros-$ROS_DISTRO-rviz \
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
