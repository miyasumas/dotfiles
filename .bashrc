# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Alias
alias ls='ls -G'
alias vi=vim

# bash history
export HISTTIMEFORMAT='[%F %T] '

# bash completion
if [ -d "$(brew --prefix)/etc/bash_completion.d" ]; then
    for file in `find $(brew --prefix)/etc/bash_completion.d/* ! -type d`; do
        source $file
    done
fi

# git prompt
if [ -f "$(brew --prefix git)/etc/bash_completion.d/git-prompt.sh" ]; then
    source "$(brew --prefix git)/etc/bash_completion.d/git-prompt.sh"
fi

# git completion
if [ -f "$(brew --prefix git)/etc/bash_completion.d/git-completion.bash" ]; then
    source "$(brew --prefix git)/etc/bash_completion.d/git-completion.bash"
fi

# PROMPT
if which __git_ps1 > /dev/null 2>&1; then
    GIT_PS1_SHOWDIRTYSTATE=true
    export PS1='[\u@\h \w]$(__git_ps1)$ '
fi
