numberOfFilesInCWD(){
	echo  $(ls -1A | wc -l | bc)
}

numberOfFiles=$(numberOfFilesInCWD)

while true
do
	echo "How many files are in the current directory?"
	read response
	
	if [[ ! $response =~ ^[0-9]+$ ]]
	then
		echo "Please enter an Integer to continue the game"
		continue
	else
		if [[ $response -lt $numberOfFiles ]]
		then
				echo "Your guess is too low"
		elif [[ $response -gt $numberOfFiles ]]
		then
				echo "Your guess is too high"
		else
				echo "Congratulations! Your guess is right"
				break
		fi
	fi
done
