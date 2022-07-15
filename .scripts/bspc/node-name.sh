#!/usr/bin/env bash

# pass in an id to ge the name
xprop -id $id | grep -G "^WM_NAME(STRING) = " | awk -F'"' '{ print $2 }'

