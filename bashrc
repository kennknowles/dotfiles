alias ls='ls -G'
PATH=/usr/local/bin:$PATH

# Python
export PYTHONSTARTUP=~/.pythonrc

# Ruby
PATH=$PATH:$HOME/.rvm/bin 

# History
shopt -s histappend
unset HISTFILESIZE
HISTSIZE=1000000
HISTCONTROL=ignoreboth
HISTIGNORE=ls:bg:fg:history
HISTTIMEFORMAT='%F %T '
shopt -s cmdhist
PROMPT_COMMAND='history -a; history -n'
