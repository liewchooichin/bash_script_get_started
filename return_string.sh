#!/bin/bash
# Return a string from a function using echo or printf
# Convert a string to uppercase.
name="cats are beautiful."
result=""  # global var can be used to return result.

# Note
# Here string

# <<< is known as here-string. Instead of typing in text, 
# you give a pre-made string of text to a program. For example, 
# with such program as bc we can do bc <<< 5*4 to just get output
# for that specific case, no need to run bc interactively. Think 
# of it as the equivalent of echo '5*4' | bc.
#
# $ tr [a-z] [A-Z] <<< "cat"
# CAT

# Note that the echo will kind of like affect
# which return string the function will "return".
# The first echo will become the first return value.
function to_uppercase(){
	local param="$@"
	#echo -e "Param: $param\n"
	#printf "%s\n" "$param"
	local return_string
	return_string=$(tr [a-z] [A-Z] <<< "$param")
	#echo -e "$return_string\n"
	#result="tada"
	printf "%s\n" "$return_string"
}

# invoke the function and store is result to
# a var.
result=$(to_uppercase "$name")
to_uppercase this is a line

# Display the result
echo -e "Old string:\n\t$name"
echo -e "New string:\n\t$result"
