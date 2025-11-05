#!/bin/bash

i=0
while [ $i -lt 50 ];
do
	i=$((i+1))
	num=$((i%2))
	if [ $num -eq 0 ];
	then
		echo $i
	fi
done
