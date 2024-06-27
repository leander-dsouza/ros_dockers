# ROS2 Jazzy
FROM ros:jazzy

# Prevent console from interacting with the user
ARG DEBIAN_FRONTEND=noninteractive

# This is required else apt-get update throws Hash mismatch error
RUN apt-get clean && rm -rf /var/lib/apt/lists/* && apt-get update -yqqq

# Source ROS environment
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /root/.bashrc

# Added updated mesa drivers for integration with cpu - https://github.com/ros2/rviz/issues/948#issuecomment-1428979499
RUN apt-get install --no-install-recommends -y software-properties-common && \
    add-apt-repository ppa:kisak/kisak-mesa && \
    apt-get update && \
    apt-get upgrade -y

# Install RViz2 and Gazebo
RUN apt-get install --no-install-recommends -yqqq \
    ros-$ROS_DISTRO-rviz2 \
    ros-$ROS_DISTRO-ros-gz

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
