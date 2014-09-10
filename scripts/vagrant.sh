#!/bin/bash

# Variables
VAGRANT_USER=vagrant
VAGRANT_HOME=/home/${VAGRANT_USER}
VAGRANT_KEY_URL=https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub

# Sudo
echo "${VAGRANT_USER} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Vagrant ssh key
mkdir ${VAGRANT_HOME}/.ssh
cd ${VAGRANT_HOME}/.ssh
wget --no-check-certificate "${VAGRANT_KEY_URL}" -O authorized_keys
chown -R ${VAGRANT_USER}:${VAGRANT_USER} .
