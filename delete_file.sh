#!/bin/bash
#delete file

delete_file()
{
	clear
	local userInputRepository
	local userInputFile
	local choice
	
	##asks and saves the repository and file name
	read -p "Enter the name of the repository you'd like to delete the file from: " userInputRepository
	read -p "Enter the name of the file (include .txt): " userInputFile

	##validates that the user is sure that they want to delete the file
	read -p "Are you sure you want to delete this file? (y/n)?" choice
	case "$choice" in 
  	y|Y ) rm ./$userInputRepository/$userInputFile ;;
  	n|N ) echo "ok, going back to the main menu";;
  	* ) echo "invalid option";;
	esac
}