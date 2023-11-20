#!/bin/bash

# Define the range of numbers
numbers=$(seq 0 5 100)

# Open rofi and pipe its output to another script
selected_number=$(echo -e "$numbers" | rofi -dmenu)

if [[ $selected_number =~ ^[0-9]+$ && $selected_number -ge 0 && $selected_number -le 100 ]]; then
	echo "Selected percentage of the left monitor: $selected_number"
	# Compute the selected percentage of 1440
	left_part=$((selected_number * 3440 / 100))
	right_part=$((3440 - left_part))

	xrandr --delmonitor DP-2-1
	xrandr --delmonitor DP-2-2

	# Config for equal left and right parts:
	xrandr --setmonitor DP-2-1 $left_part/400x1440/335+0+0 DP-2
	xrandr --setmonitor DP-2-2 $right_part/400x1440/335+$left_part+0 none
else
	echo "Not a valid percentage"
fi
