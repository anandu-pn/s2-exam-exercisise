#!/bin/bash
if [[ $# -eq 3 ]]
then
	if [[ $1 =~ ^[0-9]+$  ]] && [[ $2 =~ ^[0-9]+$  ]] && [[ $3 =~ ^[0-9]+$  ]]
	then
		if [[ $1 -gt $2 ]] && [[ $1 -gt $3 ]]
		then
			echo "$1 is largest number"
		elif [[ $2 -gt $3  ]]
		then
			echo "$2 is largest number"
		else 
			echo "$3 is largest number"
		fi	
	else
		echo "only enter no strings allowed"
	fi	
else
	echo "Enter valid arguments"
fi
