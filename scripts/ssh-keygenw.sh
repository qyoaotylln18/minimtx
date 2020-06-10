#!/bin/bash

CWD=$(pwd)
USER=$(whoami)
HOST=$(hostname)
SSH_DIR=$CWD/ssh-keys

if [ ! -e $CWD/ssh-keys ]
then
   mkdir -p $CWD/ssh-keys
fi
  
ssh-keygen -t rsa -b 4096 -C "${USER}@${HOST}" -f $SSH_DIR/id_rsa
