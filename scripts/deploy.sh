#!/bin/bash

sudo apt update
sudo apt install sshpass openssh-client

sshpass -p "labers" scp -r /src/Average.php labers@192.168.2.18:/home/labers


