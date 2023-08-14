#!/bin/bash

backup_dir="/path/to/source"
backup_dest="/path/to/backup/destination"

timestamp=$(date +"%Y%m%d%H%M%S")
backup_file="backup_$timestamp.tar.gz"

tar -czvf "$backup_dest/$backup_file" "$backup_dir"
