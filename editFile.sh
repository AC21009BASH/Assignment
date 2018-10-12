#!/bin/bash

clear

cd checked_out

printf "The below files are available to edit: \n\n"
ls -w1
printf "\n"

# Get file to be edited
# from user
read -p "Enter the name of the file to edit: " fileToEdit

# Backup current version of the file to another directory
# in the repository
cp "$fileToEdit" "../backups/"$fileToEdit

# Open the file in nano editor
nano $fileToEdit

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

printf "$USER $UID edited the file $fileToEdit in the repository ${PWD##*/} \t\t\t\t $DATE at $TIME\n" >>repository.log;;


# Notify the user that file has been edited
echo "$fileToEdit successfully edited."

cd ..