Organize Downloads by Year and Month
This script organizes files in your Downloads folder into subdirectories based on their creation year and month. It is designed for macOS and uses the Zsh shell.

Features
Scans all files in the Downloads folder.
Groups files into subdirectories named by their creation year and month.
Automatically creates the necessary directories.
Moves files to the appropriate folder.
Prerequisites
macOS with Zsh (/bin/zsh) as the shell.
stat command compatible with macOS.
How It Works
For each file in the Downloads folder:
The script retrieves the file's creation year and month using the stat command.
Creates a subdirectory structure based on the year and month (Downloads/Year/Month).
Moves the file to the corresponding directory.
Outputs a message when the process is complete.
Installation
Copy the script into a file, for example, organize_downloads.sh.
Save it in a directory accessible from your terminal (e.g., $HOME/bin).
Make the script executable:
bash
Copy code
chmod +x organize_downloads.sh
Usage
Open your terminal.
Run the script:
bash
Copy code
./organize_downloads.sh
or, if it’s in your $PATH:
bash
Copy code
organize_downloads.sh
Notes
The script assumes the Downloads folder is at $HOME/Downloads. Adjust the DOWNLOADS_DIR variable in the script if needed.
Files already organized into year/month directories are ignored during the process.
Example Directory Structure
Before running the script:

Copy code
Downloads/
  file1.txt
  file2.pdf
After running the script:

markdown
Copy code
Downloads/
  2024/
    11/
      file1.txt
      file2.pdf
License
This project is licensed under the MIT License. See the LICENSE file for details.

Contributing
Feel free to submit issues or pull requests for improvements or additional features.
