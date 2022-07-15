#!/usr/bin/env bash

nodes=$(bspc query -N -d)

# awk -F stands for field-seperator,
# with $2 you target the second field behind the beginning string
for id in $nodes; do
	#  suppressing errors with 2>/dev/null
	raw=$(xprop -id $id 2>/dev/null)
	# raw is empty when an error occured, so check not empty
	if [[ -n $raw ]];then
		window_name=$(echo "$raw" | grep -G "^WM_NAME(STRING) = " | awk -F'"' '{ print $2 }')
		echo -e "ID: $id"
		echo -e "Name: $window_name"
	fi
done




