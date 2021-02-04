#!/bin/bash -x

read -p "Enter the first number:" x;
read -p "Enter the second number:" y;

function palindrome(){
   local n=$1
   while (( $n>0 ))
   do
      local one=$(( n%10 ))
      local n=$(( n/10 ))
      local rev="$rev$one"
   done
	echo $rev
}

result="$( palindrome $x )"

if (( result == y ))
then
	echo They are palindrome
else
	echo They are not palindrome
fi
