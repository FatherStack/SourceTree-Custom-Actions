#!/bin/sh
# invokes git update-index --assume-unchanged on a file.
# required parameters
#  1: path of your repo
#  2: name of the file to update (relative path within the repo)

cd $1
git update-index --assume-unchanged $2
exit 0
