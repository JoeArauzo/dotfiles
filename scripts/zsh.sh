#!/usr/bin/env bash

set -e

[ ! -d ~/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [[ "$0" =~ zsh$ ]]; then

	echo "Enter your password when prompted"
	chsh -s /bin/zsh

fi
