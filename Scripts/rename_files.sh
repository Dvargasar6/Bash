#!/bin/bash

prefix="$1"

counter=1
for file in *; do
    new_name="${prefix}_${counter}.pdf"
    sudo mv "$file" $new_name
    ((counter++))
done
