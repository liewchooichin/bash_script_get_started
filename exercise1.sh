#!/bin/bash
# Exercise 1
echo "The script starts now."
echo "The terminal you are using is: "
echo $TERM
echo "Your history file will ignore: "
echo $HISTCONTROL
echo "All the services started up in runlevel 3 are: "
ls /etc/rc3.d/S*
echo "The process id of the shell is: "
echo $$
echo "Your current working directory is: "
echo $PWD
echo "Your home directory is: "
echo $HOME
echo "That's all."
echo "Make a mistake intentionally to see what happens."
set -x -v
echo $HOMEHome
whoops
w
set +x +v

