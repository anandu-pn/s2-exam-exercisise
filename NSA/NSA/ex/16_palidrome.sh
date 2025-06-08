#!/bin/bash
read -p "Enter dir name: " a
if [[ $a =~ ^[0-9]+$ ]]
then
	b=$a
	pal=0
	while [[ $b -gt 0 ]]
	do
		temp=$(($b%10))
		pal=$(($pal*10+$temp))
		b=$(($b/10))
	done
	if [[ $a -eq $pal ]]
	then
		echo "$a are palidrome"
	else 
		echo "$a are not palidrome"
	fi
	
else 
	 echo "Please enter a vslid number"
fi
