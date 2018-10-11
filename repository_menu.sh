#!/bin/bash
# Repository Sub Menu

RED='\033[0;41;30m'
STD='\033[0;0;39m'

## Code for when number one is selected
one () {
	source ./add_file.sh
	add_file
}

## Code for when number two is selected
two() {
	source ./checkout_file.sh
	checkoutFile
}

## Code for when number three is selected
three() {
	source ./view_checked_out.sh
	viewCheckedOut
}

## Code for when number four is selected
four() {
	source ./delete_file.sh
	delete
}

show_repo_menus() {
	clear
	echo "==================="	
	echo " Repository Menu "
	echo "==================="
	echo "1. Create File"
	echo "2. Checked Out A File"
	echo "3. Checked Out Files"
	echo "4. Delete File"
	echo "0. Exit"
}

read_repo_options() {
	local choice
	read -p "Enter choice menu selection: " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) three ;;
		4) four ;;
		0) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}	
