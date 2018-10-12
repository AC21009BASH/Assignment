#!/bin/bash

clear

cd Repositories
printf "Available repositories: \n \n"
ls -w1
printf "\n \n"
# Ask the user to enter the repository they want to delete
read -p "Enter the name of the repository to delete: " repoToDelete

printf "$USER $UID deleted the repository $selectedRepo\t\t\t\t $DATE at $TIME\n" >> "repositories.log"

rm -r "$repoToDelete"

cd ..