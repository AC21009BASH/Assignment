#!/bin/bash
#A menu driven shell script

EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

pause() {
	read -p "Press [Enter] key to continue..."
	fackEnterKey ##WHAT THE FUCK DOES THIS DO?
}

##Code for when number one is selected
one () {
	echo "one() called"
		pause
}

## Code for when number two is selected
two() {
	echo "two() called"
		pause
}

show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Set Terminal"
	echo "2. Reset Terminal"
	echo "3. Exit"
}

read_options() {
	local choice
	read -p "Enter choice menu selection: " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) exit 0;;
		*) echo -e "$[RED]Error...${STD}" && sleep 2
	esac
}	

while true
do
	show_menus
	read_options
done