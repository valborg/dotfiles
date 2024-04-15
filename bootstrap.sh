#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"

#git pull
#function doIt() {
# rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude "vscodeSymlinksMac.sh" -av . ~
#}
#if [ "$1" == "--force" -o "$1" == "-f" ]; then
#	doIt
#else
#	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
#	echo
#	if [[ $REPLY =~ ^[Yy]$ ]]; then
#		doIt
#	fi
#fi
#unset doIt


if [ "$1" == "--init" -o "$1" == "--deno" ]; then
	echo installing deno
	./lib/deno_install.sh
fi

if [ "$1" == "--init" -o "$1" == "--nvm" ]; then
	echo installing nvm
	./lib/nvm_install.sh
fi

if [ "$1" == "--init" -o "$1" == "--brew" ]; then
	echo installing homebrew
	./lib/homebrew_install.sh
fi


if [ "$1" == "--init" -o "$1" == "--other" ]; then
	echo installing other dependencies
	./lib/_install.sh
fi
source ~/.bash_prompt

./scripts/symlinkDotfiles.sh
./scripts/symlinkVSCodeConfig.sh
./scripts/symlinkCaptainSQL.sh

if [ "$1" == "--init" ]; then
	echo Remember to copy you environment variables into .profile
	echo Remember to get your .npmrc
	echo Remember to install openjdk
fi