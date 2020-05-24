#!/usr/bin/env bash

set -e

if [[ "$0" =~ zsh$ ]]; then

	echo "Enter your password when prompted"
	chsh -s /bin/zsh

fi
