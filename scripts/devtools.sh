#!/bin/bash

apt-get update
apt-get install python-software-properties -y

# Installation de PHP 5.5
add-apt-repository ppa:ondrej/php5
apt-get install php5 -y

# Installation de Ruby
apt-get install ruby1.9.1-full -y
gem install bundler -y
