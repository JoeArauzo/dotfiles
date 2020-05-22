#!/usr/bin/env bash

set -e

if [ "$0" != "/bin/zsh" ]; then

	echo "Enter your password when prompted in order to change the default shell to ZSH"
	chsh -s /bin/zsh

fi