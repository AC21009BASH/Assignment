#!/bin/bash

clear

#move into the repositories folder
cd Repositories
printf "Available repositories: \n \n"
#list the contents excluding folders/files that shouldn't be deleted or editeed
ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n \n"
# Ask the user to enter the repository they want to delete
read -p "Enter the name of the repository to delete: " repoToDelete

#delete the repository
rm -r "$repoToDelete"

#date formatting
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

#send the actions performed to the log
printf "$USER $UID deleted the repository $selectedRepo\t\t\t\t $DATE at $TIME\n" >> "repositories.log"

#move out the folder
cd ..