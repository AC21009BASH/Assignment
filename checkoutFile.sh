#!/bin/bash

clear

ls -w1
printf "\n \n"

read -p "Enter the name of a file to checkout: " toCheckout

while [ "$toCheckout" == 'checked_out' ] || [ "$toCheckout" == 'repository.log' ] || [ "$toCheckout" == 'backup' ]; do
	read -p "Invalid file name (you cannot checkout this file): " toCheckout

	DATE=$(date +"%Y-%m-%d")
	TIME=$(date +"%H:%M:%S")

    printf "$USER $UID attempted to checkout the file $toCheckout\t\t\t $DATE at $TIME\n" >>repository.log 
done

mv "$toCheckout" "checked_out/"$toCheckout

printf "$USER $UID checked out the file $toCheckout\t\t\t $DATE at $TIME\n" >>repository.log 
