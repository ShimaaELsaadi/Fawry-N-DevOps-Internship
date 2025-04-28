#!/bin/bash

# Function to display usage/help for mygrep.sh
display_help() {
  echo "Usage: $0 [-n] [-v] [-c] [-l] <search_string> <file>"
  echo "Search for PATTERNS in each FILE."
  echo
  echo "Options:"
  echo "  -n    Show line numbers for each match."
  echo "  -v    Invert the match, show lines that do not match."
  echo "  -c    Count matching lines"
  echo "  -l    Print only filenames with matches (in purple color)"
  echo "  -E    Interpret PATTERN as an extended regular expression."
  echo "  -I    Ignore case distinctions in both the PATTERN and the input files."
  echo "  --help                   Show this help message and exit."
  echo
  echo "Pattern selection and interpretation:"
  echo "  <search_string>          The string pattern to search for in the file."
  echo "  <file>                   The file in which to search for the pattern."
  echo
  echo "Example:"
  echo "  ./mygrep.sh -i 'hello world' menu.h main.c"
  echo "  ./mygrep.sh -n 'test' myfile.txt"
  echo "  ./mygrep.sh -vn 'error' logfile.txt"
  echo
  echo "When FILE is '-', read standard input."
  echo "With no FILE, read '.' if recursive, '-' otherwise."
  echo
  echo "Exit status:"
  echo "  0   if any line is selected."
  echo "  1   otherwise."
  echo "  2   if any error occurs (unless -q is given)."
  exit 0
}
