#!/bin/bash

sshpass -p "$LINUX_PASS" scp -r $LOCAL_FILE $LINUX_USERNAME@$LINUX_IP:$REMOTE_PATH


