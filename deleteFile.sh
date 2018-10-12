#!/bin/bash

# Clear the screen
clear

# Variables to store the Date and Time
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

# List all the files in the repository except script required files
ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log" -I "repository.log" -I "checked_out" -I "backups" -I "repoositories.log"
printf "\n \n"

# Loop to keep asking for input
finished=false;
while [ $finished == false ]; do
	# Ask the user for a filename
	read -p "Enter the name of a file to delete: " toDelete

	# Check if the user has entered a script required file
	if [ "$toDelete" == 'checked_out' ] || [ "$toDelete" == 'repository.log' ] || [ "$toDelete" == 'backup' ]
	then
		# Send error message and add entry to log file
		echo "Invalid file name (you cannot delete this file)"
		printf "$USER $UID attempted do delete required file $toDelete in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	# If the file exists then they can delete
	elif [ -f ./"$toDelete" ]
	then
		finished=true;
	# If the file does not exist then they can't delete
	else
		echo "Invalid file name (file does not exist)"
		printf "$USER $UID attempted do delete nonexistant file $toDelete in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	fi
done

# Double check the user wants to delete the file
read -p "Are you sure you want to delete this file (y/n)?: " choice
case "$choice" in 
	# If yes then delete the file and add a log entry 
	y|Y) rm -r "$toDelete"
		 printf "$USER $UID deleted the file $toDelete in the repository ${PWD##*/}\t\t\t $DATE at $TIME\n" >> repository.log;;
	# If no then return to the main menu
	n|N) echo "Returning to Main Menu";;
* ) echo "Invalid option";
esac