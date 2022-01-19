#!/bin/bash
#---------stopping and Deleting all docker container
echo "\e[1;93m=> Stopping and Deleting all docker container \e[0m\n"
docker rm $(docker stop $(docker ps -a -q))
echo "\e[1;92m-----Stopped & Removed Docker Containers Successfully----- \e[0m\n"
