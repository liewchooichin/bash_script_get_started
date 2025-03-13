#!/bin/bash
# Shift arguments
# Unknown number of args
# Multiply the args by 100
usage="Usage: $0 num1 num2 num3 ... numN"
# Print usage
if [[ "$#" == "0" ]]
then
	echo "$usage"
	exit 1
fi
# Check the args
# The size of the args will decrement
# following each shift.
echo "Multiply by 100"
while (( $# > 0 ))
do
	if [[ -n $1 ]]
	then
		result=$(( $1 * 100 ))
		echo "$result"
	fi
# this will automatically shift the 
# args by 1 to the left.
shift 1
done