# ROS2 Melodic

## Tutorial

* Clone all the melodic-compatible repositories at `~/workspaces/melodic`.
<br/>The `launch_docker_container.sh` script will generate a symlink connecting all these repositories to container. In this way, editing the source code of any repository will automatically update the container, and reduce the software bloat on it.

* Build the Dockerfile in the repository:

      docker build --pull -t lsd_melodic:latest .

* Launch the docker container:

      ./launch_melodic_container.sh

* Use the already initialized docker container:

      ./bashing_melodic_container.sh

* To terminate the docker container:

      ./stop_melodic_container.sh

### Optional

* To use the same docker container in another terminal:

      docker start lsd_melodic_test && ./bashing_melodic_container.sh

* To build a fresh image from scratch and remove all cache:

      docker build --no-cache --pull -t lsd_melodic:latest .
