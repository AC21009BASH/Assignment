#!/bin/bash
# Script to select a text file and edit it

clear

## Code here to navigate to correct repo

cd TestRepo1/checked_out

# Get list of files in directory 
# for user to choose from

printf "The below files are available to edit: \n\n"
ls -w1 
printf "\n\n"

# Get file to be edited
# from user
read -p "Enter the name of the file to edit: " fileToEdit

# Backup current version of the file to another directory
# in the repository
mkdir -p backups
cp "$fileToEdit" "backups/"$fileToEdit

# Open the file in nano editor
nano $fileToEdit

# Update the log file to show edit
printf "$fileToEdit edited by $UID" >> ./repository.log

# Notify the user that file has been edited
echo "$fileToEdit successfully edited."