#---------------------------
# This is my bashrc!
#---------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#VARIABLES
export EDITOR=vim

alias ls='ls --color=auto'

# PS1 is the prompt schema (edit the color here)  
# default prompt -> user, host, path
#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '

# minimal prompt -> just path (messes up)
PS1=' \[\[\033[01;34m\]\w \n \[\033[01;32m\]\$\[\033[00m\] ' 
#PS2='> '


# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Source rust cargo directory
source $HOME/.cargo/env
