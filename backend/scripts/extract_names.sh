#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Error: Missing CSV file name argument"
  exit 1
fi

csv_file="$1"

output_file="output.txt"

grep -i "@amazon.com" "$csv_file" | while IFS=',' read -r col1 col2 col3 col4
do
  echo "$col3 $col2" >> $output_file
done