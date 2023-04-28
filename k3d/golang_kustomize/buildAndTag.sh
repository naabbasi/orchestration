#!/bin/sh

DOCKER_BUILDKIT=0

#docker build --tag go-webserver:v1.0 . -f project/simplehttpserver/Dockerfile
docker build --tag go-webserver:v1.0 . --progress plain --no-cache
docker images | grep go-webserver
docker run --rm -p 9091:9091 go-webserver:v1.0

# Remove the image
#docker rmi go-webserver:v1.0 
