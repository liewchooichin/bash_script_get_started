#!/bin/bash

increase=1
decrease=1

num=10

echo "Addition: 10 + 10 = $(( $num + $num ))"
echo "Subtraction: 10 - 10 = $(( $num - $num ))"
echo "Multiplication: 10 * 10 = $(( $num * $num ))"
echo "Division: 10 / 10 = $(( $num / $num ))"
echo "Modulus: 10 % 4 = $(( $num % 4 ))"

(( increase++ ))
echo "Increase Variable: $increase"

(( decrease-- ))
echo "Decrease Variable: $decrease"