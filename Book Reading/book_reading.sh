`#!/bin/bash

echo "Do you want to enable reading mode?"
read answer1
if [ $answer1 = "y" ]
then 
	redshift -O 4500                     # For eye protection while reading, you can disable it by typing redshift -x
else
	echo "OK"
fi
echo "Please answer the following questions -"
echo "Which genre or topic do you want to read today?"
echo " "
ls ~/Books/
read answer2
echo "Which book do you want to read?"
echo " "
ls ~/Books/"$answer2"/
read answer3
xdg-open ~/Books/"$answer2"/"$answer3"

clear
