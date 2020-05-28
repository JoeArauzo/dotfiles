#!/usr/bin/env bash

set -e
PYTHON3_SF='/usr/local/bin/python3'
PYTHON3_STR='python@3.8'
PYTHON_SF='/usr/local/bin/python'
PIP_SF='/usr/local/bin/pip'
PIP3_SF='/usr/local/bin/pip3'

echo "Checking python3 symlinks..."
if [[ ! -h $PYTHON3_SF ]]; then
    brew link --force $PYTHON3_STR 
    echo "Python3 symlinks successfully created"
else
    echo "Python3 symlinks already present"
fi

echo "Checking if python is linked to python3..."
if [[ ! -h $PYTHON_SF ]] || 
        [[ ! ($(ls -l $PYTHON_SF | awk '{print $NF}') =~ $PYTHON3_STR) ]]; then
    ln -s -f $PYTHON3_SF $PYTHON_SF
    echo "Enter password when prompted"
    sudo chown -R $(whoami) $PYTHON_SF
    echo "Python successfully linked to python3"
else
    echo "Python is already linked to python3"
fi

echo "Checking if pip is linked to pip3..."
if [[ ! -h $PIP_SF ]]; then
    ln -s -f $PIP3_SF $PIP_SF
    echo "Pip successfully linked to pip3"
else
    echo "Pip is already linked to pip3"
fi
