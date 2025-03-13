#!/bin/bash
# Check the exit code of the last command
echo "User is $USER"
# Use conditional if to check the exit code
if ! grep $USER /etc/passwd
then echo 'User not found'
else echo 'User found'
fi
# Use the special $? variable to check the exit code
grep $USER /etc/passwd
if [ $? -eq 0 ]
then echo 'User found'
else echo 'User not found'
fi
