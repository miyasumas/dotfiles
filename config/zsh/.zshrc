# path
typeset -U path
path=(
    "/usr/local/{bin,sbin}"
    $path
)

# completion
typeset -U fpath
fpath=(
    "$(brew --prefix)/share/zsh/site-functions"(N-/)
    "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"(N-/)
    "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"(N-/)
    $fpath
)

autoload -Uz colors && colors
autoload -Uz compinit && compinit -u

# prompt
source "$(brew --prefix)/opt/zsh-git-prompt/zshrc.sh"
PROMPT='[%n@%m %~] $(git_super_status)$ '

# gnu alias
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

# launchpad
alias rlp='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'

# anyenv
eval "$(anyenv init -)"

# direnv
eval "$(direnv hook zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
