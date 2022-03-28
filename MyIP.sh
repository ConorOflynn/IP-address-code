#!/bin/bash
ipc=$(ip a show wlan0 | grep "inet " | cut -b 10-23) 
ipb=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo "Your Private IP address is:" $ipc
echo "Your Public IP address is:" $ipb