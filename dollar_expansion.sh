#!/bin/bash
# Dollar expansion
echo "The scripts starts now."
echo "The script is running on $BASH, version $BASH_VERSION."
echo "Get the environment variables starting with 'S':"
echo ${!S*}
echo
echo "Get the environment variables starting with 'SDK':"
echo ${!SDK*}
echo
echo "Named variables:"
echo ${NAMED_VAR:='This is a named variable.'}
echo $NAMED_VAR
echo ${NAMED_VAR}
echo "That's all."