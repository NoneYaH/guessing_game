files=$(find * -maxdepth 0 -type f | wc -l)

echo "How many files are in current directory?"

function answer {
    if [[ $1 -gt $files ]]
    then
        echo "That's too high! Guess again!"
    elif [[ $1 -lt $files ]]
    then
        echo "That's too low! Guess again!"
    else
        echo "You are correct!"
    fi
}

while [[ ! $guess -eq files ]] 
do
    read guess
    
    answer guess
done