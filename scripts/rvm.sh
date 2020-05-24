#!/usr/bin/env bash

set -e

echo "Checking if ~/.rvm is present..."
if [[ ! -d ~/.rvm ]]; then
    echo "Directory not found.  Now installing RVM..."
    gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB 
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
else
    echo "RVM is already installed."
fi

source ~/.rvm/scripts/rvm

gem install colorls
