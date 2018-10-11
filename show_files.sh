#!/bin/bash
#show files

show_files()
{
	clear
	
	local userInputRepository
	
	##asks for name of repository 
	read -p "Enter the name of the repository you'd like to see: " userInputRepository

	##displays the files in the repository
 	ls $userInputRepository
}