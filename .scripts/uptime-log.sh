#!/usr/bin/env bash

# Make this as an alias for reboot & poweroff,
# so the complete uptime per day is logged
log="$HOME/.local/logs/worktime.log"
time=$(uptime -p)
date=$(date)
# TODO: improve formatting with sed
echo "$date $time minutes" >> $log

[[ -d $HOME/networkshare/hmaier ]] && cp $log $HOME/networkshare/hmaier/logs/


