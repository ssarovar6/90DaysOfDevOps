#!/bin/bash

function check_disk()
{
	disk=$(df -h)
}
function check_memory()
{
	memory=$(free -h)
	echo "$memory"
}

function main()
{
	check_disk
	echo "$disk"
	check_memory
}
main

