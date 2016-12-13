#!/bin/bash

BASEDIR=`pwd`
BACKUP_DIR=$BASEDIR/backup/`date +'%Y%m%d%H%M%S'`
DOTFILES=(".vimrc" ".bashrc" ".bash_profile" ".profile" ".inputrc" ".tmux.conf")

for f in ${DOTFILES[@]}; do
	if [ ! -L ~/$f ]; then
		if [ ! -d $BACKUP_DIR ]; then
			mkdir -p $BACKUP_DIR
		fi
		mv ~/$f $BACKUP_DIR
	else
		rm -f ~/$f
	fi
	ln -sv $BASEDIR/$f ~/$f
done
