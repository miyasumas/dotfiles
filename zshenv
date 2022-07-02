export EDITOR=vim
export LANG=ja_JP.UTF-8

# PATH
if [[ "$(uname)" =~ 'Darwin' ]]; then
    export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"
elif [[ "$(uname)" =~ 'Linux' ]]; then
    brew_prefix="./linuxbrew"
    export path="${brew_prefix}/bin:${brew_prefix}/sbin:${PATH}"
fi

# MySQL
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

