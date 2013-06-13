export PS1="\u$ "
export CLICOLOR=1

e() {
    emacs ~/.bash_profile
    source ~/.bash_profile 
}
