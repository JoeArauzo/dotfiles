#!/usr/bin/env bash

set -e

echo "Checking of ~/.oh-my-zsh directory is present..."
if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "Directory not found.  Now installing Oh-My-ZSH..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh-My-ZSH is already installed."
fi
