#!/bin/bash
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

clear

ls -w1 -I "repository.log" -I "checked_out" -I "backups" -I "repositories.log"
printf "\n \n"

read -p "Enter the name of a file to checkout: " toCheckout

finished=false;
while [ $finished == false ]; do
	read -p "Enter the name of a file to add: " toCheckout

	if [ "$toCheckout" == 'checked_out' ] || [ "$toCheckout" == 'repository.log' ] || [ "$toCheckout" == 'backup' ]
	then
		echo "Invalid file name (you cannot checkout this file)"
		printf "$USER $UID attempted to checkout the file $toCheckout\t\t\t $DATE at $TIME\n" >> repository.log
	elif [ -f ./"$toCheckout" ]
	then
		finished=true;
	else
		echo "Invalid file name (file does already exists)"
		printf "$USER $UID attempted do add existing file $toCheckout in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	fi
done

mv "$toCheckout" "checked_out/"$toCheckout

printf "$USER $UID checked out the file $toCheckout\t\t\t $DATE at $TIME\n" >> repository.log 