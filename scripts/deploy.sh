#!/bin/bash

sudo apt update
sudo apt install sshpass openssh-client

sshpass -p "team4" scp -r  ./src/Average.php ubuntu@172.31.93.225:/home/ubuntu


