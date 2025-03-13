#!/bin/bash
# Wait until a file exist
filename="until_now.txt"
# wait for the file
until [[ -f $filename ]]
do 
	echo "Touch a file name until_now.txt"
	echo "Waiting for a file ..."
	sleep 3
done
echo "The file is here."
echo $(ls -al $filename)
