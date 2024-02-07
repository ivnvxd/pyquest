## Part VII: Python Standard Library <a id="7-standard-library"></a>

The Python Standard Library is a collection of modules that provide a wide range of functionality. The library is divided into a number of modules, each of which provides a specific set of functionality. The library is extensive and covers a wide range of topics, including file I/O, networking, databases, GUIs, and more.

### 1. Math <a id="math"></a>

The `math` module in Python provides access to mathematical functions defined by the C standard. These functions include trigonometric functions, representation functions, logarithmic functions, and many others, enabling you to perform mathematical operations beyond the basic arithmetic available in Python.

Trigonometric Functions:
- `math.sin(x)`: Returns the sine of x radians.
- `math.cos(x)`: Returns the cosine of x radians.
- `math.tan(x)`: Returns the tangent of x radians.

Hyperbolic Functions:
- `math.sinh(x)`: Returns the hyperbolic sine of x.
- `math.cosh(x)`: Returns the hyperbolic cosine of x.
- `math.tanh(x)`: Returns the hyperbolic tangent of x.

Rounding and Representation:
- `math.ceil(x)`: Returns the smallest integer greater than or equal to x.
- `math.floor(x)`: Returns the largest integer less than or equal to x.
- `math.trunc(x)`: Returns the truncated integer value of x.

Exponents and Logarithms:
- `math.exp(x)`: Returns e raised to the power of x.
- `math.log(x[, base])`: Returns the logarithm of x to the given base, with e as the default base if no second argument is provided.
- `math.pow(x, y)`: Returns x raised to the power of y.

Constants:
- `math.pi`: The mathematical constant π.
- `math.e`: The base of natural logarithms, e.
- `math.inf`: A floating-point positive infinity. (For Python version 3.5 and above.)
- `math.nan`: A floating-point "Not a Number" value.


```python
import math

# Rounding
print(f"ceil(2.1) = {math.ceil(2.1)}")
print(f"floor(2.9) = {math.floor(2.9)}")

# Exponent and logarithm
print(f"exp(1) = {math.exp(1)}")  # e^1
print(f"log(e) = {math.log(math.e)}")  # Logarithm base e

# Constants
print(f"π = {math.pi}")
print(f"e = {math.e}")

# Trigonometric functions
angle = math.pi / 4  # 45 degrees
print(f"sin(π/4) = {math.sin(angle)}")
print(f"cos(π/4) = {math.cos(angle)}")
```

    ceil(2.1) = 3
    floor(2.9) = 2
    exp(1) = 2.718281828459045
    log(e) = 1.0
    π = 3.141592653589793
    e = 2.718281828459045
    sin(π/4) = 0.7071067811865475
    cos(π/4) = 0.7071067811865476


### 2. DateTime <a id="library-datetime"></a>

The `datetime` module in Python provides classes for manipulating dates and times in both simple and complex ways. It offers functions to perform operations such as parsing dates from strings, formatting dates to strings, handling time zones, and arithmetic operations on dates.

Key Components:
- `datetime.date`: Represents a date (year, month, day) in the Gregorian calendar.
- `datetime.time`: Represents a time, independent of any particular day, assuming that every day has exactly 24\*60\*60 seconds.
- `datetime.datetime`: Combines date and time, representing a moment in time.
- `datetime.timedelta`: Represents a duration, the difference between two dates or times.
- `datetime.tzinfo`: An abstract base class for dealing with time zones.

#### Creating datetime variables <a id="creating-datetime-variables"></a>

You can create `datetime` objects by specifying year, month, day, hour, minute, second, and microsecond.


```python
from datetime import datetime

# Create a datetime object
dt = datetime(2024, 1, 1, 12, 0)
print(dt)
```

    2024-01-01 12:00:00


#### Datetime conversion <a id="datetime-conversion"></a>

You can format `datetime` objects as strings and parse strings into `datetime` objects using `strftime` and `strptime`, respectively.


```python
# Formatting datetime object to string
dt_string = dt.strftime("%Y-%m-%d %H:%M:%S")
print(dt_string)

# Parsing string to datetime object
dt_from_string = datetime.strptime("2024-01-01 12:00:00", "%Y-%m-%d %H:%M:%S")
print(dt_from_string)
```

    2024-01-01 12:00:00
    2024-01-01 12:00:00


#### Datetime arithmetic <a id="datetime-arithmetic"></a>

You can perform arithmetic operations with `datetime` objects using `timedelta` objects.


```python
from datetime import timedelta

# Adding 10 days to a datetime object
dt_plus_10_days = dt + timedelta(days=10)
print(dt_plus_10_days)

# Difference between two datetime objects
dt2 = datetime(2024, 1, 15, 12, 0)
delta = dt2 - dt
print(delta)
```

    2024-01-11 12:00:00
    14 days, 0:00:00


#### Timezones <a id="datetime-timezones"></a>

`datetime` objects can be made "aware" by attaching a timezone information. This is crucial for correctly handling time conversions and arithmetic across different time zones.


```python
from datetime import timedelta, timezone

# Create a timezone UTC+0
utc_zone = timezone(timedelta(hours=0))

# Attach the timezone to a datetime object
dt = datetime(2024, 1, 1, 12, 0, tzinfo=utc_zone)
print(dt)
```

    2024-01-01 12:00:00+00:00



### 3. Collections <a id="collections"></a>

The `collections` module in Python provides specialized container datatypes, supplementing the built-in containers like `dict`, `list`, `set`, and `tuple`. It offers alternative containers with additional functionality or optimizations for different use cases.

#### Counter <a id="collections-counter"></a>

A `Counter` is a subclass of `dict` that is used to count hashable objects. It is a collection where elements are stored as dictionary keys and their counts are stored as dictionary values.


```python
from collections import Counter

# Creating a Counter from a list
fruit_count = Counter(
    ["apple", "orange", "banana", "apple", "orange", "banana", "banana"]
)
print("Fruit count:", fruit_count)

# Creating a Counter from a string (counting characters)
char_count = Counter("mississippi")
print("Char count:", char_count)

# Accessing the count of an individual item
print("Individual count:", fruit_count["apple"])

# Returns an iterator over elements, repeating each as many times as its count
print("Elements:", list(char_count.elements()))

# Getting the most common elements
print("Most common:", fruit_count.most_common(2))

# Update counts from an iterable
fruit_count.update(["apple", "orange", "grape"])
print("Update counts:", fruit_count)

# Subtract counts
fruit_count.subtract(["apple", "orange"])
print("Subtract counts:", fruit_count)
```

    Fruit count: Counter({'banana': 3, 'apple': 2, 'orange': 2})
    Char count: Counter({'i': 4, 's': 4, 'p': 2, 'm': 1})
    Individual count: 2
    Elements: ['m', 'i', 'i', 'i', 'i', 's', 's', 's', 's', 'p', 'p']
    Most common: [('banana', 3), ('apple', 2)]
    Update counts: Counter({'apple': 3, 'orange': 3, 'banana': 3, 'grape': 1})
    Subtract counts: Counter({'banana': 3, 'apple': 2, 'orange': 2, 'grape': 1})


#### defaultdict <a id="collections-defaultdict"></a>

The `defaultdict` is similar to the standard `dict`, but it provides a default value for the dictionary being queried for keys that aren't present in the dictionary.


```python
from collections import defaultdict

# Create a defaultdict with list as the default factory
dd_list = defaultdict(list)

# Adding items to a non-existent key automatically initializes it with a new list
dd_list["a"].append(1)
dd_list["a"].append(2)
dd_list["b"].append(4)

print("List:", dd_list)

dd_int = defaultdict(int)

# Counting items
for word in ["red", "blue", "red", "green", "blue", "blue"]:
    dd_int[word] += 1

print("Int:", dd_int)
```

    List: defaultdict(<class 'list'>, {'a': [1, 2], 'b': [4]})
    Int: defaultdict(<class 'int'>, {'red': 2, 'blue': 3, 'green': 1})


#### OrderedDict <a id="collections-ordereddict"></a>

An `OrderedDict` is a dictionary subclass that remembers the order in which its contents are added, even if a new entry overwrites an existing entry. From Python 3.7 onwards, the built-in `dict` type maintains insertion order by default, making `OrderedDict` less essential.


```python
from collections import OrderedDict

od = OrderedDict()
od["banana"] = 3
od["apple"] = 4
od["pear"] = 1

for key, value in od.items():
    print(key, value)
```

    banana 3
    apple 4
    pear 1


#### namedtuple <a id="collections-namedtuple"></a>

A `namedtuple` generates class factories for creating tuple subclasses with named fields. They can be used anywhere regular tuples are used, and they add the ability to access fields by name instead of position index.


```python
from collections import namedtuple

# Creating a namedtuple 'Person' with 'name' and 'age' fields
Person = namedtuple("Person", ["name", "age"])
# or: Person = namedtuple('Person', 'name age')

# Creating instances of Person
alice = Person(name="Alice", age=30)
bob = Person("Bob", 25)

# Accessing fields
print("Alice name:", alice.name)
print("Bob age:", bob.age)

print("Alice _fields:", alice._fields)
print("Alice _asdict:", alice._asdict())

new_alice = alice._replace(age=31)
print("New Alice:", new_alice)
```

    Alice name: Alice
    Bob age: 25
    Alice _fields: ('name', 'age')
    Alice _asdict: {'name': 'Alice', 'age': 30}
    New Alice: Person(name='Alice', age=31)


#### deque <a id="collections-deque"></a>

A `deque` (double-ended queue) in Python, provided by the `collections` module, is a thread-safe, memory-efficient list-like container that supports fast appends and pops from either end. `deque` is optimized for quick insertion and deletion from both the front and the back, making it an ideal choice for queues and breadth-first tree searches where elements are frequently added and removed.


```python
from collections import deque

dq = deque([1, 2, 3])

dq.append(4)  # Add to the right
dq.appendleft(0)  # Add to the left
print(dq)

dq.pop()  # Remove from the right
dq.popleft()  # Remove from the left
print(dq)

dq.extend([4, 5])  # Add multiple to the right
dq.extendleft([0])  # Add multiple to the left
print(dq)

dq.rotate(1)  # Move items to the right
print(dq)
dq.rotate(-2)  # Move items to the left
print(dq)
```

    deque([0, 1, 2, 3, 4])
    deque([1, 2, 3])
    deque([0, 1, 2, 3, 4, 5])
    deque([5, 0, 1, 2, 3, 4])
    deque([1, 2, 3, 4, 5, 0])


### 4. OS and Sys <a id="os-and-sys"></a>

The `os` and `sys` modules in Python are two core modules that provide functions and variables used to interact with the operating system and the Python interpreter itself.

#### OS Module <a id="os-module"></a>

The `os` module provides a portable way of using operating system-dependent functionality. It includes functions for creating and removing a directory (folder), fetching its contents, changing and identifying the current directory, and more. It also provides access to some useful variables and functions that deal with the file system and the operating system.


```python
import os

# Change the current working directory
os.chdir("examples")
print(f"Changed working directory to: {os.getcwd()}")

# Example: Displaying the current directory's contents using the system's shell command
os.system("ls")

os.chdir("..")

# Setting and removing environment variable
os.environ["MY_VAR"] = "value"
print(os.environ.get("MY_VAR"))
del os.environ["MY_VAR"]

# Getting the current process ID
pid = os.getpid()
print(f"Current process ID: {pid}")

# Joining paths
joined_path = os.path.join("directory", "subdirectory", "file.txt")
print(f"Joined path: {joined_path}")

# Getting the absolute path
absolute_path = os.path.abspath("my_file.txt")
print(f"Absolute path: {absolute_path}")

# Splitting the path and filename
path, filename = os.path.split("/path/to/my_file.txt")
print(f"Path: {path}, Filename: {filename}")
```

    Changed working directory to: /Users/ve/dev/src/projects/pyquest/examples
    bytes.bin
    data.pickle
    example.csv
    names.txt
    person.json
    sample copy.txt
    sample.txt
    updated_names.txt
    value
    Current process ID: 912
    Joined path: directory/subdirectory/file.txt
    Absolute path: /Users/ve/dev/src/projects/pyquest/my_file.txt
    Path: /path/to, Filename: my_file.txt


#### Sys Module <a id="sys-module"></a>

The `sys` module provides access to some variables used or maintained by the Python interpreter and to functions that interact strongly with the interpreter. It is different from `os` in that it is more focused on the Python environment rather than the operating system.


```python
import sys

# Access command-line arguments
if len(sys.argv) > 1:
    print(f"Script name: {sys.argv[0]}")
    print(f"First argument: {sys.argv[1]}")

# Print Python version information
print(f"Python version: {sys.version}")

# Exit the program with a status code
# sys.exit(1)

# Print the Python path
print(f"Python Path: {sys.path[0]}")

# Print platform information
print(f"Platform: {sys.platform}")
```

    Script name: /Users/ve/Library/Python/3.11/lib/python/site-packages/ipykernel_launcher.py
    First argument: --f=/Users/ve/Library/Jupyter/runtime/kernel-v2-46736wZsZ5kApPuGq.json
    Python version: 3.11.7 (main, Dec  4 2023, 18:10:11) [Clang 15.0.0 (clang-1500.1.0.2.5)]
    Python Path: /Users/ve/dev/src/projects/pyquest
    Platform: darwin

