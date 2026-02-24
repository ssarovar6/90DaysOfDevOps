#!/bin/bash
<<comment
this is log rotation script
comment

log_dir="/var/log/myapp"
mkdir -p /var/log/myapp/archive
archive_dir="/var/log/nginx/archive"
if [ -d $log_dir ];
then
	total_compressed_files=$(find $log_dir -type f -name "*.log" -mtime +7 |wc -l)
	find $log_dir -type f -name "*.log" -mtime +7 -exec gzip {} \; -exec mv {}.gz $archive_dir \;
	total_deleted_files=$(find $archive_dir -type f -name "*.gz" -mtime +30|wc -l)
        find $archive_dir -type f -name "*.gz" -mtime +30 -exec rm {} \;
	echo "this many files were compressed:$total_compressed_files"
	echo "this many files were deleted after 30 days:$total_deleted_files"
else
	echo "Directory doesn't exist exiting"
	exit 1
fi


