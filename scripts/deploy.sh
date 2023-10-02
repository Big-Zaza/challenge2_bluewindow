#!/bin/bash

sudo apt update
sudo apt install sshpass openssh-client

sshpass -p "team4" scp -r  ./src/Average.php ubuntu@52.87.204.29:/home/ubuntu


