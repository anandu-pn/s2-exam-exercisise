#!/bin/bash
read -p "Enter num name: " inp
if [[ $inp =~ ^[0-9]+$ ]]
then
	echo "Fibanocci series:"
		a=0
		b=1
		echo -n "$a,$b"
		n=$inp
		while [[ n -gt 2 ]]
		do
			n=$((n-1))
			temp=$a
			a=$b
			b=$((temp+a))
			echo -n ", $b"
		done
else 
	 echo "Please enter a vslid number"
fi
