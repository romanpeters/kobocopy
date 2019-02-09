#! /bin/bash

LOCAL_PATH="/home/username/kobocopy/*"
REMOTE_PATH="/mnt/onboard/"
USER="root"
HOST="192.168.xx.xx"  # you can find your e-readers IP under Settings > Device information

# copy over ssh
scp -oKexAlgorithms=+diffie-hellman-group1-sha1 $LOCAL_PATH $USER@$HOST:$REMOTE_PATH

# emulate hardware connect and disconnect
# this will trigger a synchronisation with the e-readers internal database
ssh $USER@$HOST -oKexAlgorithms=+diffie-hellman-group1-sha1 \
  nohup 'echo usb plug add >>/tmp/nickel-hardware-status; sleep 5; echo usb plug remove>>/tmp/nickel-hardware-status'
