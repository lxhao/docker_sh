#!/bin/bash

docker ps -a --format "{{.ID}}" | while read line
do 
    docker stop ${line} && docker rm ${line}
done
