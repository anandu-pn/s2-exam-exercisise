#!/bin/bash
if [[ -f $1 ]];then
        read -p "Enter the text you want to inserted after:" text
        linenum=$(grep -on "$text" "$1" | cut -d ':' -f 1 )
        if [[ -n "$linenum" ]];then
		read -p "Enter the text you want to insert:" ins
        for line in $linenum
        do
		sed -i "$((line+1))i $ins" "$1"
                echo "text inserted at $line "
        done
        else
                echo "No match found"
        fi
else
        echo "enter a valid file name"
fi

