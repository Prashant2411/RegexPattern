#!/bin/bash

count=0

#pat="^[0-9]*[a-zA-Z]{3}[a-zA-Z0-9]*$" #pattern 3 conseccutive char
#pat="^[0-9]{3}[ ]?[0-9]{3}$" #pincode
#pat="^[a-zA-Z0-9]+[.]?[a-zA-Z0-9]*$" #email part 1
#pat="^[a-zA-Z0-9]+[.]?[a-zA-Z0-9]*[@][a-zA-Z0-9]+$" #email part 2
#pat="^[a-zA-Z0-9]+[.]?[a-zA-Z0-9]*[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}$" #email part 3
pat="^[a-zA-Z0-9]+[._+-]?[a-zA-Z0-9]*[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}[.]?[a-zA-Z]{0,3}$" #email part 4

while [[ count -eq 0 ]]
do
	read -p "Enter the string: " word
	if [[ $word =~ $pat ]]
	then
		echo "Valid"
	else
		echo "InValid"
	fi
done
