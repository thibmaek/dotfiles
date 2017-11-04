#!/usr/bin/env bash

cd ../ || return;

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
    --exclude ".gitignore" \
		--exclude ".DS_Store" \
		--exclude ".macos" \
		--exclude "bin/install_repository.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
	source "$HOME/.bash_profile";
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
