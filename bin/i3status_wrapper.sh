#!/bin/sh
# sh script yuck

i3status | while : 
do
	read line
	touch $HOME/.status_messages
	echo -e "`cat $HOME/.status_messages` | $line" || exit 1
done
