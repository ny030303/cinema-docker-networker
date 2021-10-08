#!/bin/bash
docker rm -f `docker ps -a | awk -F" " '{print $1}'`
docker rmi `docker images | awk -F" " '{print $3}'`

