#!/bin/bash
# Script to select a text file and edit it

#List the files
#Get the suer to select file that they want to checkout


checkoutFile() {
	clear

	cd TestRepo1

	ls -w1 
	printf "\n\n"

	# Get file to be edited
	# from user
	read -p "Enter the name of a file to checkout: " toCheckout

	while [ "$toCheckout" == 'checked_out' ] || [ "$toCheckout" == 'repository.log' ] || [ "$toCheckout" == 'backup' ]; do
		read -p "Invalid file name (you cannot checkout this file): " toCheckout
	done


	mv "$toCheckout" "checked_out/"$toCheckout
}