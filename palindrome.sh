#!/bin/bash

if [ $# -ne 1 ];then
	echo "Input one input at a time"
	exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]];then
	echo "Input a valid positive integer only"
	exit 1
fi

numb=$1
can=$numb
tumbler=$numb
dig=0
while [[ $can -ne 0 ]]
do
	can=$((can/10))
	dig=$((dig+1))
done

rev_numb=0
l_dig=0
for ((i=0;i<dig;i++));
do
	l_dig=$((numb%10))
	rev_numb=$(((rev_numb*10) + l_dig))
	numb=$((numb/10))
done

if [[ $rev_numb -eq $tumbler ]];then
	echo "palindrome"
else
	echo "Not a palindrome"
fi
