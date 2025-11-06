#!/bin/bash

fact()
{
	num=$1
	res=1
	for (( i = 1 ; i <= num;i++))
	{
		res=$((res * i))
	}
	echo $res
}

fact $1
