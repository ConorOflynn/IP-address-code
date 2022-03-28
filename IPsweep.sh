#!/bin/bash
range="10.10.1"
for ip in `seq 1 254` ; do
ping -c 1 $range.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 
done