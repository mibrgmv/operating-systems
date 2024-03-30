#!/bin/bash

while true;
do
	read line
	echo "$line" > pipe
	if [ "$line" == "QUIT" ]; then
	    echo "DONE"
	    exit 0
	fi
	if [ "$line" != "+" && "$line" != "*" && "$line" =~ [^0-9] ]; then
	    echo "GENERATOR ERROR"
	    exit 1
	fi
done
