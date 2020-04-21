#!/usr/bin/env bash
# File: guessinggame.sh

function get_filecount {
  local file_count=$( ls -1F | egrep '*[^/]$' | wc -l )
  echo $file_count
}

guess=
file_count=$( get_filecount )

while [[ $guess -ne $file_count ]]; do
  echo -n 'Guess correct file count in working directory: '
  read guess

  if [[ ! $guess =~ ^[0-9]+$ ]]; then
    echo 'Please provide numeric input for your guess'
    unset guess
  elif [[ $guess -lt $file_count ]]; then
    echo 'Your guess is too low. Try again.'
  elif [[ $guess -gt $file_count ]]; then
    echo 'Your guess it too high. Try again.'
  else
    echo 'Congratulations, you guessed right!!!'
  fi

  echo ''

done

