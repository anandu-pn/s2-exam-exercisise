#!/bin/bash
read -p "Enter value" a
len=${#a}
rev_str=""
for ((i=$((len-1)); i=0;i--))
do
	rev_str="$rev_str${a[i]:1:1}"
done
if [[ rev_str == a ]]
then
	echo "reversed string $rev_str "
	echo "it is a palidrome"
else 
	echo "Not a palidrom"
fi
