#!/bin/bash
# Create an "If-Else" condition in the "For"-Loop that checks if the 
# variable named "var" contains the contents of the variable named "value". 
# Additionally, the variable "var" must contain more than 113,450 characters. 
# If these conditions are met, the script must then print the last 20 
# characters of the variable "var". Submit these last 20 characters as the 
# answer.

var="8dm7KsjU28B7v621Jls"
value="ERmFRMVZ0U2paTlJYTkxDZz09Cg"

for i in {1..40}
do
        var=$(echo $var | base64)
		#<---- If condition here:
		len=$(echo $var | wc -c)
		grep_pattern=$(echo $var | grep $value)
		# test for non-null string -n
		if [[ ("$len" -gt "113450") && (-n grep_pattern) ]]
		then
			# print length
			echo "Length is $len"
			# print the last 20 char
			index=$[ len-20 ]
			echo "Index ${index}"
			echo "${var:$index:$len}"
			break
		fi
done