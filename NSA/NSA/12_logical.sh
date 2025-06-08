#!/bin/bash
#to use logicl operator in bash
#AND
read -p "what is your age " age
read -p "Your country: " coll
con=${coll,,}
if [[ $age -ge 18 ]] && [[ $con == "india" ]]
then 
	echo "You can vote"
else
	echo "You cant vote"
fi
#or use ||
#not use
