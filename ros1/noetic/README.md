# ROS1 Noetic

## Tutorial

* Clone all the noetic-compatible repositories at `~/workspaces/ros1/noetic/$WORKSPACE$_ws/src/`, where `$WORKSPACE$` can be any of the following - `{static_ws, dynamic_ws, throwaway_ws}`.

* The docker compose [file](docker-compose.yaml) just has some installations for the corresponding rviz and gazebo versions for the specified ros distro. It also includes GPU support.

* Build the Docker image:

      docker compose build

* Launch the docker container in headless mode:

      docker compose up

* To exec into the already running container:

      docker compose exec ros1 bash

* To stop the docker container:

      docker compose stop

* To terminate the docker container:

      docker compose down
