#!/bin/bash

declare -a config_files

config_files=(
	"shell scripts"
	"$HOME/.config/bspwm/bspwmrc" 
	"$HOME/.config/sxhkd/sxhkdrc"
	"$HOME/.bash_aliases"
	"$HOME/.bashrc"
	"$HOME/.vimrc"
	"$HOME/.ssh/config"
	"$HOME/.config/polybar/config"
	"$HOME/.config/nvim/init.vim"
	"openmw"
	"$HOME/.scripts/edit-config-files.sh"
	) 

# single and double quotes are different in bash
# the @ takes every array items as an single argument
# the * would match them all together
choice=$(printf '%s\n' "${config_files[@]}" | dmenu -i -l 10 -p "Which config file to edit?")

[[ "$choice" == "" ]] && exit 0
[[ "$choice" == "shell scripts" ]] && xfce4-terminal --working-directory=/home/$USER/workspace/shell && exit 0
[[ "$choice" == "openmw" ]] && xfce4-terminal --working-directory=/home/$USER/workspace/openmw-script && exit 0

xfce4-terminal --maximize --command="nvim $choice"
