#!/bin/bash
#Create_repository

create()
{
	##asks for a name for the repository then creates it
	clear
	local userInput
	read -p "Enter what you'd like the repository to be called: " userInput
	mkdir -p ./$userInput
}