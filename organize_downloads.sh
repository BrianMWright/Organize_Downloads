#!/bin/bash

# Define the path to the Downloads folder
DOWNLOADS_FOLDER="$HOME/Downloads"

# Change to the Downloads directory
cd "$DOWNLOADS_FOLDER"

# Create a folder for each month and move files
for file in *; do
    if [ -f "$file" ]; then  # Check if it is a file
        # Extract the month and year from the modification date
        month_year=$(date -r "$file" +"%Y-%m")

        # Create directory if it doesn't exist
        [ ! -d "$month_year" ] && mkdir "$month_year"

        # Move the file to the corresponding directory
        mv "$file" "$month_year/"
    fi
done

echo "Files have been organized by month and year."
