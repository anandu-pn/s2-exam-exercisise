#!/bin/bash
while true
do
	read -p "Enter 2 numbers: " a b 
	read -p "Enter the operator: " op 
	case $op in
		"+")
			let ans=$(echo "$a + $b" | bc -l)
			;;

		"-")
			let ans=$(echo "$a - $b" | bc -l)
                        ;;
		"*")
			let ans=$(echo "$a * $b" | bc -l)
                        ;;
                "/")
			let ans=$(echo "scale=3; $a/$b" | bc -l)
                        ;;
                       
                 "exit")
                  	exit 1;;  
                 *)
                 	echo "Entered invalid option retry"
                 	continue
                 	;;
      esac
      echo "$a $op $b = $ans"
done
