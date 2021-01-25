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

echo "Results=" ${results[@]}
