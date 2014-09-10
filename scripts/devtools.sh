#!/bin/bash

apt-get update
apt-get install -y python-software-properties
apt-get install -y software-properties-common

# Installation de PHP 5.5 + MySql
debconf-set-selections <<< 'mysql-server mysql-server/root_password password vagrant'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password vagrant'
add-apt-repository -y ppa:ondrej/php5
apt-get install -y php5 mysql-server

# Installation de Ruby
apt-get install -y ruby1.9.1-full
gem install bundler -y

# Git
apt-get install -y git

# Divers
apt-get install -y curl vim htop gcc make
