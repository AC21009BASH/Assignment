#!/bin/bash

# Function for when addFile is selected
addFile() {
	. ../../addFile.sh
}

# Function for when checkoutFile is selected in menu
checkoutFile() {
	. ../../checkoutFile.sh
}

# Function for when viewCheckedOut is selected in menu
viewCheckedOut() {
	. ../../viewCheckedOut.sh
}

# Function for when checkFileBackIn is selected in menu
checkFileBackIn() {
	. ../../checkFileBackIn.sh
}

# Function for when editFile is selected in menu
editFile() {
	. ../../editFile.sh
}

# Function for when deleteFile is selected in menu
deleteFile() {
	. ../../deleteFile.sh
}

# Function for when returnToMainMenu is selected in menu
returnToMainMenu() {

	cd ../../
	. ./mainMenu.sh
}

# Function to print menu options to the user
printRepoMenu() {
	clear
	echo "==================="	
	echo " Changes to $selectedRepo "
	echo "==================="
	echo "1. Add a new file"
	echo "2. Checkout a file"
	echo "3. View checked out files"
	echo "4. Check file back in"
	echo "5. Edit file"
	echo "6. Delete a file"
	echo "0. Return To Main Menu"
}

# Function to get the option selected by the user
getRepoOption() {
	local repoOption
	read -p "Please select an option from the menu: " repoOption
	case $repoOption in
		1) addFile ;;
		2) checkoutFile ;;
		3) viewCheckedOut ;;
		4) checkFileBackIn ;;
		5) editFile ;;
		6) deleteFile ;;
		0) returnToMainMenu ;;
		*) echo -e "Please enter a valid option:"
	esac
}

# Makes the menu run when until the user requests to exit
while [ $choice != 0 ]
do
	printRepoMenu
	getRepoOption
done