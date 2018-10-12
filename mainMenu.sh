#!/bin/bash

# Function when Create New is selected in menu
createNew() {
	. ./createRepository.sh
}

# Function when Open repository is selected
openRepo() {
	. ./openRepository.sh
}

# Function when delete repository is selected
deleteRepo() {
	. ./deleteRepository.sh
}

# Method to print the menu options to the user
printMenu() {
	clear
	#pwd
	echo "==================="	
	echo " Repository System "
	echo "==================="
	echo "1. Create Repository"
	echo "2. Open Existing Repository"
	echo "3. Delete Repository"
	echo "0. Exit"
}

# Method to get the users selection
getUserChoice() {
	local choice
	read -p "Please select an option from the menu: " choice
	case $choice in
		1) createNew ;;
		2) openRepo ;;
		3) deleteRepo ;;
		0) exit 0 ;;
		*) echo -e "Please enter a valid option:"
	esac
}

while true
do
	printMenu
	getUserChoice
done