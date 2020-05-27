#!/usr/bin/env bash

set -e
PYTHON_STR='python@3.8'

echo "Checking python3 symlinks..."
if [[ ! -h /usr/local/bin/python3 ]]; then
    brew link --force python@3.8
    echo "Python3 symlinks successfully created"
else
    echo "Python3 symlinks already present"
fi

echo "Checking if python is linked to python3..."
if [[ ! -h /usr/local/bin/python ]]; then
    ln -s -f /usr/local/bin/python3 /usr/local/bin/python
    echo "Enter password when prompted"
    sudo chown -R $(whoami) /usr/local/bin/python
    echo "Python successfully linked to python3"
else
    echo "Python is already linked to python3"
fi

echo "Checking if pip is linked to pip3..."
if [[ ! -h /usr/local/bin/pip ]]; then
    ln -s -f /usr/local/bin/pip3 /usr/local/bin/pip
    echo "Pip successfully linked to pip3"
else
    echo "Pip is already linked to pip3"
fi
