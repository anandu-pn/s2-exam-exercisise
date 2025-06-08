#!/bin/bash
read -p "Enter dir name: " a
if [[ $a =~ ^[0-9]+$ ]]
then
	n=$a
	sum=$a
	if [[ a -eq 1  ||  a -eq 0 ]]
	then
		echo "factorial of $a is :1"
	else
		while [[ n -gt 1 ]]
		do
			n=$((n-1))
			sum=$((sum*n))
		done
		echo "Factorial is $sum"
	fi
else 
	 echo "Please enter a vslid number"
fi
