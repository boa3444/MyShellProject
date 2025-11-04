#!/bin/bash


arr=(${@})
sum=0
len="$(#arr[@])"

for (( i =0 ; i < len; i++ ));do
	if ! [[ "${arr[$i]}" =~ ^[0-9]+$ ]];
	then
		char="${arr[$i]:0:1}"
		ascii=$(printf "%d" "'$char")
		sum=$((sum+ascii))
	else
		sum=$((sum+arr[i]))
	fi
done
