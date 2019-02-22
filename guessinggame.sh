#!/usr/bin/env bash
# File: guessinggame.sh

echo "Type how many files in this directory and then press Enter:"
read response

num=$(ls -B | wc -l)

while [[ ! $response -eq $num ]]
do
    echo "You entered: $response." 
    if [[ $response =~ ^[a-zA-Z]+$ ]]
    then
        echo "Please, enter the number!"
    else
        if [[ $response -gt $num ]]
        then
           echo "It's greater than number of files!"
        else
           echo "It's less than number of files!" 
        fi
    fi
    echo "Please, try again!"
    read response 
done
echo "You entered: $response. It's right number! Congratulations!"


