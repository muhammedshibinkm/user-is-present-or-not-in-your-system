#!/bin/bash
if [ $# -lt 1 ]
then
	echo "Error : Please pass the argument through command line."
else
	value=`cut -d ":" -f1 /etc/passwd`
	arr=($value)
	count=${#arr[@]}
	for((i=0;i<count;i++))
	do
		if [ $1 = ${arr[i]} ]
		then
			a="true"
	        
	        fi


		
	done
	if [ "$a" = "true" ]
	then
		echo "$1 is present"
	else
	
		echo "$1 not present"
	fi

fi
