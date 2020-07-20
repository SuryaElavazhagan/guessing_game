numberOfFilesInCWD(){
	echo  $(find . -maxdepth 1 -type f | wc -l | bc)
}

numberOfFiles=$(numberOfFilesInCWD)

while true
do
	echo "How many files are in the current directory?"
	read response
	response=$response | bc
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
done
