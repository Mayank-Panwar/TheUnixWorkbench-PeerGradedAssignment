#!/usr/bin/env bash
# function to get the count of total directories in the folder
function total_directories {
	total_d=$(ls -F | grep "/$" | wc -l)
	echo $total_d
}
#function to get the total files and directories in the folder
function total_fd {
	total=$(ls -A | wc -l)
	echo $total
}
#total number of files in a folder will be total file+directories minus total directories
value_directories=$(total_directories)
value_fd=$(total_fd)
value_files=$(echo "$value_fd - $value_directories" | bc -l)
echo "Guess how many files are there in the current directory?"                                                                
read guess
while [[ $value_files -ne $guess ]]
do
	if [[ $guess -gt $value_files ]]
	then
		echo "Your guess is too high. Guess again:"
		read guess
	else
		echo "Your guess is too low. Guess again:"
		read guess
	fi
done 
echo "Congratulations!!! Your guess=$value_files is correct."
