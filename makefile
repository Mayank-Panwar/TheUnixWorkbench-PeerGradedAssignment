README.md:
	touch README.md
	echo "## Guessing Game" >> README.md
	echo -n "The file was created on: " >> README.md
	date "+%T %D" >> README.md
	echo -n "The number of lines of code in guessinggame.sh are: " >> README.md
	wc -l < guessinggame.sh >> README.md
