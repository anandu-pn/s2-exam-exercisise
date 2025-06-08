#!/bin/bash
if [[ $# -eq 1 ]] && [[ -f $1 ]]
then
	echo "content of original file:"
	cat $1
	tac $1 > rev.txt
	echo -e "\n\nReversed content:"
	cat rev.txt
	rm rev.txt
else 
	 echo "ENter valid arguments"
fi
