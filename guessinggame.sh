#!/usr/bin/env bash
# File: guessinggame.sh

function get_filecount {
  local file_count=$( ls -lA | egrep '^-' | wc -l )
  echo $file_count
}

function strip_leading_zeroes {
  local stripped=$( $1 | egrep -o '^[1-9][0-9]*')
  echo $stripped
}

guess=
file_count=$( get_filecount )

echo 'Guess correct number of files in current directory.'
echo 'Include only regular files in your guess and dont forget about hidden ones.'
echo ''

while [[ $guess -ne $file_count ]]; do
  echo -n 'Your guess: '
  read guess

  if [[ ! $guess =~ ^[0-9]+$ ]]; then
    echo 'Please provide numeric input for your guess.'
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

