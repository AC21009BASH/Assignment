#!/bin/bash
## Asks for a name for a repository then creates it

clear

#ask the user for the name of the repository they want to create
read -p "Enter repository name: " repoToCreate
#make the repository
mkdir -p Repositories/$repoToCreate

#make a log file in the repository
touch "Repositories/$repoToCreate/repository.log"
#make a backup and checked out folder
mkdir "Repositories/$repoToCreate/backups"
mkdir "Repositories/$repoToCreate/checked_out"

#format the date and time
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

#send the actions performed to the log
printf "$USER $UID created the repository $repoToCreate\t\t\t\t $DATE at $TIME\n" >> Repositories/repositories.log 