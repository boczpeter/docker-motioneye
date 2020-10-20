#!/bin/bash

DIR=$(realpath $(dirname $0))

docker stop motioneye
docker container prune -f
docker run -d \
    --name motioneye \
    --hostname motioneye \
    --device=/dev/video0 \
    -p 18765:8765 \
    -e TZ="Europe/Budapest" \
    -v $DIR/conf:/etc/motioneye \
    -v $DIR/camera:/var/lib/motioneye \
    ccrisan/motioneye:master-amd64
    # djaydev/motioneye