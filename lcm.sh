#!/bin/bash

#making a separate lcm finder wihout the use of gcd relation
	## making a hand written algo rn
#isprime=0
#prime(){
#	remainder=0
#	numb=$1 #local
#	if [[ $numb -eq 1 || $numb -eq 0 ]];then
#		return 0
#	fi
#	for ((i=2; i<$numb;i++));
#	do
#		remainder=$((numb % i))
#		if [[ $remainder -eq 0 ]];then
#			return 0
#		fi
#	done
#	return 1
#}

#arr=() ## maximum power
#lcm(){
#	numb1=$1
#	numb2=$2
#	#loop 1:
#	while ( $numb1 -ne 1 )
#	do
#		for (( divisor = 2; divisor < $((numb1/2)) ;));
#		do
#			prime $divisor
#			if [[ $numb1 -eq 0 ]];then	
#				break
#			fi
#			if [[ $((numb1%divisor)) -eq 0 && $? ]];then
#				numb1=$((numb1/divisor))
#			else
#				divisor++;
#			fi
#		done
#	done
#}

##NEW LOGIC

lcm(){
	numb1=$1  ## local
	numb2=$2
	case 0 in
	$numb1) 
		echo "LCM: 0"
		exit 1
	;;
	$numb2)
		echo "LCM: 0"
		exit 1
	;;
	esac
	lcm_value=$([ $numb1 -gt $numb2 ] && echo "$numb1" || echo "$numb2" )
#	echo "$lcm_val"
	while (true)
	do
		if [[ $((lcm_value % numb1)) -eq 0 && $((lcm_value % numb2)) -eq 0 ]]; then
			echo "LCM: $lcm_value"
			break
		else
			lcm_value=$((lcm_value+1))
		fi
	done
}

lcm $1 $2
























		

	
	
	
	
	
	
	
	
	
	
	
	
	
