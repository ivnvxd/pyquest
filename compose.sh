#!/bin/bash

jupyter nbconvert --to markdown "01_data_structures_and_data_types.ipynb" --output "markdown/01_data_structures_and_data_types.md"
jupyter nbconvert --to markdown "02_data_manipulation_and_processing.ipynb" --output "markdown/02_data_manipulation_and_processing.md"

output_file="README.md"
: > "$output_file"

files_to_concatenate=(
    "markdown/intro.md"
    "markdown/table_of_contents.md"
    "markdown/01_data_structures_and_data_types.md" 
    "markdown/02_data_manipulation_and_processing.md"
    "markdown/outro.md"
)

for markdown_file in "${files_to_concatenate[@]}"; do
    cat "$markdown_file" >> "$output_file"
    echo -e "\n" >> "$output_file"
done

# rm "01_data_structures_and_data_types.md" \
#     "bytes.bin" \
#     "02_data_manipulation_and_processing.md"

rm "bytes.bin"


echo "Successfully combined Markdown files into '$output_file'"
