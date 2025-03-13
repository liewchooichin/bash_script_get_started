#!/bin/bash
my_array=(1 2 "three" 4 "five" "six seven" "8 9 10")

# all elements in the array
echo "${my_array[@]}"
echo "Number of elements is ${#my_array[@]}"

# Need to use "" or '' to prevent
# space separation.
for i in "${my_array[@]}"
do
	echo "${i}"
done
