#!/bin/bash

clear

#move into checked out folder
cd checked_out

printf "The below files are available to edit: \n\n"
#list the contents excluding folders/files that shouldn't be edited 
ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n"

# Get file to be edited
# from user
read -p "Enter the name of the file to edit: " fileToEdit

# Backup current version of the file to another directory
# in the repository
cp "$fileToEdit" "../backups/"$fileToEdit

# Open the file in nano editor
nano $fileToEdit

#format date and time
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

#send the actions performed to the log
printf "$USER $UID edited the file $fileToEdit in the repository ${PWD##*/} \t\t\t\t $DATE at $TIME\n" >> "../repository.log"

#move out the folder
cd ..