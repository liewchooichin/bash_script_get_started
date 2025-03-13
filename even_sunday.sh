#!/bin/bash
# This script is executed by cron every Sunday. 
# If the week number is even, it reminds you to put
# out the garbage cans.
# Calculate the week number using the date commands
WEEK_OFFSET=$[ $(date +"%V") % 2 ]
# If it is an even week, print a message to put out
# the garbage cans.
echo "Week offset: $(date +"%V")"

if [ $WEEK_OFFSET -eq 0 ]
then 
	echo "Week number is even."
	echo "Put out the garbage cans."
else
	echo "Week number is odd."
	echo "Do not put out the garbage cans."
fi