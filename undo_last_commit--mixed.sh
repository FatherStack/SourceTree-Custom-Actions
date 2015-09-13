#!/bin/bash
# undoes your last commit in mixed mode (keeping your local changes but resetting the index)
# required parameters
#  1: path of your repo

cd $1
git reset --mixed HEAD~1

exit 0
