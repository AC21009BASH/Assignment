#!/bin/bash
#menu

##EDITOR=vim
##PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

pause() {
	read -p "Press [Enter] key to continue..."
	##fackEnterKey ##WHAT THE FUCK DOES THIS DO?
}

##Code for when number one is selected
one () {
	echo "Create_repository() called"
		pause
}

## Code for when number two is selected
two() {
	echo "Delete_repository() called"
		pause
}

## Code for when number two is selected
three() {
	echo "Add_file() called"
		pause
}

## Code for when number two is selected
four() {
	echo "Delete_file() called"
		pause
}

## Code for when number two is selected
five() {
	echo "Edit_File() called"
		pause
}

## Code for when number two is selected
six() {
	echo "View_files() called"
		pause
}

show_menus() {
	clear	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Create repository"
	echo "2. Delete repository"
	echo "3. Add file"
	echo "4. Delete file"
	echo "5. Edit File"
	echo "6. View files in selected repository"
	echo "0. Exit"
}

read_options() {
	local choice
	read -p "Enter choice menu selection: " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) three ;;
		4) four ;;
		5) five ;;
		6) six ;;
		0) exit 0;;
		*) echo -e "$[RED]Error...${STD}" && sleep 2
	esac
}	

while true
do
	show_menus
	read_options
done

