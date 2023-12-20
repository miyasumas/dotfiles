# OS
if [[ "$(uname)" =~ 'Darwin' ]]; then
    OS='Mac'
elif [[ "$(uname)" =~ 'Linux' ]]; then
    OS='Linux'
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 0
fi

# editor
export EDITOR=vim

# readline
export INPUTRC=".config/readline/inputrc"

# tmux
#if which tmux > /dev/null 2>&1; then
#    alias tmux='rm -rf /tmp/tmux* && tmux'
#    test -z ${TMUX} && tmux > /dev/null 2>&1
#fi

# PATH
if [ $OS = "Linux" ]; then
    BREW_PREFIX="./linuxbrew"
    export PATH="${BREW_PREFIX}/bin:${BREW_PREFIX}/sbin:${PATH}"
elif [ $OS = "Mac" ]; then
    export PATH="/usr/local/bin:/usr/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin:${PATH}"
fi

# MySQL
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

if [ -f "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc"
fi

if [ -d "${HOME}/bin" ] ; then
    PATH="${HOME}/bin:${PATH}"
fi

if [ -d "${HOME}/man" ]; then
    MANPATH="${HOME}/man:${MANPATH}"
fi

if [ -d "${HOME}/info" ]; then
    INFOPATH="${HOME}/info:${INFOPATH}"
fi

# anyenv
eval "$(anyenv init -)"

# Brew
export HOMEBREW_NO_AUTO_UPDATE=1

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/yasumasa-miyasaka/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
