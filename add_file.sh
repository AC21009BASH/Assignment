#!/bin/bash
#add file

add_file()
{
	clear
	local userInputFile
	
	##asks and saves the repository and file name, adds the file to the chosen repository 
	read -p "Enter the name of the file: " userInputFile

	touch $userInputFile

	printf "\n $userInputFile was added to directory ${PWD##*/} \n" >> repository.log
}