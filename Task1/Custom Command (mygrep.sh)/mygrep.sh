#!/bin/bash
source ./help.sh
# Color codes
#  Define color codes for -l option
PURPLE="\033[0;35m"
#  Define color codes for error message
RED='\033[0;31m'
RESET="\033[0m"
#  Add support for --help flag to print usage information
if [[ "$1" == "--help" ]]; then
  display_help
fi

if [ $# -lt 2 ]; then
  echo -e "${RED}Usage: $0 /mygrep.sh hello testfile.txt[-n] [-v] [-c] [-l]<search_string> <file>"
  exit 1
fi
grep_options="-i" 
#  Improve option parsing using getopts
while getopts "nvclEI" opt; do
  case $opt in
    I) grep_options=""
    ;;
    n) grep_options="$grep_options -n"  
    ;;
    v) grep_options="$grep_options -v"  
    ;;
    c) grep_options="$grep_options -c"
    ;;
    l) grep_options="$grep_options -l"
    ;;
    E) grep_options+=" -E" 
    ;;
  # handle invalid option 
    *) echo -e "${RED}grep: invalid option -- '$OPTARG'"
       echo -e "${RED}Usage: $0 [-n] [-v] [-c] [-l] <search_string> <file>"
       exit 2  
    ;;
  esac
done
# Shift to get the search string and file name
shift $((OPTIND - 1))
search_string=$1
file_name=$2
# handle invalid input
if [ -z "$search_string" ] || [ -z "$file_name" ]; then
  echo -e "${RED}Error: Missing search string or file name."
  echo -e "${RED}Usage: $0 [-n] [-v] [-c] [-l] <search_string> <file>"
  exit 1
fi


#Check if the file exists
if [ ! -f "$file_name" ]; then
  echo "grep:'$file_name' No such file or directory."
  exit 1
fi
#Check if the file is readable
if [ ! -r "$file_name" ]; then
  echo "grep:'$file_name': Permission denied."
  exit 1
fi
# handle colourful output of -l option as original grep 
if [[ "$grep_options" == *"-l"* ]]; then
  matching_files=$(grep -il "$search_string" "$file_name")
  if [ -n "$matching_files" ]; then
    echo -e "${PURPLE}${file_name}${RESET}"
  fi
  exit 0
fi
# Search for a string (case-insensitive) with any grep options 
grep $grep_options "$search_string" "$file_name"


