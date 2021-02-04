#!/bin/bash

function isPrime() {
	local x=$1
	local flag=1
	local i=2
	while [[ $i -lt $x ]];do
		if [ $(( $x%$i )) -eq 0 ];then
			#$x is not Prime
			flag=0;
			break
		else
			((i++))
		fi
	done
	if [ $flag -eq 1 ];then
		echo "$x: Prime"
	else
		echo "$x: Not Prime"
	fi
}

function reverse {
	local s=$1
	local rev=0
	while [[ $s -ne 0 ]];do
		rev=$(( $rev*10 + $(($s%10)) ))
		s=$s/10
	done
	y=`echo "$rev is the revers of $1"`

	if [[ $rev == $1 ]];then
		echo "$1: Palindrome"
	else
		echo -e "$1: Not Palindrome\nNumber Reversed: $rev"
		isPrime $y
	fi
}

read -p "Enter Number: " in1

isPrime $in1
reverse $in1
