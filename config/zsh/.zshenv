# locale
export LANG=ja_JP.UTF-8

# editor
export EDITOR=vim

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# readline
export INPUTRC=".config/readline/inputrc"

# path
export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# Brew
export HOMEBREW_NO_AUTO_UPDATE=1
