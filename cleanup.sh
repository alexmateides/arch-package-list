#!/bin/bash

for file in $(find . -maxdepth 1 -type f -name "*.txt")
do
	cat "$file" | sort | uniq > "tmp.txt"
	cat "tmp.txt" > "$file"
done

rm -rf tmp.txt > /dev/null 2>&1
