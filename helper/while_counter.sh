#!/bin/sh
# Counter - Loop up to 5 using while 
counter=1
while [ $counter -le 5 ]
do
	echo "$counter times"
	((counter++))
done
