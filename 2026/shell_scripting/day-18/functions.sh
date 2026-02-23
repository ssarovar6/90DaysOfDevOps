#!/bin/bash

function greet()
{
	read -p "Enter name:" name
	echo "Hello, "$name"! "
}

function add()
{
	read -p "enter first number:" num1
	read -p "enter second number:" num2
	sum=$(( $num1+$num2 ))
	echo "sum of first and second number is: $sum"
}

greet
add

