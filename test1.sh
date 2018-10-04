#!/bin/bash
#test1

echo "		Menue"
echo "Choose from these three options"
echo "1.Add file"
echo "2.Edit file"
echo "3.View files in repository"
#log file

echo "Choose an option"
read input

if (($input == 1)); then
	echo "add file"

#if [$input == "2"]; then
	#edit file

#if [$input == "3"]; then
	#View files
exit $?