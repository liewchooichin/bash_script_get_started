#!/bin/bash
# This script checks the disk space.
space=$(df -h |
	awk '{print $5}' |
	grep -v Use |
	sort -n |
	tail -1 |
	cut -d '%' -f 1)
alert_value="80"
# Print the usage of the script.
echo "Usage: ./disk_space.sh"
echo "The script checks the disk space."
# Compare the space available with the alert value.
if [[ $space -ge $alert_value ]]
then
	echo "The disk space is greater than "$alert_value"%."
	echo "Current disk space is "$space"%."
else
	echo "Current disk space is "$space"%."
fi