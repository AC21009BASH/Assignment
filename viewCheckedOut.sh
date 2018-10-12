#!/bin/bash

# Clear the screen
clear

# Change to the directory storing checked out files
cd checked_out

printf "Currently Checked Out Files: \n\n"

# Show all files in the folder except script required files
ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n"

# Add entry to the log file
printf "$USER $UID viewed the checked out files\t\t\t\t $DATE at $TIME\n" >> "../repository.log" 

# Move back to repository root
cd ..

read -p "Press [Enter] key to continue..." fackEnterKey