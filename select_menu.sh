#!/bin/bash
# Using Select
echo "Select a flower from the menu."
echo "Enter the number of the flower."
echo "Enter q to quit."

PS3="Your choice: "
flowers=( "rose" "tulip" "sea almond" "morning glory" "daisy" )
quit="q"
select name in "${flowers[@]}"
do
	case "$REPLY" in
		"$quit")
			echo "Quit"
			break
			;;
		*)
			index=$(( $REPLY - 1 ))
			echo "Here is your ${flowers[index]}"
			;;
	esac
done
