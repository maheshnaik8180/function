#!/bin/bash -x

read -p "Enter the temperature : " x;
read -p "Enter the conversion unit C(1)/F(0): " y;

Farhan=0
Celsius=1

function DegF(){
	f=`echo "scale=2;  ($1*(9/5))+32 " | bc`
	echo $f
}

function DegC(){
	c=`echo "scale=2;  ($1-32)*(5/9) " | bc`
	echo $c
}

case $y in
		$Farhan)
				if (( $x>32 && $x<212 ))
				then
				result="$( DegF $x )"
				echo $result
				else
				echo Enter input between 32 to 212 F
				fi
				;;
		$Celsius)
				if (( $x>0 && $x<100 ))
				then
				result="$( DegC $x )"
				echo $result
				else
				echo Enter input between 0 to 100 F
				fi
				;;
		*)
				echo Enter valid input
				;;
esac
