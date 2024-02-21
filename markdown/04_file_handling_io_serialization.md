# Part IV: File Handling, I/O, and Serialization <a id="4-file-io-serialization"></a>

1. [File Operations](#file-operations)
    - [Opening a File](#opening-a-file)
    - [Reading from a File](#reading-from-a-file)
    - [Writing to a File](#writing-to-a-file)
    - [Closing a File](#closing-a-file)
2. [Working with Directories](#working-with-directories)
    - [os.path](#os-path)
    - [pathlib](#pathlib)
3. [Serialization](#serialization)
    - [Pickling and Unpickling](#pickling-and-unpickling)
4. [Structured Data Formats](#structured-data-formats)
    - [JSON](#json)
    - [YAML](#yaml)
    - [CSV](#csv)
    - [XML](#xml)
5. [Data Encoding and Decoding](#data-encoding-and-decoding)
    - [base64](#base64)
    - [Unicode](#unicode)

## 1. File Operations <a id="file-operations"></a>

File operations in Python are crucial for reading from and writing to files on your computer. These operations allow your programs to save data permanently, work with configuration files, or read data from existing files for processing.

Python makes file operations straightforward through its built-in functions and methods. The most common operations involve opening a file, reading from it, writing to it, and closing it.

### Opening a File <a id="opening-a-file"></a>

Use the `open(file_name, mode)` function to open a file. It returns a file object and takes two main parameters: the `file_name` and the `mode` ('r' for reading, 'w' for writing, 'a' for appending, and 'b' for binary mode). 

The `file_name` can be a relative or absolute path to the file. The `mode` is optional and defaults to 'r' if not specified.

### Reading from a File <a id="reading-from-a-file"></a>

Once a file is opened in read mode ('r'), you can use methods like `.read()`, `.readline()`, or `.readlines()` to read its content.

- `.read(size)` reads size bytes, or if size is omitted or negative, it reads the entire file.
- `.readline()` reads a single line from the file.
- `.readlines()` reads all the lines in a file and returns them as a list.

### Writing to a File <a id="writing-to-a-file"></a>

Opening a file in write ('w') or append ('a') mode allows you to write or add content to the file. Use `.write(string)` to write the specified string to the file. For writing multiple lines, `.writelines(list)` can be used.

- `.write(string)` writes the string to the file.
- `.writelines(sequence)` writes a sequence of strings to the file.

### Closing a File <a id="closing-a-file"></a>

After finishing with a file, it's crucial to close it using the .close() method to free up system resources. Failure to close files can lead to memory leaks and other resource issues.


```python
# Step 1: Read from the original file
names = []  # List to hold names
with open("../examples/names.txt", "r") as file_reader:
    for line in file_reader:
        # Strip newline characters and add to list
        names.append(line.strip())
        print(line.strip())

# Step 2: Data manipulation
new_name = "Diana"
if new_name not in names:  # Avoid duplicate
    names.append(new_name)

# Step 3: Write to a new file
with open("../examples/updated_names.txt", "w") as file_writer:
    for name in names:
        file_writer.write(name + "\n")  # Add newline to put each name on a new line

print("------")

# Check the new file
with open("../examples/updated_names.txt", "r") as file_reader:
    for line in file_reader:
        print(line.strip())

# The 'with' statement automatically handles file closing.
```

    Alice
    Bob
    Charlie
    ------
    Alice
    Bob
    Charlie
    Diana


## 2. Working with Directories <a id="working-with-directories"></a>

Working with directories in Python involves managing folders on your file system. This includes tasks such as creating, listing, renaming, and removing directories. The os module in Python provides a portable way of using operating system-dependent functionality like navigating and manipulating the file system.

### os.path <a id="os-path"></a>

The `os.path` module provides functions for common pathname manipulations. It can be used to check if a file or directory exists, get the size of a file, and more.

_Key Functions in the `os` module for Directories:_

- `os.listdir(path)`: Lists all files and directories in the specified path.
- `os.mkdir(path)`: Creates a directory at the specified path. Raises an error if the directory already exists.
- `os.makedirs(path)`: Similar to os.mkdir, but also creates all intermediate-level directories needed to contain the leaf directory.
- `os.rmdir(path)`: Removes the specified directory. The directory must be empty.
- `os.removedirs(path)`: Removes directories recursively. It removes leaf directory and all empty intermediate ones.
- `os.rename(src, dst)`: Renames a file or directory from src to dst.


```python
import os

# Create a new directory
os.mkdir("new_directory")

# Create a directory and intermediate directories
os.makedirs("new_directory/intermediate_directory")

# List contents of the current directory
contents = os.listdir("../examples/")
print("Directory contents:", contents)

# Rename the directory
os.rename("new_directory", "renamed_directory")

# Remove a directory (must be empty)
os.rmdir("renamed_directory/intermediate_directory")

# Remove the now empty parent directory
os.rmdir("renamed_directory")
```

    Directory contents: ['names.txt', 'example.csv', 'data.pickle', 'person.json', 'sample-graph.png', 'debug.log', 'updated_names.txt', 'sample copy.txt', 'bytes.bin', 'sample.txt']


### pathlib <a id="pathlib"></a>

The `pathlib` module in Python provides an object-oriented interface for working with the file system. It is a more modern and convenient way to work with file paths and directories. The `Path` class in `pathlib` provides methods for creating, reading, and manipulating paths and files.

_Key Methods in the `Path` class:_

- `Path.cwd()`: Returns the current working directory as a Path object.
- `Path.home()`: Returns the home directory as a Path object.
- `Path.mkdir()`: Creates a directory at the specified path.
- `Path.rmdir()`: Removes the specified directory.
- `Path.rename()`: Renames a file or directory.


```python
from pathlib import Path

# Create a new directory
Path("new_directory").mkdir()

# Create a directory and intermediate directories
Path("new_directory/intermediate_directory").mkdir(parents=True)

# List contents of the current directory
contents = Path("../examples/").iterdir()

print("Directory contents:")
for content in contents:
    print(content.name)

# Rename the directory
Path("new_directory").rename("renamed_directory")

# Remove a directory (must be empty)
Path("renamed_directory/intermediate_directory").rmdir()

# Remove the now empty parent directory
Path("renamed_directory").rmdir()
```

    Directory contents:
    names.txt
    example.csv
    data.pickle
    person.json
    sample-graph.png
    debug.log
    updated_names.txt
    sample copy.txt
    bytes.bin
    sample.txt


## 3. Serialization <a id="serialization"></a>

_Serialization_ in Python refers to the process of converting a Python object into a byte stream (a sequence of bytes) that can be saved to a file or transmitted over a network. This byte stream can then be deserialized back into a Python object. This process is crucial for saving complex data structures, like lists and dictionaries, to a file or sending them over a network for distributed computing tasks.

### Pickling and Unpickling <a id="pickling-and-unpickling"></a>

The most common serialization technique in Python is using the `pickle` module. "Pickling" is the act of serializing an object, and "unpickling" is the process of deserializing the byte stream back into an object.

- **Pickling**: Convert a Python object into a byte stream.
- **Unpickling**: Convert a byte stream back into a Python object.

Be cautious when unpickling objects from an untrusted source. Since `pickle` can execute arbitrary code, it may pose a security risk.


```python
import pickle

# Define a sample dictionary
data = {"key": "value", "list": [1, 2, 3, 4, 5]}

# Pickling: Serializing the Python object to a byte stream
with open("../examples/data.pickle", "wb") as file:
    pickle.dump(data, file)

# Unpickling: Deserializing the byte stream back to a Python object
with open("../examples/data.pickle", "rb") as file:
    loaded_data = pickle.load(file)

print("Loaded data:", loaded_data)
```

    Loaded data: {'key': 'value', 'list': [1, 2, 3, 4, 5]}


## 4. Structured Data Formats <a id="structured-data-formats"></a>

_Structured data formats_ organize and store data in a way that is easily readable by both humans and computers. These formats are essential for data interchange between different applications, systems, or programming languages. Python supports several structured data formats, including JSON, YAML, CSV, and XML, each serving different needs and use cases.

- **JSON (JavaScript Object Notation)**: Widely used for web APIs and config files. Features: Lightweight, text-based, language-independent.
- **YAML (YAML Ain't Markup Language)**: Common for configuration files, more readable for humans than JSON. Features: Supports complex data structures, more flexible and readable.
- **CSV (Comma-Separated Values)**: Data exchange format for spreadsheets or databases. Features: Simple format, each line is a data record, fields separated by commas.
- **XML (eXtensible Markup Language)**: General purpose, structured document format with custom tags. Features: Hierarchical structure, self-descriptive tags, supports metadata.

### JSON <a id="json"></a>

**JSON** (JavaScript Object Notation) is a lightweight data-interchange format that's easy for humans to read and write and easy for machines to parse and generate. It's widely used for web APIs and configuration files.

Key Features:
- **Text-based**: JSON is purely text, which can be sent anywhere that text can be sent.
- **Human-readable**: Its structure is simple, making it easy for humans to read and write.
- **Hierarchical**: JSON can represent multiple levels of nested data, allowing complex data structures to be efficiently represented.

Python's built-in `json` module provides functions to work with JSON data. Key functions include:
- `json.dumps(obj)`: Serializes obj to a JSON-formatted str.
- `json.loads(s)`: Deserializes s (a str, bytes or bytearray instance containing a JSON document) to a Python object.
- `json.dump(obj, file)`: Serializes obj as a JSON formatted stream to file.
- `json.load(file)`: Deserializes file to a Python object.


```python
import json

person = {"name": "Alice", "age": 30, "city": "London", "hasPets": False}

# Serialize the dictionary to a JSON string
person_json = json.dumps(person)
print("JSON representation:", person_json)

# Deserialize the JSON back into a Python dictionary
person_dict = json.loads(person_json)
print("Back to Python dictionary:", person_dict)

# Writing JSON to a file
with open("../examples/person.json", "w") as file:
    json.dump(person, file)

# Reading JSON from a file
with open("../examples/person.json", "r") as file:
    person_read = json.load(file)
    print("Read from file:", person_read)
```

    JSON representation: {"name": "Alice", "age": 30, "city": "London", "hasPets": false}
    Back to Python dictionary: {'name': 'Alice', 'age': 30, 'city': 'London', 'hasPets': False}
    Read from file: {'name': 'Alice', 'age': 30, 'city': 'London', 'hasPets': False}


### YAML <a id="yaml"></a>

**YAML** (YAML Ain't Markup Language) is a human-readable data serialization standard that can be used in conjunction with all programming languages and is often used for configuration files. It is particularly known for its easy readability and its ability to represent hierarchical data structures. YAML is a superset of JSON, which means JSON files are also valid YAML files.

Key Features:
- **Human-Readable**: Designed to be easy for humans to read and write.
- **Hierarchical Data Structure**: Supports complex data structures including lists, associative arrays, and scalars.
- **Cross-Language**: YAML can be used with any programming language that has a YAML library.
- **Indentation**: Uses indentation to represent hierarchy, similar to how Python uses indentation to represent code blocks.

To work with YAML in Python, you typically use the `PyYAML` library, which is not included in the standard library and needs to be installed separately using a package manager like `pip`.


```python
# pip install PyYAML (if not already installed)

import yaml

# YAML string
yaml_str = """
name: John Doe
age: 30
married: true
children:
  - name: Jane Doe
    age: 10
"""

# Load YAML string into Python dictionary
data = yaml.safe_load(yaml_str)
print("Loaded YAML to Python object:", data)

# Convert Python dictionary back into YAML string
yaml_out = yaml.dump(data)
print("Python object back to YAML:\n", yaml_out)
```

    Loaded YAML to Python object: {'name': 'John Doe', 'age': 30, 'married': True, 'children': [{'name': 'Jane Doe', 'age': 10}]}
    Python object back to YAML:
     age: 30
    children:
    - age: 10
      name: Jane Doe
    married: true
    name: John Doe
    


### CSV <a id="csv"></a>

**CSV** (Comma-Separated Values) format is a simple file format used to store tabular data, such as a database or spreadsheet. Each line in a CSV file corresponds to a row in the table, and each field (or cell) in that row is separated by a comma.

Key Features:
- **Simplicity**: CSV files are easy to read and write by both humans and machines.
- **Compatibility**: Can be imported to and exported from programs that store data in tables, such as Excel or Google Sheets.
- **Flexibility**: Supports text data and numbers, making it versatile for various use cases.

Python provides a built-in `csv` module to easily deal with CSV files. This module presents functions to read, write, and manipulate data in CSV format.


```python
import csv

# Writing to a CSV file
with open("../examples/example.csv", "w", newline="") as file:
    writer = csv.writer(file)
    writer.writerow(["name", "age", "city"])
    writer.writerow(["Alice", "30", "New York"])
    writer.writerow(["Bob", "25", "Los Angeles"])

# Reading from a CSV file
with open("../examples/example.csv", "r") as file:
    reader = csv.reader(file)
    print("Using csv.reader:")
    for row in reader:
        print(row)

# Using DictReader for more intuitive access by column names
with open("../examples/example.csv", "r") as file:
    reader = csv.DictReader(file)
    print("Using DictReader:")
    for row in reader:
        print(row["name"], row["age"], row["city"])
```

    Using csv.reader:
    ['name', 'age', 'city']
    ['Alice', '30', 'New York']
    ['Bob', '25', 'Los Angeles']
    Using DictReader:
    Alice 30 New York
    Bob 25 Los Angeles


### XML <a id="xml"></a>

**XML** (eXtensible Markup Language) is a markup language that defines a set of rules for encoding documents in a format that is both human-readable and machine-readable. It is widely used for representing structured data in web services, configuration files, and data interchange between different systems.

Key Features:
- **Structured Data**: XML represents data in a hierarchical structure, which is flexible and can represent complex data relationships.
- **Self-descriptive**: XML documents can be self-descriptive, meaning the tags used in the documents can describe the data itself.
- **Widely Supported**: XML is a standard format supported by a multitude of tools and libraries across various programming languages.

Python's built-in `xml` module provides functions to work with XML data. The `ElementTree` module in the `xml` package provides a simple and lightweight way to work with XML data. It allows you to create, parse, and manipulate XML documents.


```python
import xml.etree.ElementTree as ET

# Sample XML data
xml_data = """<?xml version="1.0"?>
<library>
    <book>
        <title>Python Programming</title>
        <author>John Doe</author>
    </book>
    <book>
        <title>Learning XML</title>
        <author>Jane Smith</author>
    </book>
</library>"""

# Parsing XML data
root = ET.fromstring(xml_data)

# Finding all 'book' elements
for book in root.findall("book"):
    title = book.find("title").text
    author = book.find("author").text
    print(f"Title: {title}, Author: {author}")

# Creating a new XML element
new_book = ET.Element("book")
new_title = ET.SubElement(new_book, "title")
new_title.text = "New Book Title"
new_author = ET.SubElement(new_book, "author")
new_author.text = "New Author Name"

# Adding the new book to the library
root.append(new_book)

# Converting the modified XML back to a string
new_xml = ET.tostring(root, encoding="unicode")
print("new_xml:", new_xml)
```

    Title: Python Programming, Author: John Doe
    Title: Learning XML, Author: Jane Smith
    new_xml: <library>
        <book>
            <title>Python Programming</title>
            <author>John Doe</author>
        </book>
        <book>
            <title>Learning XML</title>
            <author>Jane Smith</author>
        </book>
    <book><title>New Book Title</title><author>New Author Name</author></book></library>


## 5. Data Encoding and Decoding <a id="data-encoding-and-decoding"></a>

Data encoding and decoding involve the processes of transforming data into a different format using a scheme that is understood by both the sender and receiver. This transformation is essential for data storage, transmission, or communication between different systems. Encoding converts data from a source format into a format suitable for transmission or storage, while decoding reverses the process, converting the encoded data back into its original format.

### base64 <a id="base64"></a>

_Base64_ is a binary-to-text encoding scheme that represents binary data in an ASCII string format by translating it into a radix-64 representation. It is commonly used in email and HTML to encode binary files like images or documents to attach or embed them in textual mediums.

Python's built-in `base64` module provides functions to encode and decode data using the base64 encoding scheme.


```python
import base64

# Original data
data = "Python is fun!"

# Encoding data
encoded_data = base64.b64encode(data.encode())
print(f"Encoded data: {encoded_data}")

# Decoding data
decoded_data = base64.b64decode(encoded_data).decode()
print(f"Decoded data: {decoded_data}")
```

    Encoded data: b'UHl0aG9uIGlzIGZ1biE='
    Decoded data: Python is fun!


### Unicode <a id="unicode"></a>

_Unicode_ is a computing industry standard designed to consistently encode, represent, and handle text expressed in most of the world's writing systems. In Python, strings are stored as Unicode by default.

Python's built-in `str` type is used to represent Unicode strings, and the `encode()` and `decode()` methods are used to convert between Unicode and byte strings.


```python
# Unicode string
text = "Pythön is interesting!"

# Encoding: Convert to UTF-8 bytes
encoded_text = text.encode("utf-8")
print(f"Encoded text: {encoded_text}")

# Decoding: Convert back to Unicode
decoded_text = encoded_text.decode("utf-8")
print(f"Decoded text: {decoded_text}")
```

    Encoded text: b'Pyth\xc3\xb6n is interesting!'
    Decoded text: Pythön is interesting!

