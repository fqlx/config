export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS="--exclude-dir=node_modules --exclude-dir=.jestcache --exclude-dir=.git --exclude=*.min.* --exclude=*.map"
set -o vi

alias ls='ls -GFh'
alias g='git'
