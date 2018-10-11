#!/bin/bash
## Asks for a name for a repository then creates it

clear

read -p "Enter repository name: " repoToCreate
mkdir -p Repositories/$repoToCreate

touch "Repositories/$repoToCreate/repository.log"
mkdir "Repositories/$repoToCreate/backups"
mkdir "Repositories/$repoToCreate/checked_out"