#!/bin/bash

path="$HOME/Bilder/backgrounds"

choice=$(ls -1 $path | dmenu -l 10 -p "Choose a new background: ")

echo "$path/$choice" > "$path/.active-background"

feh --no-fehbg --bg-scale "$path/$choice" 
