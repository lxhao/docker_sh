#!/bin/bash

sudo docker run -it --name=lyz -h lyz -v /home/samba/share/lyz/:/data -p 8888:22 ubuntu:lyz /bin/bash
