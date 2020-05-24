#!/usr/bin/env bash

set -e

brew link --force python@3.8
ln -s -f /usr/local/bin/python3 /usr/local/bin/python

echo "Enter password when prompted"
sudo chown -R $(whoami) /usr/local/bin/python

ln -s -f /usr/local/bin/pip3 /usr/local/bin/pip
