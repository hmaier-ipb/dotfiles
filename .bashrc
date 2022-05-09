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

# minimal prompt -> just path
PS1='\[\033[01;34m\]\w \$\[\033[00m\]\n\033[01;32m\]>\033[00m\] '


# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# RUST
if [[ "$HOSTNAME" == "wooden-arch-box" ]]; then
	. "$HOME/.cargo/env"
fi
