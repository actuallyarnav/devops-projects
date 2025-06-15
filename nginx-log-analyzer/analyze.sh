#!/bin/bash

if [ -z $1 ]; then
	echo "ERROR: No file specified. Use ""./nginx-log-analyzer {file}"""
	exit 1
fi

file="$1"
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$file" | sort | uniq -c | sort -nr | head -n 5 |awk '{printf $2 " - " $1 " requests \n"}'

echo ""
echo "Top 5 most requested paths:"
awk '{print $7}' "$file" | sort | uniq -c | sort -nr | head -n 5 |awk '{printf $2 " - " $1 " requests \n"}'

echo ""
echo "Top 5 response status codes:"
grep -oE ' [1-5][0-9]{2} ' "$file" | sort | uniq -c | sort -nr | head -n 5 |awk '{printf $2 " - " $1 " requests \n"}'

echo ""
echo "Top 5 user agents"
awk -F '"' '{print $6}' "$file" | sort | uniq -c | sort -nr | head -n 5 | awk '{for(i=2;i<=NF;i++) printf "%s ", $i; print " - " $1 " requests\n" }'
