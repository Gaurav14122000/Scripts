#!/bin/bash

# Replace these variables with your actual file and backup directory paths
file_to_zip="/path/to/your/file.txt"
backup_directory="/path/to/backup/directory"

# Get the current date to include in the backup filename
current_date=$(date +"%Y-%m-%d")

# Create the backup filename
backup_filename="$(basename $file_to_zip .txt)_backup_$current_date.zip"

# Zip the file
zip -r "$backup_filename" "$file_to_zip"

# Move the backup file to the backup directory
mv "$backup_filename" "$backup_directory"

echo "Backup created: $backup_directory/$backup_filename"
