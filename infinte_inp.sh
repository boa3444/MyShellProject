#!/bin/bash

#until zero , add the other inputs
sum=0
read -p "Type a number:" numb

while [[ $numb -ne 0 ]];
do
	sum=$((sum+numb))
	if [[ $numb -eq 0 ]];
	then
		break
	fi
	read numb
done

echo "Sum:$sum"
