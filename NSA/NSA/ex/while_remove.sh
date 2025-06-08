#!/bin/bash
if [[ -f $1 ]];then
	read -p "Enter the text you want to remove" text
	linenum=$(grep -on "$text" "$1" | cut -d ':' -f 1 )
	if [[ -n $linenum ]];then
	for line in $linenum
	do		
		sed -i "${line}d" "$1"
		echo "$line number line reomved "
	done
	else
		echo "No match found"
	fi
else
	echo "enter a valid file name"
fi 
