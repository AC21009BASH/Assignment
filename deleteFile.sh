#!/bin/bash

clear

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log" -I "repository.log" -I "checked_out" -I "backups" -I "repoositories.log"
printf "\n \n"


finished=false;
while [ $finished == false ]; do
	read -p "Enter the name of a file to delete: " toDelete

	if [ "$toDelete" == 'checked_out' ] || [ "$toDelete" == 'repository.log' ] || [ "$toDelete" == 'backup' ]
	then
		echo "Invalid file name (you cannot delete this file)"
		printf "$USER $UID attempted do delete required file $toDelete in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	elif [ -f ./"$toDelete" ]
	then
		finished=true;
	else
		echo "Invalid file name (file does not exist)"
		printf "$USER $UID attempted do delete nonexistant file $toDelete in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	fi
done

read -p "Are you sure you want to delete this file (y/n)?: " choice
case "$choice" in 
	y|Y) rm -r "$toDelete"
		 printf "$USER $UID deleted the file $toDelete in the repository ${PWD##*/}\t\t\t $DATE at $TIME\n" >> repository.log;;
	n|N) echo "Returning to Main Menu";;
* ) echo "Invalid option";
esac