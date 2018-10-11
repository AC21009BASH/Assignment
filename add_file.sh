#!/bin/bash
#add file

add_file()
{
	clear
	local userInputRepository
	local userInputFile
	
	##asks and saves the repository and file name, adds the file to the chosen repository 
	read -p "Enter the name of the repository you'd like to add the file to: " userInputRepository
	read -p "Enter the name of the file (include .txt): " userInputFile

	echo > ./$userInputRepository/$userInputFile
}