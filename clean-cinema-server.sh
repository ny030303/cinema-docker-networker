#!/bin/bash
docker rm -f `docker ps -a | grep cinema_server | awk -F" " '{print $1}'`
docker rmi `docker images | grep cinema_server | awk -F" " '{print $3}'`
