#!/bin/bash

path="/home/hmaier/Bilder/backgrounds"

choice=$(ls -1 $path | dmenu -l 10 -p "Choose a new background: ")

feh --no-fehbg --bg-scale "$path/$choice" 
