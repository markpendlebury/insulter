#!/bin/bash

# Read the insults into an array
readarray -t insultsArray < insults.txt

# How many insults do we have? 
len=${#insultsArray[@]}
 
# Generate a random number between 
# 0 and the length of the array
randomElement=$((1 + $RANDOM % $len))

# Output a random element from the array
echo "${insultsArray[$randomElement]}"