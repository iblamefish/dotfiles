#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
	git submodule init
	git submodule update
	cd .vim
	git submodule init
	git submodule update
	cd ..
	cp .vim/vimrc .vimrc
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
	rm .vimrc
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile
