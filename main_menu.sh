#!/bin/bash
# Main Menu at Runtime

RED='\033[0;41;30m'
STD='\033[0;0;39m'

pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}

##Code for when number one is selected
one () {
	echo "Add_file() called"
		pause
}

## Code for when number two is selected
two() {
	source ./create_repository.sh
	create
}

## Code for when number two is selected
three() {
	echo "Add_file() called"
		pause
}

show_menus() {
	clear
	echo "==================="	
	echo " Repository System "
	echo "==================="
	echo "1. Open repository"
	echo "2. Create new repository"
	echo "3. Delete repository"
	echo "0. Exit"
}

read_options() {
	local choice
	read -p "Enter choice menu selection: " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) three ;;
		0) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}	

while true
do
	show_menus
	read_options
done

