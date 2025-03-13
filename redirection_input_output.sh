#!/bin/bash
# Redirection
# This script makes an index of important config files,
# puts them together in a backup file and allows for
# adding comment for each file.
# The following is an example that shows how you can alternate 
# between file input and command line input:
# Usage:
# touch no_comment.tmp
# Output file is in sysconfig.out

CONFIG="sysconfig.out"
rm "$CONFIG" 2>redirect_err

echo "Output will be saved in $CONFIG."

# Create fd 7 with the same target as fd 0.
# This will save stdin value.
echo "Open fd 7"
exec 7<&0

# Update fd 0 to target file /etc/passwd
exec < /etc/passwd

# Read the first line of /etc/passwd
read rootpasswd

echo 'Saving root account info ...'
echo "Your root account info: " >> "$CONFIG"
echo $rootpasswd >> "$CONFIG"

# Update fd 0 to target fd 7.
# Close fd 7.
echo "Close fd 7"
exec 0<&7 7<&-

echo -n "Enter comment or [ENTER] for no comment: "
read comment
echo $comment >> "$CONFIG"

echo "Saving hosts information ..."

# First prepare a hosts file not containing any comments
TEMP="no_comment.tmp"
cat /etc/hosts | grep -v "^#" > "$TEMP"


# Reopen the fd 7
echo "Reopen fd 7"
exec 7<&0
exec < "$TEMP"

read ip1 name1 alias1
read ip2 name2 alias2

echo "Your localhost configuration:" >> "$CONFIG"

echo "$ip1 $name1 $alias1" >> "$CONFIG"
echo "$ip2 $name2 $alias2" >> "$CONFIG"

# Close fd 7
echo "Close fd 7"
exec 0<&7 7<&-

echo -n "Enter comment or [ENTER] for no comment: "
read comment
echo $comment >> "$CONFIG"

