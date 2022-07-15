#!/usr/bin/env bash

nodes=$(bspc query -N -d '.focused')

for ID in $nodes; do
	bspc node $ID -t floating
done	
