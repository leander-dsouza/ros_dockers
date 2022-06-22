# ROS2 Kinetic

## Tutorial

* Clone all the kinetic-compatible repositories at `~/workspaces/kinetic`.
<br/>The `launch_docker_container.sh` script will generate a symlink connecting all these repositories to container. In this way, editing the source code of any repository will automatically update the container, and reduce the software bloat on it.

* Build the Dockerfile in the repository:

      docker build --pull -t lsd_kinetic:latest .

* Launch the docker container:

      ./launch_kinetic_container.sh

* Use the already initialized docker container:

      ./bashing_kinetic_container.sh

* To terminate the docker container:

      ./stop_kinetic_container.sh

### Optional

* To use the same docker container in another terminal:

      docker start lsd_kinetic_test && ./bashing_kinetic_container.sh

* To build a fresh image from scratch and remove all cache:

      docker build --no-cache --pull -t lsd_kinetic:latest .
