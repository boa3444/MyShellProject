#!/bin/bash

arr=(${@:1})
len=${#arr[@]}

for ((i=0; i <len ; i++));
do
	ele="${arr[$i]}"
	sum=$((sum + ele))
done
echo "$sum"
