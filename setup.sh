#!/bin/bash

BASEDIR=`pwd`
XDG_CONFIG_HOME=~/.config
mkdir -p $XDG_CONFIG_HOME

# XDG Base Directory Specification
ln -svf "$BASEDIR/config/"* $XDG_CONFIG_HOME

# vim
ln -svfn "$BASEDIR/config/vim" ~/.vim

# bash
ln -svf "$BASEDIR/config/bash/.profile" ~/.profile
ln -svf "$BASEDIR/config/bash/.bash_profile" ~/.bash_profile
ln -svf "$BASEDIR/config/bash/.bashrc" ~/.bashrc

