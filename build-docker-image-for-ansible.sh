#!/bin/bash
#---------building images from base images
cd /home/devops/repos/Ansible-Testing-Dockerfiles/Dockerfiles/ubuntu-14 && docker build -t myubuntu14 .
cd ../ubuntu-16 && docker build -t myubuntu16 .
cd ../ubuntu-18 && docker build -t myubuntu18 .
cd ../ubuntu-20 && docker build -t myubuntu20 .
cd ../deb9 && docker build -t mydeb9 .
cd ../deb10 && docker build -t mydeb10 .
cd ../centos6 && docker build -t mycentos6 .
cd ../centos7 && docker build -t mycentos7 .
cd ../centos8 && docker build -t mycentos8 .
cd ../oel6 && docker build -t myoel6 .
cd ../oel7 && docker build -t myoel7 .
cd ../oel8 && docker build -t myoel8 .

