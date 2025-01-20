#!/bin/bash

inputTextPath="/home/sanjula/Desktop/input.txt"

outputSummaryPath="/home/sanjula/Desktop/summary.txt"

outputUniqueWordsPath="/home/sanjula/Desktop/unique_words.txt"

# Check if the input file exists
if [ ! -f "$inputTextPath" ]; then
    echo "Error: The input file does not exist."
    exit 1
fi

# Check if the input file is empty
if [ ! -s "$inputTextPath" ]; then
    echo "Error: The input file is empty."
    exit 1
fi

echo "File exists and is not empty."


max_size=10485760  

file_size=$(stat -c %s "$inputTextPath")

if [ "$file_size" -gt "$max_size" ]; then
  echo "File larger than 10MB. Please enter another file."
  exit 1
fi



# Convert to lowercase, split into words, count occurrences, sort by frequency
# and write the top 10 most frequent words to summary.txt
awk '{print tolower($0)}' "$inputTextPath" | tr -s '[:space:]' '\n' | sort | uniq -c | sort -rn | head -n 10 > "$outputSummaryPath"

# Identify unique words and write them to unique_words.txt
awk '{print tolower($0)}' "$inputTextPath" | tr -s '[:space:]' '\n' | sort | uniq -c | awk '$1 == 1 {print $2}' > "$outputUniqueWordsPath"
