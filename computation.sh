#!/bin/bash 

read -p "Enter a number1: " a
read -p "Enter a number2: " b
read -p "Enter a number3: " c

w=$(( $a + $b * $c ))
echo "(a+b*c)="$w

x=$(( $a * $b + $c ))
echo "(a*b+c)="$x

y=$(( $c + $a / $b))
echo "(c+a/b)="$y

z=$(( $a % $b + $c))
echo "(a%b+c)="$z

declare -A results
results[w]="$w"
results[x]="$x"
results[y]="$y"
results[z]="$z"

echo "Results from dtctionary:" ${results[@]}

results_arr[0]=${results[w]}
results_arr[1]=${results[x]}
results_arr[2]=${results[y]}
results_arr[3]=${results[z]}
echo "Results from array:" ${results_arr[@]}

for (( i = 0; i < 4 ; i++ ))
do
for (( j = $i; j < 4 ; j++ ))
do
if [ ${results_arr[$i]} -lt ${results_arr[$j]} ]
then
	t=${results_arr[$i]}
	results_arr[$i]=${results_arr[$j]}
	results_arr[$j]=$t
fi
done
done

echo "sorted array:"

for (( i=0; i < 4; i++ ))
do
echo ${results_arr[$i]}
done
