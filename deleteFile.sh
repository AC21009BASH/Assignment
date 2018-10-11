#!/bin/bash

clear

ls -w1
printf "\n \n"

read -p "Enter the name of a file to delete: " toDelete

while [ "$toDelete" == 'checked_out' ] || [ "$toDelete" == 'repository.log' ] || [ "$toDelete" == 'backup' ]; do
	read -p "Invalid file name (you cannot delete this file): " toDelete
done

rm -r $toDelete