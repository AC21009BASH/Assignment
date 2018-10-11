#!/bin/bash

clear

cd checked_out

ls -w1
printf "\n \n"

read -p "Enter the name of a file to check in: " toCheckIn

mv "$toCheckIn" "../"$toCheckIn

cd ..