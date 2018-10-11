#!/bin/bash
#Delete_repository

delete()
{
	##asks for name of repository 
	clear
	local userInput
	local choice
	read -p "Enter the name of the repository you'd like to delete: " userInput
	
	##validates that the user is sure that they want to delete the repository
	read -p "Are you sure you want to delete this repository? (y/n)?" choice
	case "$choice" in 
  	y|Y ) rm -r ./$userInput ;;
  	n|N ) echo "ok, going back to the main menu";;
  	* ) echo "invalid option";;
	esac
}