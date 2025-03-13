#!/bin/bash
# Find out whether there is any difference between
# -gt and >, etc.
num1="50"
num2="100"
# Using -gt
echo -e "\nUsing -gt"
echo -e "Use [[ ]]"
if [[ ("$num1" -gt "40") && ("$num2" -gt "90") ]]
then
	echo -e "\$num1 is $num1.\n\$num2 is $num2"
else
	echo "Something is wrong with the comparison."
fi
# Using -eq
echo -e "\nUsing -eq"
if [[ ("$num1" -eq "50") && ("$num2" -eq "100") ]]
then
	echo -e "\$num1 is $num1.\n\$num2 is $num2"
else
	echo "Something is wrong with the comparison."
fi

# Using >
echo -e "\nUsing >"
echo -e "Must use (( ))"
if (( ("$num1" > "40") && ("$num2" > "90") ))
then
	echo -e "\$num1 is $num1.\n\$num2 is $num2"
else
	echo "Something is wrong with the comparison."
fi
# Using ==
echo -e "\nUsing =="
if (( ("$num1" == "50") && ("$num2" == "100") ))
then
	echo -e "\$num1 is $num1.\n\$num2 is $num2"
else
	echo "Something is wrong with the comparison."
fi
