#!/bin/bash
<<comment
this is backup script
comment

#sorce and destination as arguments
#source="/home/ubuntu/day-18"
#destination="/home/ubuntu/day-18/backup"

source_dir=$1
destination_dir=$2

if [ -d "$source_dir" ];
then
	mkdir -p "$destination_dir"
	timestamp=$(date '+%Y-%m-%d')
	name="backup-$timestamp.tar.gz"
	path="$destination_dir/$name"
	tar -czf "$path" -C "$source_dir" .
	echo "archive created successfully "$name"."
	size=$(du -h "$path"|cut -f1)
	echo "size of file "$size" "
	echo "backup completed"
	find $destination_dir -type f -name "*.gz" -mtime +14 -exec rm {} \;

else
	echo "exiting since source doesn't exist"
	exit 1
fi

