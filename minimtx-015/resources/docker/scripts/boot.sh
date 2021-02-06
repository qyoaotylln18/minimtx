#!/bin/bash

# Making all required files if they are not existing.
test -f /etc/ssh/ssh_host_ecdsa_key || /usr/bin/ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -C '' -N ''
test -f /etc/ssh/ssh_host_rsa_key || /usr/bin/ssh-keygen -q -t rsa -f /etc/ssh/ssh_host_rsa_key -C '' -N ''
test -f /etc/ssh/ssh_host_ed25519_key || /usr/bin/ssh-keygen -q -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -C '' -N ''

# Change the owner to 'sysadm'.
chown -R sysadm:sysadm /home/sysadm/.ssh
chmod -R 700 /home/sysadm/.ssh

# Start SSH-Daemon.
/usr/sbin/sshd -D
