#!bin/bash
#if else
read -p "Enter your mark" mark
if [[ $mark -ge 80 ]]
then
	echo "Your first division"
elif [[ $mark -ge 60 ]]
then
	echo "Your second division"
elif [[ $mark -ge 40 ]]
then 
	echo "Your third division"
else
	echo "Your failed"
fi
