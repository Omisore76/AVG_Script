#!/bin/bash

# Declare a numerical array
declare -a MY_ARRAY

# Set the array to be empty
MY_ARRAY=()

# Get three numbers from a user
read -p "Please enter three number of your choice, separated by whitespace: " Number1 Number2 Number3

# Append user inputs to the array
MY_ARRAY+=($Number1 $Number2 $Number3)

# Display the array elements
echo "This is your list: ${MY_ARRAY[@]}"

# Display the array length
echo "This is the length of your array: ${#MY_ARRAY[@]}"

# Calculate the array average
AVERAGE_OF_MY_ARRAY=$(echo "scale=2; (${MY_ARRAY[0]} + ${MY_ARRAY[1]} + ${MY_ARRAY[2]}) / ${#MY_ARRAY[@]}" | bc )
echo "This is your array average: $AVERAGE_OF_MY_ARRAY"

#Append the calculated average to the array
MY_ARRAY+=($AVERAGE_OF_MY_ARRAY)

#Display the array elements after appending the average calculated. Also, return the length of the array
echo "This is your array: ${MY_ARRAY[@]}"
echo "The length of your array is: ${#MY_ARRAY[@]}"
