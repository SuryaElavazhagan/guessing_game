all: README.md

README.md:
	echo "# Guessing Game" >> README.md
	echo "" >> README.md
	date >> README.md
	echo "" >> README.md
	cat guessinggame.sh | wc -l | bc >> README.md

