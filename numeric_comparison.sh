#!/bin/bash
# Numerical comparisons
num=$(wc --lines ./number_test.txt | 
cut --fields=1 --delimiter=' ')
if [ $num -gt 5 ]
then echo "Number of lines is greater than 5"
else echo "Number of lines is less than or equal to 5"
fi
