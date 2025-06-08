#!/bin/bash
read -p "Enter dir name: " a
if [[ $a =~ ^[-]?[0-9]+(\.[0-9]+)?|[a-zA-Z]+$ ]]
then
	str=$a
	rev_str=""
	for ((i=${#str}-1;i>=0;i--))
	do
		rev_str="$rev_str${str:i:1}"
	done
	if [[ $a == $rev_str ]]
	then
		echo "$a are palidrome"
	else 
		echo "$a are not palidrome"
	fi
	
else 
	 echo "Please enter a vslid number"
fi
