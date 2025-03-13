#!/bin/bash
# This script list ASCII script files in /sbin
# directory.
# The list is very long
# Using command line:
# $ cat ascii_result.txt | cut --fields 2 --delimiter ":" | sort --unique
#  a bpftrace script, ASCII text executable
#  awk or perl script, ASCII text
#  Bourne-Again shell script, ASCII text executable
#  Bourne-Again shell script, ASCII text executable, with very long lines (385)
#  C source, ASCII text
#  POSIX shell script, ASCII text executable
#  POSIX shell script, ASCII text executable, with very long lines (459)
#  Python script, ASCII text executable
#  Tcl/Tk script, ASCII text executable

# Open an output file
result="ascii_result.txt"
exec 4> "$result"
# Find the scripts
for i in $(ls /sbin)
 	do file /sbin/$i | grep ASCII >&4
 done
# close the fd
exec 4>&-
# List the different type of scripts in the
# /sbin directory
out="ascii_kinds_of_scripts.txt"
exec 5> "$out"
kinds_of_scripts=$(
	cat "$result" |
	cut --fields 2 --delimiter ":" |
	sort --unique >&5
)
exec 5>&-

