#!/bin/bash

jupyter nbconvert --to markdown "01_data_structures_and_data_types.ipynb" --output "01_data_structures_and_data_types.md"
# jupyter nbconvert --to markdown "02.ipynb" --output "02.md"

output_file="README.md"
: > "$output_file"

files_to_concatenate=(
    "intro.md"
    "table_of_contents.md"
    "01_data_structures_and_data_types.md" 
    "outro.md"
)

for markdown_file in "${files_to_concatenate[@]}"; do
    cat "$markdown_file" >> "$output_file"
    echo -e "\n" >> "$output_file"
done

rm "01_data_structures_and_data_types.md" "bytes.bin"
# rm "01_data_structures.md" "02.md"

echo "Successfully combined Markdown files into '$output_file'"
