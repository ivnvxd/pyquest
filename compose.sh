#!/bin/bash

jupyter nbconvert --to markdown "01_data_structures_and_data_types.ipynb" --output "markdown/01_data_structures_and_data_types.md"
jupyter nbconvert --to markdown "02_data_manipulation_and_processing.ipynb" --output "markdown/02_data_manipulation_and_processing.md"
jupyter nbconvert --to markdown "03_control_flow_and_data_flows.ipynb" --output "markdown/03_control_flow_and_data_flows.md"
jupyter nbconvert --to markdown "04_file_handling_io_serialization.ipynb" --output "markdown/04_file_handling_io_serialization.md"
jupyter nbconvert --to markdown "05_exceptions_and_errors.ipynb" --output "markdown/05_exceptions_and_errors.md"
jupyter nbconvert --to markdown "06_functional_programming.ipynb" --output "markdown/06_functional_programming.md"
jupyter nbconvert --to markdown "07_standard_library.ipynb" --output "markdown/07_standard_library.md"
jupyter nbconvert --to markdown "08_object_oriented_programming.ipynb" --output "markdown/08_object_oriented_programming.md"
jupyter nbconvert --to markdown "09_python_language_interntals.ipynb" --output "markdown/09_python_language_interntals.md"
jupyter nbconvert --to markdown "10_concurrency.ipynb" --output "markdown/10_concurrency.md"

output_file="README.md"
: > "$output_file"

files_to_concatenate=(
    "markdown/intro.md"
    "markdown/table_of_contents.md"
    "markdown/01_data_structures_and_data_types.md"
    "markdown/02_data_manipulation_and_processing.md"
    "markdown/03_control_flow_and_data_flows.md"
    "markdown/04_file_handling_io_serialization.md"
    "markdown/05_exceptions_and_errors.md"
    "markdown/06_functional_programming.md"
    "markdown/07_standard_library.md"
    "markdown/08_object_oriented_programming.md"
    "markdown/09_python_language_interntals.md"
    "markdown/10_concurrency.md"
    "markdown/outro.md"
)

for markdown_file in "${files_to_concatenate[@]}"; do
    cat "$markdown_file" >> "$output_file"
    echo -e "\n" >> "$output_file"
done

echo "Successfully combined Markdown files into '$output_file'"
