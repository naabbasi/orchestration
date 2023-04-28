#!/bin/sh

docker run -d -p 5000:5000 --restart=always --name registry registry:2
docker pull nginx:1.23.1-alpine
docker tag nginx:1.23.1-alpine localhost:5000/nginx-alpine-1.23.1
docker push localhost:5000/nginx-alpine-1.23.1

 docker image remove nginx:1.23.1-alpine
 docker image remove localhost:5000/nginx-alpine-1.23.1
 docker pull localhost:5000/nginx-alpine-1.23.1