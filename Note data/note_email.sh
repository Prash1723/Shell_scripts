#!/bin/bash

note_data (
	echo "Enter name of the company:"; read -p name
	echo "Enter email address:"; read -p email
	echo "Enter location:"; read -p location

	$name,$email,$location >> ~/Documents/Jobs/Emailaddress.csv
)

clear

note_data()
