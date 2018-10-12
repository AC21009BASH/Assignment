#!/bin/bash

# Clear the screen
clear

# Loop to get selected file to create from user
finished=false;
while [ $finished == false ]; do
	# Ask user to enter a file
	read -p "Enter the name of a file to add: " fileToAdd

	# Check if the file is required by the script
	if [ "$fileToAdd" == 'checked_out' ] || [ "$fileToAdd" == 'repository.log' ] || [ "$fileToAdd" == 'backup' ]
	then
		# Send error message to user and add to log file
		echo "Invalid file name (you cannot add this file)"
		printf "$USER $UID attempted do add required file $fileToAdd in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	# If the file exists
	elif [ -f ./"$fileToAdd" ]
	then
		# Send error message to user and add to log file
		echo "Invalid file name (file does already exists)"
		printf "$USER $UID attempted do add existing file $fileToAdd in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	# Allow user to add the file
	else
		finished=true;
	fi
done

# Create a file in the repository
touch $fileToAdd

# Variables to store date and time
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

# Add entry to the log file that file was created
printf "$fileToAdd was added to directory ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log