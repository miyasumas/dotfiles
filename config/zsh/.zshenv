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
#export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_STATE_HOME/zsh_history"
export HISTSIZE=12000
export SAVEHIST=10000

# readline
export INPUTRC=".config/readline/inputrc"

# Brew
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_BUNDLE_NO_LOCK=1

# asdf
export ASDF_TERRAFORM_LEGACY_FILE_SUPPORT=yes
