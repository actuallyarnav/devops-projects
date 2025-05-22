#!/bin/bash

echo "Dummy Systemd service installer"

if [ $(id -u) -ne 0 ]; then
	echo "ERROR: root permission not found"
	echo "Run this script as root, or use sudo"
	exit 1
fi

if [ ! -d /usr/bin/dummy ]; then
	echo "Creating new directory at /usr/bin/dummy"
	mkdir -p /usr/bin/dummy
fi

echo "Copying shell script to /usr/bin/dummy..." 
cp ./dummy.sh /usr/bin/dummy
chmod +x /usr/bin/dummy/dummy.sh

echo "Copying Systemd service to /etc/systemd/system..."
cp ./dummy.service /etc/systemd/system

echo "Enabling Dummy systemd service..."
systemctl daemon-reload
systemctl enable dummy.service
systemctl start dummy.service
echo "Enabled and started the service successfully"

echo "Service Status:"
systemctl status dummy.service

