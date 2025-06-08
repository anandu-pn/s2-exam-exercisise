line_num=3
count=1
while IFS= read -r line
do
	if [[ "$count" -eq "$line_num" ]]
	then
		echo "new line"
	fi
	echo "$line"
	((count++))
done < test2.txt > temp.txt && mv temp.txt test2.txt
