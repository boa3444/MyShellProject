#!/bin/bash


#multiplication table

num=$1
ans=$1
for (( i = 1 ; i <= 10 ; i++));
do
	ans=$((ans * i))
	echo "$num X $i = $ans"
	ans=$num
done
