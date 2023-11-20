#!/bin/bash

while true; do
	read -p "Enter a number between 0 and 100: " number
	if [[ $number =~ ^[0-9]+$ ]]; then
		if ((number >= 0 && number <= 100)); then
			echo "Valid number"
			break
		else
			echo "Number out of range, try again"
		fi
	else
		echo "Not a valid number, try again"
	fi
done
