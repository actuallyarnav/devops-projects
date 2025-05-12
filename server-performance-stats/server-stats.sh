#!/bin/bash

echo "====System Info===="
whoami | awk '{printf "User: " $1"\n"}'
uname -a | awk '{printf "Host name: %s \nOS version: %s %s \nBuild date and time: %s %s %s (%s), %s %s\n", $2, $14, $3, $8, $9, $10, substr($7, 1, 3), $11, $12}'

echo ""
echo "====CPU usage===="
top -bn1 | grep "Cpu(s)" | awk '{printf "Usage: " 100 - $8 "%\n"}'

#memory stats
echo ""
echo "====Memory Usage===="
free -m | grep "Mem" | awk '{printf "Total: " $2 "MB\n"}'
free -m | grep "Mem" | awk '{printf "Memory used: " $3 "MB" " (%d%)\n", ($3/$2)*100}'
free -m | grep "Mem" | awk '{printf "Memory available: " $4  "MB" " (%d%)\n",($4/$2)*100}'

#storage stats

#used
echo ""
echo "====Disk Usage===="
/bin/df -h / | grep "/" | awk '{printf "Total: " $2"\n"}'

/bin/df -h / | grep "/" | awk '{printf "Storage used: " $3 " (%s used)\n", $5}'

#available
/bin/df -h / | grep "/" | awk '{printf "Storage available: " $4 " (%s%% available)\n", 100 - $5}'

#processes
#sorted by CPU usage
echo ""
echo "====Processes===="

echo ""
echo "==Top processes by CPU usage=="
ps aux --sort -%cpu | grep -v '[p]s' | head -n 6 | awk '{print $1 "\t" $2 "\t" $3 "\t" $11}'
echo ""
echo "==Top processes by memory usage=="
ps aux --sort -%mem | grep -v '[p]s' | head -n 6 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'
