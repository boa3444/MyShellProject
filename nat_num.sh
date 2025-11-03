#!/bin/bash


#find the sum of first 10 natural numbers

count=0
sum=0
num=0
while [[ $count -ne 10 ]];
do
	num=$((num+1))
	if [[ $num -gt 0 ]];then
		sum=$((sum + num))
		count=$((count +1))
	fi
done

echo "$sum"
