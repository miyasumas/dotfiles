autoload -Uz colors
colors

# zsh_history
export HISTFILE="$XDG_STATE_HOME/zsh_history"

# prompt
PROMPT='[%n@%m %~]$ '

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

# gcloud
if [ -f "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk" ]; then
    source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
    source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"
fi

# anyenv
eval "$(anyenv init -)"

# direnv
eval "$(direnv hook zsh)"

# launchpad
alias rlp='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
