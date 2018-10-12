#!/bin/bash

clear

cd checked_out

ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n \n"

read -p "Enter the name of a file to check in: " toCheckIn

mv "$toCheckIn" "../"$toCheckIn

printf "$USER $UID checked the file $toCheckIn in \t\t\t $DATE at $TIME\n" >> repository.log 

cd ..