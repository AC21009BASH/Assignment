#!/bin/bash
# Lists all repositories and asks the user which one they want to access
# Then produces a menu of actions to apply to that repository

clear

cd Repositories

printf "Available repositories: \n \n"
ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n"
# Ask the user to enter the repository they want to access
read -p "Enter the name of the repository to access: " selectedRepo

# Move to the repository selected
cd "$selectedRepo"

printf "$USER $UID opened the repository $selectedRepo\t\t\t\t $DATE at $TIME\n" >> "../repositories.log"


. ../../repositoryMenu.sh