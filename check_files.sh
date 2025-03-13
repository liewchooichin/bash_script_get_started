#!/bin/bash
# Checking files
echo "Check the existence of the file /var/log/messages."
if [ -e /var/log/messages ] 
	then
		echo "The file /var/log/messages exists." 
	else
		echo "The file /var/log/messages does not exist."
fi
echo "Done"
