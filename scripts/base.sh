#!/bin/bash

# Installation des guest additions
apt-get -y install virtualbox-guest-utils

# Activation de l'agentfowarding
echo -e "Host *\n    ForwardAgent yes" > /home/vagrant/.ssh/config
