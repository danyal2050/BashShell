#!/bin/bash

	echo "To Check the APP is present or not"
	read i

	var=`sudo dpkg-query -l | grep $i | wc -l`
	echo "$var"

	if [ $var -eq 0 ]; then 
		echo "App is not Present"
		echo "You Want To install $i App"
		read b
		sudo apt-get install $b

	elif [ $var -ne 0 ]; then
		echo "App is $i already Installed "
		echo "You Want To Delete $i App"
		read c
		sudo apt-get --purge remove $c
		fi



# BashShell
