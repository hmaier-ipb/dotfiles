#!/bin/sh

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
    updates=0
else
	updates=$(checkupdates | wc -l )
fi
echo "$updates updates"

