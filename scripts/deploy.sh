#!/bin/bash

# FTP server information
FTP_HOST="$FTP_HOST"  # Replace with your FTP server address
FTP_USERNAME="$FTP_USERNAME"  # Use the FTP username stored in GitHub Secrets
FTP_PASSWORD="$FTP_PASSWORD"  # Use the FTP password stored in GitHub Secrets

# Local and remote file paths
LOCAL_FILE="$LOCAL_FILE" # Path to the PHP file to be deployed
REMOTE_PATH="$REMOTE_PATH"  # Remote path on the FTP server

#Install the lftp command
sudo apt-get install lftp
# Connect to FTP server and transfer the file
lftp -c "
open $FTP_HOST  # Open connection to the FTP server
user $FTP_USERNAME $FTP_PASSWORD  # Provide FTP username and password for authentication

# Change local and remote directories
lcd $(dirname $LOCAL_FILE)  # Change to the directory containing the PHP file
cd $REMOTE_PATH  # Change to the desired remote directory

put $(basename $LOCAL_FILE)  # Upload the PHP file to the FTP server

quit  # Terminate FTP session
"
