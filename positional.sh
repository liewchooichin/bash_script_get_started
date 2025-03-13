#!/bin/bash
# Positional parameters
echo "The name of this script is: $0, \$0"
echo "The first argument is: $1"
echo "The second argument is: $2"
echo "The third argument is: $3"
echo "$1 is the first positional parameter, \$1."
echo "$2 is the second positional parameter, \$2."
echo "$3 is the third positional parameter, \$3."
echo "The total number of arguments is: $#, \$#"
echo "The value of all the arguments is: $@, \$@"
echo "The exit status of the most recently run process is: $?, \$?"
echo "The process ID of this script is: $$, \$\$"
echo "The process ID of the last run background process is: $!, \$!"
echo "The options supplied to this script are: $-, \$-"

