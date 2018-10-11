#!/bin/bash
# Script to select a text file and edit it

## Code here to navigate to correct repo

cd TestRepo1

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

nano $fileToEdit

echo "$fileToEdit successfully edited."