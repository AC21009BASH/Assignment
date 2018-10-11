#!/bin/bash

clear

cd checked_out

printf "Currently Checked Out Files: \n\n"

ls -w1
printf "\n"

cd ..

read -p "Press [Enter] key to continue..." fackEnterKey