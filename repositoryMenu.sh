#!/bin/bash

addFile() {
	. ../../addFile.sh
}

checkoutFile() {
	. ../../checkoutFile.sh
}

viewCheckedOut() {
	. ../../viewCheckedOut.sh
}

checkFileBackIn() {
	. ../../checkFileBackIn.sh
}

editFile() {
	. ../../editFile.sh
}

deleteFile() {
	. ../../deleteFile.sh
}

returnToMainMenu() {

	cd ../../
	. ./mainMenu.sh
}

printRepoMenu() {
	clear
	pwd
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

while [ $choice != 0 ]
do
	printRepoMenu
	getRepoOption
done