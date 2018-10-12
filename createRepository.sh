#!/bin/bash
## Asks for a name for a repository then creates it

clear

read -p "Enter repository name: " repoToCreate
mkdir -p Repositories/$repoToCreate

touch "Repositories/$repoToCreate/repository.log"
mkdir "Repositories/$repoToCreate/backups"
mkdir "Repositories/$repoToCreate/checked_out"

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

printf "$USER $UID created the repository $repoToCreate\t\t\t\t $DATE at $TIME\n" >> Repositories/repositories.log 