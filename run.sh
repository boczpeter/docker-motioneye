#!/bin/bash
# https://github.com/ccrisan/motioneye/wiki/Install-In-Docker

DIR=$(realpath $(dirname $0))

docker stop motioneye
docker container prune -f
docker run -d \
    --name motioneye \
    --restart=always \
    --hostname motioneye \
    --device=/dev/vchiq \
    -p 18765:8765 \
    -p 18081:8081 \
    -e TZ="Europe/Budapest" \
    -v $DIR/conf:/etc/motioneye \
    -v $DIR/camera:/var/lib/motioneye \
    -v /etc/localtime:/etc/localtime:ro \
    ccrisan/motioneye:master-armhf
