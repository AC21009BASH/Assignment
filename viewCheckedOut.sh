#!/bin/bash

clear

cd checked_out

printf "Currently Checked Out Files: \n\n"

ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n"

printf "$USER $UID viewed the checked out files\t\t\t\t $DATE at $TIME\n" >> "../repository.log" 

cd ..

read -p "Press [Enter] key to continue..." fackEnterKey