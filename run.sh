#!/bin/bash

DIR=$(realpath $(dirname $0))

docker run -d --device=/dev/video0 -p 18765:8765 -e TZ="Europe/Budapest" -v $DIR/conf:/etc/motioneye  -v $DIR/camera:/var/lib/motioneye  djaydev/motioneye
