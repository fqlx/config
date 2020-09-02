export GREP_OPTIONS="--exclude-dir=node_modules --exclude-dir=.jestcache --exclude-dir=.git --exclude=*.min.* --exclude=*.map"

set -o vi

alias ls='ls -GFh'

bindkey -v

bindkey '^R' history-incremental-search-backward
