#!/bin/bash
#switch case
echo "provide an option"
echo "a for print date"
echo "b for list scripts"
echo "c for current location"
read choice
case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Enter valid input"
esac
