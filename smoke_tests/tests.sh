#!/bin/sh

# Run the Python version command
python3 -V

# Check the exit code of the previous command
if [ $? -ne 0 ]; then
  # Python is not installed
  exit 1
fi

# Python is installed
exit 0
