#!/bin/bash

docker run -d \
 --device=/dev/video0                      # (optional) if you will use a local v4l camera \
 -p 8765:8765                              # web interface of MotionEye \
 -e TZ="Europe/Budapest"                   # your timezone \
 -v ./conf:/etc/motioneye  # configuration files \
 -v ./camera:/var/lib/motioneye   # captured movies and pictures \
 -e UID=1000                               # User ID \
 -e GID=1000                               # Group ID \
 djaydev/motioneye
