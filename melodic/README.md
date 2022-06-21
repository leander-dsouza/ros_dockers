# ROS1 Melodic

## Tutorial

* Clone all the melodic-compatible repositories at `~/workspaces/melodic_ws`.
<br/>The `launch_docker_container.sh` script will generate a symlink connecting all these repositories to container. In this way, editing the source code of any repository will automatically update the container, and reduce the software bloat on it.

* Build the Dockerfile in the repository:

      cd ros_dockers/melodic && docker build --pull -t lsd_melodic:latest .

* Launch the docker container:

      ./launch_melodic_container.sh

* To use the already initialized docker container in another terminal:

      ./bashing_melodic_container.sh

* To terminate the docker container:

      docker stop lsd_melodic_test && docker rm lsd_melodic_test

### Optional

* The issue with the above approach is that all terminal instances of the container will be terminated, once you exit the container from the `launch_melodic_container.sh` terminal. In order to prevent this, run the following command, once you exit from `launch_melodic_container.sh`:

      docker start lsd_melodic_test

	This will enable you to create multiple terminals of the docker container using `bashing_melodic_container.sh`.

* To build a fresh image from scratch and remove all cache:

      docker build --no-cache --pull -t lsd_melodic:latest .
