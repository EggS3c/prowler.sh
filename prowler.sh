#!/bin/bash

# Cool Crowler ASCII art banner
echo -e "
$(tput setaf 1)
     .---.
    /     \\
   | o   o |    Welcome to Crowler.sh!$(tput sgr0)
    \\  ∆  /
     '---'
$(tput sgr0)
"

# Function to display usage information
display_help() {
    echo -e "$(tput setaf 5)Usage: $0 [-help] http://example.com [file_path]$(tput sgr0)"
    echo "Options:"
    echo "  -help          Display this help message and exit."
    echo "Arguments:"
    echo "  http://example.com   Specify the target URL."
    echo "  [file_path]          Optional file path to fetch and display."
    exit 0
}

# Check if the script was called with the -help option
if [ "$1" == "-help" ]; then
    display_help
fi

# Check if the correct number of arguments is provided
if [ "$#" -lt 1 ]; then
    echo -e "$(tput setaf 5)Usage: $0 http://example.com [file_path]$(tput sgr0)"
    exit 1
fi

# URL to fetch robots.txt from
url="$1"

# Download robots.txt using curl
robots_txt=$(curl -s "${url}/robots.txt")

# Check if the robots.txt file was retrieved successfully
if [ -z "$robots_txt" ]; then
    echo -e "$(tput setaf 1)Error: Failed to retrieve robots.txt from ${url}$(tput sgr0)"
    exit 1
fi

# Display the contents of robots.txt with specific patterns highlighted
echo -e "$(tput setaf 6)Contents of robots.txt from ${url}:$(tput sgr0)"
echo -e "-------------------------------------"
echo -e "$robots_txt" | sed -e "s/# CSS, JS, Images/$(tput setaf 3)# CSS, JS, Images$(tput sgr0)/g" \
                             -e "s/# Directories/$(tput setaf 6)# Directories$(tput sgr0)/g" \
                             -e "s/# Files/$(tput setaf 1)# Files$(tput sgr0)/g" \
                             -e "s/Disallow:/$(tput setaf 1)Disallow:$(tput sgr0)/g" \
                             -e "s/Allow:/$(tput setaf 6)Allow:$(tput sgr0)/g" \
                             -e "s/^/$(tput setaf 7)/" \
                             -e "s/$/$(tput sgr0)/"
echo -e "-------------------------------------"

# Check if a specific file path is provided as a parameter
if [ "$#" -eq 2 ]; then
    # Extract and display the content of the specified file
    file_path="$2"
    file_url="${url}/${file_path}"
    file_content=$(curl -s "$file_url")

    echo -e "$(tput setaf 6)Contents of $file_url:$(tput sgr0)"
    echo -e "-------------------------------------"
    echo -e "$file_content" | sed -e "s/Drupal \([0-9.]*,\)/[ $(tput setaf 1)&$(tput sgr0) ]/g" \
                                   -e "s/-----------------------/[ $(tput setaf 6)&$(tput sgr0) ]/g" \
                                   -e "s/^-\([^ ]*\)/[ $(tput setaf 1)&$(tput sgr0) ]/g" \
                                   -e "s/^- /  [ $(tput setaf 3)&$(tput sgr0) ]/g" \
                                   -e "s/- /  [ $(tput setaf 3)&$(tput sgr0) ]/g" \
                                   -e "s/Drupal \([0-9.]*,\)/[ $(tput setaf 1)&$(tput sgr0) ]/" \
                                   -e "s/\(poor code\)/$(tput setaf 1)\1$(tput sgr0)/g" \
                                   -e "s/\(poor sanitation\)/$(tput setaf 1)\1$(tput sgr0)/g"
    echo -e "-------------------------------------"
fi
