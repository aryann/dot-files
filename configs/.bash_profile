export PS1='\u$ '
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

if [[ $(which caffeinate) ]]; then
    alias ssh='caffeinate -i ssh'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

e() {
    emacs ~/.bash_profile
    source ~/.bash_profile
}

changemac() {
    local new_mac=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g' | sed s/.$//)
    echo "New MAC address: ${new_mac}"
    sudo ifconfig en0 ether ${new_mac}
}
