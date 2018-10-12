#!/bin/bash

clear

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

ls -w1
printf "\n \n"

read -p "Enter the name of a file to delete: " toDelete

while [ "$toDelete" == 'checked_out' ] || [ "$toDelete" == 'repository.log' ] || [ "$toDelete" == 'backup' ]; do
	read -p "Invalid file name (you cannot delete this file): " toDelete
	printf "$USER $UID attempted do delete the file $toDelete in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >>repository.log 

done

read -p "Are you sure you want to delete this file? (y/n)?" choice
case "$choice" in 
y|Y )rm -r "$toDelete"
  	DATE=$(date +"%Y-%m-%d")
	TIME=$(date +"%H:%M:%S")
	printf "$USER $UID deleted the file $toDelete in the repository ${PWD##*/}\t\t\t $DATE at $TIME\n" >>repository.log
n|N ) echo "ok, going back to the main menu";;
* ) echo "invalid option";
esac