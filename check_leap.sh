#!/bib/bash
# This script checks if a year is a leap year.
# Usage: ./leap_year.sh year
# Check the number of arguments. If it is not 1, print a message and exit.
if [[ $# -ne 1 ]]
then
	echo "Usage: $0 year"
	exit 1
fi
# Get the year from the user.
year=$(echo $1 | grep -E "^[0-9]+$")
# Check if the year is a leap year.
if ((
	("$year" % 400) == "0" 	)) ||
((
	("$year" % 4 == "0") &&
	("$year" % 100 != 0)
))
then
	echo "$year is a leap year."
else
	echo "$year is not a leap year."
fi
# Simple arithmetic using (( )) construct.
num1=10
num2=20
if(( (num1+num2) > 20 ))
then
	echo "The sum is greater than 20."
fi

