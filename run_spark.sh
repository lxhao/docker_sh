#!/bin/bash
hosts=`awk '{print $2}' nodes.txt`
for name in $hosts
do
	docker run -d --name $name -h $name --privileged -m 4000m -v /home/lxhao/code/shell:/data ubuntu:spark /root/run.sh
done


