#!/bin/bash

clear

cd Repositories
printf "Available repositories: \n \n"
ls -w1
printf "\n \n"
# Ask the user to enter the repository they want to delete
read -p "Enter the name of the repository to delete: " repoToDelete

rm -r "$repoToDelete"

cd ..