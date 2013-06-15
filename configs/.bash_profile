export PS1="\u$ "
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"

e() {
    emacs ~/.bash_profile
    source ~/.bash_profile 
}
