#!/bin/bash
# Usage: conditions <num>
if [[ $# -ne 1 ]]
then
	echo "Usage: $0 <num>"
	exit 1
fi
value=$1
# Using [[ ]]
if [[ "$value" -gt "10" ]]
then
	echo "$value is greater than 10."
else
	echo "$value is less than 10."
fi
# Using (( ))
if (( ($value**2) > 100 ))
then
	echo "$value**2 is greater than 100."
else
	echo "$value**2 is less than 100."
fi
