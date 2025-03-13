#!/bin/bash
# Usage: ./penguin.sh num_of_fish kind_of_fish
# This script prints a message based on the number and kind of fish.
num_of_fish=$1
kind_of_fish=$2
# Check the usage of the script. If the number of arguments is not 2, print a message and exit.
if [ $# -ne 2 ]
then
	echo "Usage: $0 num_of_fish kind_of_fish"
	exit 1
fi
# Check the number and kind of fish.
if [ $num_of_fish -gt 5 ]
then
	echo "You have given $num_of_fish $kind_of_fish"
	echo " to the penguin."
	echo "The penguin is very happy."
else
	echo "You have given $num_of_fish $kind_of_fish"
	echo "It is too little for the penguin."
fi
