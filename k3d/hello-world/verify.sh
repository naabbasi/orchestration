#!/bin/sh

docker build --tag helloworld:v1.0 .
docker images | grep helloworld
docker run --rm helloworld:v1.0

# Remove the image
docker rmi helloworld:v1.0 
