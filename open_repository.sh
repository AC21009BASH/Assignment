#!/bin/bash
# Script to open a repository

openRepo() {
	clear

	# Change to the repositores folder
	# This is where all repositories are stores
	cd Repositories

	# List all repositories to the user
	printf "Available repositories: \n \n"
	ls -w1
	printf "\n \n"
	# Ask the user to enter the repository they want to access
	local userInput
	read -p "Enter the name of the repository to access: " userInput

	# Move to the repository selected
	cd "$userInput"

	clear

}