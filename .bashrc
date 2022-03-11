#---------------------------
# This is my bashrc!
#---------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#VARIABLES
export EDITOR=vim

alias ls='ls --color=auto'

# PS1 is the prompt schema (edit the color here)  
#PS1='\[\033[32m\][\u@\e[0;34m\H\033[32m\] \W]\$\[\033[37m\] '
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
#PS1='\[\033[32m\][\W]\$ \n > \033[37m '
#PS1='\[\033[1;32m\]\h:\W \u$\[\033[0;39m\] '


# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# RUST
. "$HOME/.cargo/env"
