# Sets up emacs server.
export ALTERNATE_EDITOR=''
alias e='emacsclient --tty'
alias emacs=e
export EDITOR='emacsclient --tty'

b() {
    e ~/dot-files/configs/bash.sh
    source ~/.bashrc || source ~/.bash_profile
}

if [ -d ~/go ]; then
    export GOPATH=~/go
fi

# Improvements to history.
shopt -s histappend
shopt -s cmdhist
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth
export HISTIGNORE='fg:bg:history'
export PROMPT_COMMAND='history -a'
