#!/bin/bash

dirs=("/var/log" "/home/user" "/etc")

for dir in "${dirs[@]}"; do
    du -sh $dir
done
