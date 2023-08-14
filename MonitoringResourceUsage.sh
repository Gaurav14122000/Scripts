#!/bin/bash

interval=5

while true; do
    echo "CPU Usage: $(top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}')%"
    echo "Memory Usage: $(free -h | awk '/Mem:/ {print $3 "/" $2}')"
    sleep $interval
    clear
done
