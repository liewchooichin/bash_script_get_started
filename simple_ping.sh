#!/bin/bash
# A simple script ping hosts.
# These hosts do not exist. It is just
# an example.
# https://manpages.ubuntu.com/manpages/oracular/en/man8/ping.8.html#exit%20status
    #    If ping does not receive any reply packets at all it will exit 
	# with code 1. If a packet count and
    #    deadline are both specified, and fewer than count packets are 
	# received by the time the deadline has
    #    arrived, it will also exit with code 1. On other error it exits 
	# with code 2. Otherwise it exits with code
    #    0. This makes it possible to use the exit code to see if a host is 
	# alive or not.
# $ ping -w 3 -c 1 10.129.10.10
# PING 10.129.10.10 (10.129.10.10) 56(84) bytes of data.

# --- 10.129.10.10 ping statistics ---
# 3 packets transmitted, 0 received, 100% packet loss, time 2043ms

# $ echo $?
# 1

ip_addr=("10.129.5.100" "10.129.5.101" "10.129.5.102" "10.129.5.103"
"1.1.1.1" "8.8.4.4" "8.8.8.8")
echo "Number of ip address is ${#ip_addr[@]}"
# Loop through the address
# ping -w
# Time to wait for a response, in seconds.
for ip in "${ip_addr[@]}"
do
	# Must NOT have the redirection, because
	# it will affect the exit code.
	ping -w 3 -c 1 "$ip" # | 1> /dev/null 2>&1
	# Need to assign the immediate exit code
	# to a var first.
	exit_code=$? 
	echo "IP $ip, Exit code $exit_code"

	# All these comparisons work.
	if test $exit_code -eq 0
	then
		echo "$ip is up"
	fi
	
	if [[ "$exit_code" -eq "0" ]]
	then
		echo "$ip is up" > /dev/null # suppress outptu
	fi
	
	if (( $exit_code == 0 ))
	then
		echo "$ip is up" > /dev/null # suppress output
	fi
	
	if [[ "$exit_code" == "1" ]]
	then
		echo "$ip is not available"
	fi
	
	if [[ "$exit_code" == "2" ]]
	then
		echo "$ip other errors."
	fi
done
