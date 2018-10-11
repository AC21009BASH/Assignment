#!/bin/bash
# Lists all repositories and asks the user which one they want to access
# Then produces a menu of actions to apply to that repository

clear

cd Repositories

printf "Available repositories: \n \n"
ls -w1
printf "\n \n"
# Ask the user to enter the repository they want to access
read -p "Enter the name of the repository to access: " selectedRepo

# Move to the repository selected
cd "$selectedRepo"

. ../../repositoryMenu.sh