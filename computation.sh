#!/bin/bash 

read -p "Enter a number1: " a
read -p "Enter a number2: " b
read -p "Enter a number3: " c

w=$(( $a + $b * $c ))
echo "(a+b*c)="$w

x=$(( $a * $b + $c ))
echo "(a*b+c)="$x

