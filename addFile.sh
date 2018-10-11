#!/bin/bash

clear

read -p "Enter the name of file to be created: " fileToAdd

## Need to add validation, file cannot exist 
touch $fileToAdd

printf "\n $fileToAdd was added to directory ${PWD##*/} \n" >> repository.log