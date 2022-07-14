#!/bin/bash

path="$HOME/Bilder/backgrounds"

choice=$(ls -1 $path | dmenu -l 10 -p "Choose a new background: ")

if [[ -n "$choice" ]]; then # choice is not empty
	echo "$path/$choice" > "$path/.active-background.txt"
	feh --no-fehbg --bg-scale "$path/$choice" 
fi

