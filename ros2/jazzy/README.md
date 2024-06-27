# ROS2 Jazzy

## Tutorial

* Clone all the jazzy-compatible repositories at `~/workspaces/ros1/jazzy/$WORKSPACE$_ws/src/`, where `$WORKSPACE$` can be any of the following - `{static_ws, dynamic_ws, throwaway_ws}`.

* The docker compose [file](docker-compose.yaml) just has some installations for the corresponding rviz and gazebo versions for the specified ros distro. It also includes GPU support.

* Build the Docker image:

      docker compose build

* Launch the docker container in headless mode:

      docker compose up

* To exec into the already running container:

      docker compose exec ros2 bash

* To stop the docker container:

      docker compose stop

* To terminate the docker container:

      docker compose down
