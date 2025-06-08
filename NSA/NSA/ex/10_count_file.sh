#!/bin/bash
read -p "Enter dir name: " a
dir="$(pwd)/$a"
if [[ -d $dir ]]
then
	num=$(find $dir -type f | wc -l)
	echo "total num of file in $dir is :$num"
else 
	 echo "$dir is not a directory"
fi
