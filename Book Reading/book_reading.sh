#!/bin/bash

echo "Please answer the following questions -"
echo "Which genre or topic do you want to read today?"
echo " "
ls ~/Books/
read answer1
echo "Which book do you want to read?"
echo " "
ls ~/Books/$answer1/
read answer2
xdg-open ~/Books/$answer1/"$answer2"

clear
