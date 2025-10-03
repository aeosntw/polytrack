#!/bin/bash

# Define the search string
SEARCH_STRING="up by"

# Define the starting directory (the current directory)
START_DIR="."

echo "Starting recursive search for \"$SEARCH_STRING\" in files under $START_DIR"
echo "------------------------------------------------------------------"

# Use grep with added options:
# -i, --ignore-case: Ignore case distinctions in both the pattern and the input files.
# --exclude: Skips files matching the specified pattern (we exclude the script itself).
grep -r -n -H -I -i --exclude="pls.sh" --color=always "$SEARCH_STRING" "$START_DIR" 2>/dev/null

# Check the exit status of the last command (grep)
if [ $? -eq 0 ]; then
    echo
    echo "------------------------------------------------------------------"
    echo "Search complete. Matches found above."
else
    echo
    echo "------------------------------------------------------------------"
    echo "Search complete. No matches for \"$SEARCH_STRING\" found."
fi