#!/bin/bash
# Count number of characters in a variable:
#     echo $variable | wc -c
# $ ./exercise2.sh 
# Hello, World! is 13 char long.
# World!
# wc var has 27 char
# #var var has 26 char
# Need to minus one char from wc -c.
# Length of the encoding is 
# 1197735

# Variable to encode
# How to get characters in a string
# null_str=$1 # ok
# null_str="" # ok
null_str= # ok
a="a"
if [[ ( -z "$null_str" ) && ( "$a" == "a" ) ]]
then
	echo "Null str"
fi
string="Hello, World!"
length=${#string}
echo "$string is $length char long."
length2=$(echo $string | wc -c)
echo "wc len is $length2"
# Loop through the string
for (( i = 0; i < length; i++ )); 
do
    char="${string:i:1}"
    #echo "Character at position $i: $char"
done
# Last 6 characters
# Output:
# World!
echo "${string:7:14}"
# actual exercise
var="nef892na9s1p9asn2aJs71nIsm"
len=$(echo $var | wc -c)
echo "wc var has $len char"
len2=${#var}
echo "#var var has $len2 char"
echo 'Need to minus one char from wc -c.'
# The variable "var" is encoded 40 times in the For-Loop. 
# However, we only need the 35th value of it. When this value
# is reached, the number of characters in the variable "var" 
# should be counted and output.
for counter in {1..40}
do
	var=$(echo $var | base64)
	# At the 35th time, get the length of the string
	# the encoding is too long.
	if [[ "$counter" -eq "35" ]]
	then
		#echo -e "The 35th encoding\n$var"  # too long
		echo "Length of the encoding is "
		echo $var | wc -c
	fi
done
