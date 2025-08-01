#!/bin/bash

prefix="$1"

counter=1
for file in *; do
    extension="${file##*.}"
    new_name="${prefix}_${counter}.${extension}"
    sudo mv "$file" $new_name
    ((counter++))
done
