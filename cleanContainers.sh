#! /bin/sh
docker rm -f -v $(docker ps -a | awk '{print $1}') 2>/dev/null