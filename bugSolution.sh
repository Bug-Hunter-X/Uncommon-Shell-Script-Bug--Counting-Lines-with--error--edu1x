#!/bin/bash

count=0
while IFS= read -r line; do
  #Check if line is not empty and contains "error"
  if [[ -n "$line" ]] && [[ "$line" == *"error"* ]]; then
    ((count++))
  fi
done < "some_file.txt"

echo "Total lines with 'error': $count"