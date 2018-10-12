#!/bin/bash

clear

read -p "Enter the name of file to be created: " fileToAdd

## Need to add validation, file cannot exist 
touch $fileToAdd

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

printf "$fileToAdd was added to directory ${PWD##*/}\t\t $DATE at $TIME\n" >> repository.log