#!/bin/bash

clear

## Need to add validation, file cannot exist 
finished=false;
while [ $finished == false ]; do
	read -p "Enter the name of a file to add: " fileToAdd

	if [ "$fileToAdd" == 'checked_out' ] || [ "$fileToAdd" == 'repository.log' ] || [ "$fileToAdd" == 'backup' ]
	then
		echo "Invalid file name (you cannot add this file)"
		printf "$USER $UID attempted do add required file $fileToAdd in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	elif [ -f ./"$fileToAdd" ]
	then
		echo "Invalid file name (file does already exists)"
		printf "$USER $UID attempted do add existing file $fileToAdd in the repository ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log
	else
		finished=true;
	fi
done

touch $fileToAdd

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

printf "$fileToAdd was added to directory ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log