#!/bin/bash
read -p "Enter the number: " a
if [[ $(($a % 2)) -eq 0 ]]
then
	echo "$a is even"
else 
	 echo "$a is odd"
fi
