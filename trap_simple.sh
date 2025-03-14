#!/bin/bash
# Using trap command SIGNALS

trap "echo Trap" SIGINT SIGTERM SIGTSTP
echo "pid is $$"

declare -i true=1
while true
do
	sleep 120
done