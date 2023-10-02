#!/bin/bash

sudo apt update
sudo apt install sshpass openssh-client

# Define the servers as an array
servers=("user@server1" "user@server2")
file_path="${{ github.workspace }}/$LOCAL_FILE"

# Loop through the servers and send the file
for server in "${servers[@]}"; do
  sshpass -p "$LINUX_PASS" scp -r "$file_path" "$server:REMOTE_PATH"
done


