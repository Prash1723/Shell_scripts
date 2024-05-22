#!/bin/bash

function calculator {
	read -p "Arithematic operation :" choice
	local num1=$1
	local num2=$2
	case $choice in 
		sum)let result=$num1+$num2;;
		sub)let result=$num1-$num2;;
		mul)let result=$num1*$num2;;
		div)let result=$num1/$num2;;
		*)echo "Please enter valid option"
	esac
echo "$result"
}


calculator $1 $2

