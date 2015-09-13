#!/bin/sh
# lists all files marked by update-index --assume-unchanged.
# required parameters:
#  1: path of your repo

cd $1
git ls-files -v | grep '^[[:lower:]]' | cut -c3-
exit 0
