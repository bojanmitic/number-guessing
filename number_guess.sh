#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

CHECK_IF_USER_EXISTS() {
echo "Enter your username:"
read USERNAME
USER_RESULT=$($PSQL "SELECT * FROM users WHERE user_name='$USERNAME'")
  if [[ -z $USER_RESULT ]]
  then
    INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(user_name, games_played) VALUES('$USERNAME', 0)")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    DB_USERNAME=$($PSQL "SELECT user_name FROM users WHERE user_name='$USERNAME'")
    DB_GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE user_name='$USERNAME'") 
    USER_GUESSES_RESULT=$($PSQL "SELECT MIN(guesses) FROM users FULL JOIN guesses USING(user_id) WHERE user_name='$USERNAME'")
    echo "Welcome back, $DB_USERNAME! You have played $DB_GAMES_PLAYED games, and your best game took $USER_GUESSES_RESULT guesses."
  fi
}

CHECK_IF_USER_EXISTS

NUMBER=$(( RANDOM % 1000 + 1 ))
GUESSES=0

GET_NUMBER() {
  if [[ ! $1 ]]
  then
    echo "Guess the secret number between 1 and 1000:"
  else
    echo "It's $1 than that, guess again:"
  fi

  read USER_NUMBER
  ((GUESSES++))

  if [[ ! $USER_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GET_NUMBER
  fi
}

GET_NUMBER

until [[ $USER_NUMBER -eq $NUMBER ]]
do
  if [[ $USER_NUMBER > $NUMBER   ]]
  then
    GET_NUMBER "lower"
  elif [[ $USER_NUMBER < $NUMBER   ]]
  then
    GET_NUMBER "higher"
  fi
done

UPDATE_USER_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE user_name='$USERNAME'")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USERNAME'")
INSERT_GUESS=$($PSQL "INSERT INTO guesses(user_id, guesses) VALUES($USER_ID, $GUESSES)")

echo "You guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"
