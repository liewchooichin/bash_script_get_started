#!/bin/bash
# This script gives info about a file.
# Print the usage of the script.
# Usage: ./file_info.sh filename
# Check the number of arguments. If it is not 1, print a message and exit.
if [ $# -ne 1 ]
then
	echo "Usage: $0 filename"
	exit 1
fi
# Print some info about the file.
filename=$1
echo "Properties of the file $filename:"
if [[ -e "$filename" ]]
then
	echo "The file $filename exists."
	echo " Size is $(ls -lh "$filename" | 
		cut --delimiter=' ' --fields=5)"
	echo "Type is $(file "$filename" | 
		cut --delimiter=':' --fields=2)"
	echo "Inode if $(ls -i "$filename" |
	 	cut --delimiter=' ' --fields=1)"
else
	echo "The file $filename does not exist."
	exit 2
fi
if [[ -f "$filename" ]]
then
	echo "$filename is a regular file."
fi
if [[ -d "$filename" ]]
then
	echo "$filename is a directory."
fi
