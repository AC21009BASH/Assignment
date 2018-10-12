#!/bin/bash

clear

#move into the checked out folder
cd checked_out

#list the contents of the folder excluding files which shouldn't be moved
ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n \n"

#get the name of hte file the user wants to check in
read -p "Enter the name of a file to check in: " toCheckIn

#move the file into hte checked in folder
mv "$toCheckIn" "../"$toCheckIn

#date formatting
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

#send the actions performed to the log
printf "$USER $UID checked the file $toCheckIn in \t\t\t $DATE at $TIME\n" >> repository.log 

#move out of the directory
cd ..