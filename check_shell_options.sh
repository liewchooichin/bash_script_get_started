#!/bin/bash
# Check shell options
set -o nounset
set -o noclobber
if [ -o nounset ]
	then
		echo "The option 'nounset' is on."
	else
		echo "The option 'nounset' is off."
fi
if [ -o noclobber ]
	then
		echo "The option 'noclobber' is on."
	else
		echo "The option 'noclobber' is off."
fi
