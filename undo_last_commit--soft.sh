#!/bin/bash
# undoes your last commit in soft mode (keeping your local changes and index)
# required parameters
#  1: path of your repo

cd $1
git reset --soft HEAD~1

exit 0
