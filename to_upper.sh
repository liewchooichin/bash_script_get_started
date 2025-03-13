#!/bin/bash
# Convert strings to uppercase.
flowers=( "rose" "tulip" "sea almond" "sunflower" "morning glory" )
len=${#flowers[@]}
echo -e "Flowers:\n${flowers[@]}"
echo -e "Number: $len"
# Test if the names are in uppercase
for name in "${flowers[@]}"
do
	if [[ "$name" != *[[:upper:]]* ]]
	then
		echo "$name is not in uppercase."
	fi
done
# Convert to uppercase
echo "Converting to uppercase"
counter=0
uppercase_flowers=()
for name in "${flowers[@]}"
do
	# Convert to uppercase
	uppercase=$(echo "$name" | tr 'a-z' 'A-Z')
	echo "$uppercase"
	uppercase_flowers+=( "$uppercase" )
	#echo "${uppercase_flowers[@]}"
	counter=$(( $counter + 1 ))
done
# Print all the names
echo "Names in uppercase."
for name in "${uppercase_flowers[@]}"
do
	echo "-- $name --"
done
