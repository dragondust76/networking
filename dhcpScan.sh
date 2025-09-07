#!/bin/bash

# U need to run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run with sudo."
  exit 1
fi

# Ping scan of the local network
echo "Scanning network 192.168.1.0/24 and 192.168.0.1/24 for active hosts..."
sudo nmap -sn 192.168.1.0/24
sudo nmap -sn 192.168.0.1/24

echo "Hosts locally revealed. Thank You."
