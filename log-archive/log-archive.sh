#!/bin/bash

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
filename="logs_archive_${timestamp}.tar.gz"
log_dir="$HOME/log-archive"

echo "Log Archiving Tool"
if [ -z $1 ]; then
	echo "ERROR: No directory specified. Use ""./log-archive {directory}"""
	exit 1
fi

if [ ! -d "$log_dir" ]; then
	echo "A ""log-archive"" directory does not exist at \$HOME. Creating directory..."
	mkdir -p "$log_dir"
fi

echo "creating archive, please wait..."

sudo tar -czf "$log_dir/$filename" -C "$1" .
if [ -f $HOME/log-archive/$filename ]; then
	echo "Created log archive named ""$filename"""
else
	echo "ERROR: log file could not be created, try again"
fi
