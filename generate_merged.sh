#!/bin/bash

find . -maxdepth 1 -type f -name "*.txt" ! -name "AUR*" | xargs cat | sort | uniq > Merged_paclist.txt
