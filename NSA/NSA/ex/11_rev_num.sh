#!/bin/bash
read -p "Enter num to be rev: " a

if [[ $a =~ ^[0-9]+$ ]]
b=$a
p=0
then
	while [[ $b -gt 0 ]]
	do
		c=$(($b%10))
		p=$(($p*10+$c))
		b=$(($b/10))
	done
	echo "$p is reversed number"
else 
	 echo "Input error: Not a number"
fi
