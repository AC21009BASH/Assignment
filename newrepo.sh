#!/bin/bash
# Script to create a new repository
newRepo() {
	local repoName
	read -p "Enter a name for your new repository: " repoName

	echo $repoName

	mkdir $repoName
	ls -l

}

deleteRepo() {
	local repoName
	read -p "Enter the name of the reposotory to delete: " repoName

	rm -r $repoName
}
 
newRepo
deleteRepo
