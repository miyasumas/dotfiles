# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Alias
alias date='gdate'
alias ls='gls -G'
alias mkdir='gmkdir'
alias rm='grm'
alias du='gdu'
alias head='ghead'
alias tail='gtail'
alias sed='gsed'
alias grep='ggrep'
alias find='gfind'
alias dirname='gdirname'
alias xargs='gxargs'
alias vi='vim'

# bash history
export HISTTIMEFORMAT='[%F %T] '
export PS1='[\u@\h \w]$ '

# bash completion
if [ -d "$(brew --prefix)/etc/bash_completion.d" ]; then
    for file in `find $(brew --prefix)/etc/bash_completion.d/* ! -type d`; do
        source $file
    done
fi

# git prompt
if [ -f "$(brew --prefix git)/etc/bash_completion.d/git-prompt.sh" ]; then
    source "$(brew --prefix git)/etc/bash_completion.d/git-prompt.sh"
    GIT_PS1_SHOWDIRTYSTATE=true
    export PS1='[\u@\h \w]$(__git_ps1)$ '
fi

# git completion
if [ -f "$(brew --prefix git)/etc/bash_completion.d/git-completion.bash" ]; then
    source "$(brew --prefix git)/etc/bash_completion.d/git-completion.bash"
fi

# gcloud
if [ -f "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk" ]; then
    source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
    source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"
fi

# direnv
eval "$(direnv hook bash)"

# launchpad
alias rlp='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/yasumasa-miyasaka/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
