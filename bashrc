alias ls='ls -G'
PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$PATH

# Python
if [ -f ~/.pythonrc ] ; then
  PYTHONSTARTUP=~/.pythonrc
fi

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

#
# Python virtualenvwrapper if avail
#
if which -s virtualenvwrapper.sh ; then
  source `which virtualenvwrapper.sh`
fi

. ~/.rvm/scripts/rvm
