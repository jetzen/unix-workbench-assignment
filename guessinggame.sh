#!usr/bin/env bash

num_files=$(ls -l | wc -l)
let num_files=$(expr $num_files - 1)

function incorrect_message() {
  if [[ $1 =~ [^0-9] ]]
  then
    echo 'You have to guess a number!'
  elif [[ $1 -lt $num_files ]]
  then
    echo 'You guessed too low!'
  elif [[ $1 -gt $num_files ]]
  then
    echo 'You guessed too high!'
  fi
}

echo Hi. Guess how many files there are in the current working directory right now:
read guess

while [[ $guess != $num_files ]]
do
  incorrect_message $guess
  echo 'Try again! How many files?'
  read guess
done

echo 'Ding! Ding! Ding! You guessed correctly. Thanks for playing :)'



