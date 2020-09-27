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

# Is Rust installed? If so, source its env file so PATH is modified
# properly.
if [ -f ~/.cargo/env ]; then
    source ~/.cargo/env
fi

# Launches Google Chrome with an SSL key log file.
chrome() {
    export SSLKEYLOGFILE="${HOME}/sslkeylog.log"
    google-chrome-stable
    rm "${SSLKEYLOGFILE}"
    unset SSLKEYLOGFILE
}

m() {
    while inotifywait -e close_write "$1"; do $2; done
}

# Allow forward search of history in Bash.
stty -ixon
