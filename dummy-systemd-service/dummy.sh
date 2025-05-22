#!/bin/bash

while true; do
	timestamp=$(date +%Y-%m-%d_%H-%M-%S)
	echo "{$timestamp}Dummy service is running..." >> /var/log/dummy-service.log
	sleep 10
done
