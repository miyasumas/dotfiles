# path
typeset -U path
path=(
    "/usr/local/bin"
    "/usr/local/sbin"
	"/opt/homebrew/bin"
	"/opt/homebrew/sbin"
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

# bindkey
bindkey -e
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

# color
autoload -Uz colors && colors

# completion
autoload -Uz compinit && compinit -u

# git info
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
PROMPT='[%n@%m %~]$ '
RPROMPT='$vcs_info_msg_0_'
precmd(){ vcs_info }

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

# relogin shell
alias relogin='exec $SHELL -l'

# anyenv
eval "$(anyenv init - zsh)"

# direnv
eval "$(direnv hook zsh)"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

