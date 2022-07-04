#!/bin/bash

BASEDIR=`pwd`
BACKUP_DIR=$BASEDIR/.backup/`date +'%Y%m%d%H%M%S'`
DOTFILES=("bashrc" "bash_profile" "profile")

for f in ${DOTFILES[@]}; do
	if [ ! -L ~/.$f ]; then
		if [ ! -d $BACKUP_DIR ]; then
			mkdir -p $BACKUP_DIR
		fi
		mv ~/.$f $BACKUP_DIR
	else
		rm -f ~/.$f
	fi
	ln -sv $BASEDIR/$f ~/.$f
done

XDG_CONFIG_HOME=~/.config
mkdir -p $XDG_CONFIG_HOME
ln -svf "$BASEDIR/config/"* $XDG_CONFIG_HOME
ln -svfn "$BASEDIR/config/vim" ~/.vim

