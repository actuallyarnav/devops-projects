#!/bin/bash

echo "Dummy systemd service uninstaller"
if [ $(id -u) -ne 0 ]; then
	echo "ERROR: root permission not found"
	echo "Run this script as root, or use sudo"
	exit 1
fi

echo "Stopping and disabling dummy service..."
systemctl stop dummy.service
systemctl disable dummy.service

rm /etc/systemd/system/dummy.service
rm -rf /usr/bin/dummy
rm /var/log/dummy-service.log

systemctl daemon-reload
echo "Uninstalled dummy service successfully"


