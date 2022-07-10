#!/bin/sh

BASEDIR=`cd $(dirname $0) && pwd`

function install_homebrew() {
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Installed Homebrew."
}

function install_sdkman() {
  echo "Installing SDKMAN!..."
  curl -s "https://get.sdkman.io" | bash
  echo "Installed SDKMAN!"
}

function create_symlinks() {
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
}

# Move work directory
pushd $BASEDIR

# Homebrew
brew --version >/dev/null || install_homebrew

# SDKMAN!
ls ~/.sdkman/bin/sdkman-init.sh >/dev/null || install_sdkman

# dotfiles
create_symlinks

# Brew bundle
brew bundle --no-lock

popd