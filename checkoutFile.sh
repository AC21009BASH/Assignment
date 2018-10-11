#!/bin/bash

clear

ls -w1
printf "\n \n"

read -p "Enter the name of a file to checkout: " toCheckout

while [ "$toCheckout" == 'checked_out' ] || [ "$toCheckout" == 'repository.log' ] || [ "$toCheckout" == 'backup' ]; do
	read -p "Invalid file name (you cannot checkout this file): " toCheckout
done

mv "$toCheckout" "checked_out/"$toCheckout