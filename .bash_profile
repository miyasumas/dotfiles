# OS
if [[ "$(uname)" =~ 'Darwin' ]]; then
    OS='Mac'
elif [[ "$(uname)" =~ 'Linux' ]]; then
    OS='Linux'
else
    echo "Your platform ($(uname -a)) is not supported."
fi

# tmux
if which tmux > /dev/null 2>&1; then
    alias tmux='rm -rf /tmp/tmux* && tmux'
    test -z ${TMUX} && tmux > /dev/null 2>&1
fi

# PATH
if [ $OS = "Mac" ]; then
    export PATH=/usr/local/bin:${PATH//:\/usr\/local\/bin/}
    export JAVA_HOME=$(/usr/libexec/java_home)
fi

# Ruby
if which rbenv > /dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

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
