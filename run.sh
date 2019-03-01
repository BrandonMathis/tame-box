#!/usr/bin/env bash

$USER_NAME=ubuntu

# Basic Setup
apt-get update
echo '$EDITOR=vim' > ~/.bashrc

# Create User
adduser --disabled-password --gecos "" $USER_NAME
cat "$USER_NAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers

# SSH
mkdir /home/$USER_NAME/.ssh
cat ~/.ssh/authorized_keys > /home/$USER_NAME/.ssh/authorized_keys
chown -R $USER_NAME:$USER_NAME /home/$USER_NAME/.ssh

# Disbale Root SSH
echo '' > ~/.ssh/authorized_keys
