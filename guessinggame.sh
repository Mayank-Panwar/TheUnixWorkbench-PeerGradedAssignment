#!/usr/bin/env bash
function total_files {
	echo $(ls *.* | wc -l)
}
value=$(total_files)
echo "Guess how many files are there in the current directory?"                                                                
read guess
while [[ $value -ne $guess ]]
do
	if [[ $guess -gt $value ]]
	then
		echo "Incorrect"
		echo "Your guess is too high. Guess again:"
		read guess
	else
		echo "Incorrect"
		echo "Your guess is too low. Guess again:"
		read guess
	fi
done
echo "Congratulations!" 
echo "Your guess=$value is correct."
