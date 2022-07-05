#!/bin/bash

BASEDIR=`pwd`
XDG_CONFIG_HOME=$HOME/.config
mkdir -p $XDG_CONFIG_HOME

# XDG Base Directory Specification
ln -svf "$BASEDIR/config/"* $XDG_CONFIG_HOME

# vim
ln -svfn "$BASEDIR/config/vim" $HOME/.vim

# bash
ln -svf "$BASEDIR/config/bash/.profile" $HOME/.profile
ln -svf "$BASEDIR/config/bash/.bash_profile" $HOME/.bash_profile
ln -svf "$BASEDIR/config/bash/.bashrc" $HOME/.bashrc

# zsh
ln -svf "$BASEDIR/config/zsh/.zshenv" $HOME/.zshenv
ln -svf "$BASEDIR/config/zsh/.zshrc" $HOME/.zshrc
