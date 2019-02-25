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

# tmux
if which tmux > /dev/null 2>&1; then
    alias tmux='rm -rf /tmp/tmux* && tmux'
    test -z ${TMUX} && tmux > /dev/null 2>&1
fi

# PATH
if [ $OS = "Linux" ]; then
    BREW_PREFIX="./linuxbrew"
    export PATH="${BREW_PREFIX}/bin:${BREW_PREFIX}/sbin:${PATH}"
elif [ $OS = "Mac" ]; then
    export JAVA_HOME=$(/usr/libexec/java_home -v '1.8')
    export PATH="/usr/local/bin:/usr/local/sbin:${JAVA_HOME}/bin:${PATH}"
fi

# Go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
if which goenv > /dev/null 2>&1; then
    eval "$(goenv init -)"
fi

# Ruby
if which rbenv > /dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

# Python
if which pyenv > /dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

# node
if which nodebrew > /dev/null 2>&1; then
	export PATH="$HOME/.nodebrew/current/bin:$PATH"
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
