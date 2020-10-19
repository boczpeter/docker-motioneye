#!/bin/bash

docker run -d --device=/dev/video0 -p 8765:8765 -e TZ="Europe/Budapest" -v ./conf:/etc/motioneye  -v ./camera:/var/lib/motioneye -e UID=1000 -e GID=1000  djaydev/motioneye
