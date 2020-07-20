all: README.md

README.md:
	echo "#Guessing Game" >> README.md
	date >> README.md
	cat guessinggame.sh | wc -l | bc >> README.md

