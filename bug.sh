#!/bin/bash

count=0
while IFS= read -r line; do
  if [[ "$line" == *"error"* ]]; then
    ((count++))
  fi
  #Process lines with error
  #echo "Line with error: $line"
done < "some_file.txt"

echo "Total lines with 'error': $count"