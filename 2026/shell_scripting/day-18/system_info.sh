#!/bin/bash

function system_info(){
	local info=$(hostnamectl)
	echo "$info"
}
function uptime(){
	local info=$(uptime)
	echo "$info"
}
function disk(){
	source disk_check.sh
	check_disk
	check_memory
}
function cpu_usage(){
	local info=$(ps -e --sort=-%cpu | head -5)
	echo"$info"
}
function main(){
	system_info
	uptime
	disk
	cpu_usage
}
main
