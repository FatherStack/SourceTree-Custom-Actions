#!/bin/bash
# undoes update-index --assume-unchanged to all files in your repo.
# required parameters
#  1: directory of sourcetree shell scripts (since sourceTree sets the pwd by invoking and git bash does not have readlink to retrieve an absolute path)
#  2: path of your repo

# get file names of files with --assume-unchanged flag
scriptDir=$1
fileNames=$($scriptDir/list--assume_unchanged.sh $2)
numFileNames=${#fileNames[@]}

# set each file to --no-assume-unchanged
for (( i=0;i<$numFileNames;i++)); do
    fileName=${fileNames[${i}]}
	echo $fileName
	$($scriptDir/update-index--no-assume-unchanged.sh $2 $fileName)
done 

exit 0
