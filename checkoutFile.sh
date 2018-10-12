#!/bin/bash

# Variables to store Date and Time
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

# Clear the screen
clear

# List all files except script required files and directories
ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n \n"

finished=false;
while [ $finished == false ]; do
	# Ask the user to enter the name of a file to checkout
	read -p "Enter the name of a file to checkout: " toCheckout
	# Check the user is not trying to chekcout script necessary files
	if [ "$toCheckout" == 'checked_out' ] || [ "$toCheckout" == 'repository.log' ] || [ "$toCheckout" == 'backup' ]
	then
		# Send error message and add entry to log file
		echo "Invalid file name (you cannot checkout this file)"
		printf "$USER $UID attempted to checkout the file $toCheckout\t\t\t $DATE at $TIME\n" >> repository.log
	# If the file exists
	elif [ -f ./"$toCheckout" ]
	then
		finished=true;
	# If the file does not exist
	else
		# Send error message and add entry to log file
		echo "Invalid file name (file does not exist)"
		printf "$USER $UID checkut nonexistant $toCheckout in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	fi
done

# move the file to the checked_out folder where edits are allowed
mv "$toCheckout" "checked_out/"$toCheckout

# Add entry to log file
printf "$USER $UID checked out the file $toCheckout\t\t\t $DATE at $TIME\n" >> repository.log 