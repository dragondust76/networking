#!/bin/bash

echo "--- Network Interfaces (ip addr) ---"
ip addr

echo -e "\n--- Network Interfaces (ifconfig -a) ---"
if command -v ifconfig &> /dev/null
then
    ifconfig -a
else
    echo "ifconfig command not found. Install net-tools, then run again."
fi

echo -e "\n--- Network Devices (nmcli device show) ---"

sleep 4
echo "press q when finished." 
sleep 3 

if command -v nmcli &> /dev/null
then
    nmcli device show
else
    echo "nmcli command not found. run with machine that has network-manager installed."
fi
echo -e "\n--- Detailed Hardware Information (lshw -class network) ---"
if command -v lshw &> /dev/null
then
    sudo lshw -class network
else
    echo "lshw command not found. Install lshw package if needed."
fi
