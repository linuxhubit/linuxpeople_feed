#!/bin/bash

n=$(echo -e  "Merry Christmas\n\t ~ Linux/Hub" | boxes -d santa )

n=${n//\\/'\\'}

OIFS=$IFS; 
IFS=$'\n'; 
c=""; 
for i in $n; do 
	c="$c\n$i"; 
	tput clear; 
	printf "$c" | lolcat; 
	sleep 1s;  
done; 
IFS=$OIFS; 
