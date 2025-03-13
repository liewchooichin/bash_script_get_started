#!/bin/bash
# Generate a random number.
until (( num > 8 ))
do
    # Generate a random number between 1 and 10
    num=$(( (RANDOM % 10) + 1 ))
    echo "Generated number: $num"
done
echo "Loop finished!"
