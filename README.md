# Organize Downloads by Year and Month

This script organizes files in your `Downloads` folder into subdirectories based on their creation year and month. It is designed for macOS and uses the Zsh shell.

## Features

- Scans all files in the `Downloads` folder.
- Groups files into subdirectories named by their creation year and month.
- Automatically creates the necessary directories.
- Moves files to the appropriate folder.

## Prerequisites

- macOS with Zsh (`/bin/zsh`) as the shell.
- `stat` command compatible with macOS.

## How It Works

1. For each file in the `Downloads` folder:
   - The script retrieves the file's creation year and month using the `stat` command.
   - Creates a subdirectory structure based on the year and month (`Downloads/Year/Month`).
   - Moves the file to the corresponding directory.
2. Outputs a message when the process is complete.

## Installation

1. Copy the script into a file, for example, `organize_downloads.sh`.
2. Save it in a directory accessible from your terminal (e.g., `$HOME/bin`).
3. Make the script executable:
   ```bash
   chmod +x organize_downloads.sh
