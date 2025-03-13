#!/bin/bash
# Compare strings
postal_code="123456"
if [[ $postal_code == [[:digit:]]* ]]
then echo "Postal code is valid"
else echo "Postal code is invalid"
fi
name="John Doe"
if [[ $name == J* ]]
then echo "Name is valid"
else echo "Name is invalid"
fi
