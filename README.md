# pyQuest

![pyQuest](img/background.jpg)

Stay awhile and listen, my friend, for I have a tale to tell you about a **wonderful journey** to the land of Python. Many brave souls have traveled to this mystical realm of coding in hopes of unraveling its secrets and mastering its magic. Not all of them return unscathed, but with this guide, you might just make it to the present day!

These digital pages contain a collection of **wise lessons** and **cheat sheets** that illuminate your path. The learning curve may feel steep at times, but fear not! With practice and perseverance, you'll soon be slinging code *like a pro*.

This repository is your guide, but the journey is yours to take **on your own**. Run each code snippet, tweak and modify as you desire. There is no better teacher than *hands-on experience*. Follow your curiosity - the Python is vast and amazing, full of packages and libraries for you to explore.

    In other words, all topics are in form of Jupyter notebooks, so you can (and must!) run them in your browser or on your local machine.

Now comes the time for daring, for adventuring into the unknown. *Keep this manual close* and venture forth, brave coder. Your quest awaits.

**Happy coding, adventurer!** 🐍🏰🔮

---

By the way, if you're preparing for a job interview, check out this list of crucial [Python Interview](Python_Interview.md) topics and [Coding Interview](Coding_Interview.md) cheatsheets.

## Content

- [Part I. Data Structures and Data Types](#toc-1-ds-and-dt)
- [Part II: Data Manipulation and Processing](#toc-2-dm-and-processing)
- [Part III: Control Flow and Data Flows](#toc-3-cf-and-df)
- [Part IV: File Handling, I/O, and Serialization](#toc-4-file-io-serialization)
- [Part V: Exceptions and Error Handling](#toc-5-exceptions-and-errors)
- [Part VI: Functional Programming](#toc-6-fp)
- [Part VII: Python Standard Libraries](#toc-7-standard-libraries)
- [Part VIII: Object-Oriented Programming](#toc-8-oop)
- [Part IX: Python Language Fundamentals](#toc-9-language-fundamentals)
- [Part X: Concurrency](#toc-10-concurrency)
- [Part XI: Debugging and Testing](#toc-11-debugging-and-testing)
- [Part XII: Common Practices](#toc-12-common-practices)
- [Part XIII: Databases](#toc-13-databases)
- [Part XIV: Networking and Web Development](#toc-14-web)
- [Part XV: GUI Programming](#toc-15-gui)
- [Part XVI: Python and Data Science](#toc-16-data-science)
- [Part XVII: Software Architecture](#toc-17-architecture)
- [Part XVIII: DevOps](#toc-18-devops)
- [Part XIX: Algorithms](#toc-19-algorithms)

## Table of contents

### [Part I. Data Structures and Data Types](#1-ds-and-dt) <a id="toc-1-ds-and-dt"></a>

1. [Basic Data Types](#basic-dt)
    - [String](#string)
    - [Number](#number)
        - [Integer](#integer)
        - [Float](#float)
        - [Complex](#complex)
    - [NoneType](#none)
2. [Built-in Data Structures](#built-in-ds)
    - [List](#list)
    - [Tuple](#tuple)
        - [Named tuple](#namedtuple)
    - [Dictionary](#dict)
        - [DefaultDict](#defaultdict)
        - [OrderedDict](#ordereddict)
        - [Counter](#counter)
    - [Set](#set)
        - [Frozenset](#frozenset)
    - [Array](#array)
        - [Bytes](#bytes)
        - [Bytearray](#bytearray)
    - [Deque](#deque)
    - [Queue](#queue)
        - [LifoQueue](#lifoqueue)
        - [PriorityQueue](#priorityqueue)
    - [Heap queue (Heapq)](#heap)
3. [User-defined Data Structures](#user-defined-ds)
    - [Linked List](#linkedlist)
    - [Binary Tree](#binarytree)
    - [B-tree](#btree)
    - [Red-Black Tree](#redblacktree)
    - [AVL Tree](#avltree)
    - [Trie](#trie)
4. [Other Data Types](#other-dt)
    - [Enum](#enum)
    - [Range](#range)
    - [Dataclass](#dataclass)
    - [Struct](#struct)
    - [Datetime](#datetime)
        - [Constructors](#constructors)
        - [Now](#now)
        - [Timezone](#timezone)
5. [General Data Structure Concepts](#general-ds-concepts)
    - [Mutable/Immutable](#mutable-immutable)
    - [Hash calculation problem](#hashcalc)
    <!-- TODO: - [Common data structures operations](#common-data-structures-operations) -->

### [Part II: Data Manipulation and Processing](#2-dm-and-processing) <a id="toc-2-dm-and-processing"></a>

1. [Basic Data Manipulation](#basic-dm)
    - [Slice](#slice)
    - [Sorting](#sorting)
    - [any()/all()](#anyall)
    - [Basic Math operations](#basicmathoperations)
        - [sum(), count(), min(), max()](#sumcountminmax)
        - [Basic math](#basicmath)
        - [Bit operations](#bitoperations)
        - [Bit count](#bitcount)
        - [Fraction](#fraction)
        - [Euclidean distance](#euclideandistance)
2. [String Operations](#string-operations)
    - [lower(), upper(), capitalize(), title()](#loweruppercapitalizetitle)
    - [strip()](#strip)
    - [split()](#split)
    - [ord(), chr()](#ordchr)
3. [Regular Expressions](#regular-expressions)
    - [RegEx](#regex)
    - [match](#match)

### [Part III: Control Flow and Data Flows](#3-cf-and-df) <a id="toc-3-cf-and-df"></a>

1. [Conditional Statements](#conditional-statements)
    - [if, else, elif](#if-else-elif)
    - [Nested conditions](#nested-conditions)
2. [Loops](#loops)
    - [for loop](#for-loop)
    - [range](#range)
    - [while loop](#while-loop)
    - [Nested loops](#nested-loops)
3. [Loop Control Statements](#loop-control-statements)
    - [break](#break)
    - [continue](#continue)
    - [pass](#pass)
4. [Itertools](#itertools)
    - [Infinite iterators](#infinite-iterators)
    - [Finite iterators](#finite-iterators)
    - [Combinatorics](#combinatorics)
5. [enumerate()](#enumerate)
6. [zip()](#zip)
7. [Context Managers](#context-managers)
    - [enter/exit](#enter-exit)
    - [contextlib](#contextlib)
<!-- TODO: 8. [Recursion](#recursion)
    - [Recursion vs Iteration](#recursion-vs-iteration)
    - [Tail Recursion](#tail-recursion) -->

### [Part IV: File Handling, I/O, and Serialization](#4-file-io-serialization) <a id="toc-4-file-io-serialization"></a>

1. [File Operations](#file-operations)
    - [Opening a File](#opening-a-file)
    - [Reading from a File](#reading-from-a-file)
    - [Writing to a File](#writing-to-a-file)
    - [Closing a File](#closing-a-file)
2. [Working with Directories](#working-with-directories)
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

### [Part V: Exceptions and Error Handling](#5-exceptions-and-errors) <a id="toc-5-exceptions-and-errors"></a>

1. [Python Exceptions](#python-exceptions)
    - [Built-in Exceptions](#built-in-exceptions)
    - [Exception hierarchy](#exception-hierarchy)
2. [Handling Exceptions](#handling-exceptions)
    - [try, except, else, finally blocks](#try-except-else-finally-blocks)
    - [Catching multiple exceptions](#catching-multiple-exceptions)
3. [Raising Exceptions](#raising-exceptions)
    - [raise statement](#raise-statement)
    - [assert statement](#assert-statement)
4. [User-Defined Exceptions](#user-defined-exceptions)

### [Part VI: Functional Programming](#6-fp) <a id="toc-6-fp"></a>

1. [Lambda Functions](#lambda-functions)
2. [Comprehensions](#comprehensions)
    - [List comprehension](#list-comprehension)
    - [Dict comprehension](#dict-comprehension)
    - [Set comprehension](#set-comprehension)
3. [Functools](#functools)
    - [map](#map)
    - [filter](#filter)
    - [reduce](#reduce)
4. [Bisect](#bisect)
    - [bisect_left, bisect_right](#bisect-left-right)
    - [insort_left, insort_right](#insort-left-right)
5. [Decorators](#decorators)
    - [Decorator](#decorator)
    - [Parametrized decorator](#parametrized-decorator)
    - [functools.wraps](#functools-wraps)
    - [LRU Cache](#lru-cache)
6. [Generators](#generators)
    - [yield](#yield)
    - [Generator expression](#generator-expression)
    - [yield from](#yield-from)
7. [Iterators](#iterators)
    - [Building an iterator](#building-iterator)

### Part VII: Python Standard Libraries <a id="toc-7-standard-libraries"></a>

1. Math
2. DateTime
    - Creating datetime variables
    - Datetime conversion
    - Datetime arithmetic
3. Collections
4. OS and Sys

### Part VIII: Object-Oriented Programming <a id="toc-8-oop"></a>

1. OOP Basics
    - Understanding Magic Methods
    - init, repr, str Methods
    - Property Decorator
    - Static Methods
    - Class Methods
    - Slots
2. OOP Principles
    - Inheritance
    - Encapsulation
    - Polymorphism
    - Abstraction
3. Duck Typing
    - Introduction to Duck Types
    - Iterable, Comparable, Hashable, Sortable, Callable Duck Types
    - Context Manager Duck Type
4. Iterable Duck Types
    - Iterable, Collection, Sequence Types
5. Object Copying
    - Shallow Copy
    - Deep Copy
6. Inheritance
    - Single Inheritance
    - Multiple Inheritance
    - Abstract Methods
    - Method Resolution Order
    - Inheritance with Slots
7. Metaprogramming
    - Meta classes
    - ABC Meta Class
    - Class Registries
8. Design Patterns
    - Creational, Structural, Behavioral Patterns
    - MVC, Singleton, Factory, Observer, etc.

### Part IX: Python Language Fundamentals <a id="toc-9-language-fundamentals"></a>

1. Garbage Collection
    - Reference Counting
    - GC Debug and objgraph
    - PyPy Garbage Collection
2. Typing
    - Static and Dynamic Typing
    - Protocols
3. Introspection
    - Variables, Attributes, Parameters
4. Miscellaneous
    - Global Interpreter Lock (GIL)
    - -args and --kwargs
    - Closures
    - Operators overloading
    - Y Combinator

### Part X: Concurrency <a id="toc-10-concurrency"></a>

1. Multithreading
    - Basics of Multithreading
    - Thread Synchronization
    - Thread Communication
2. Multiprocessing
    - Process Creation and Synchronization
    - Interprocess Communication
3. Asyncio
    - Basics of Asyncio
    - Tasks and Coroutines
    - Event Loops
4. Synchronization
    - Locks
    - Semaphores
    - Conditions
    - Events

### Part XI: Debugging and Testing <a id="toc-11-debugging-and-testing"></a>

1. Debugging Python Code
    - PDB
    - Debugging Techniques
2. Unit Testing with Python
    - Unittest library
3. Python Testing Frameworks
    - Pytest
    - Nose
    - Doctest
4. Test-Driven Development

### Part XII: Common Practices <a id="toc-12-common-practices"></a>

1. Logging
2. Profiling
3. Random Number Generation
4. User Input and Output
5. Cryptography
6. Data Compression

### Part XIII: Databases <a id="toc-13-databases"></a>

1. Databases Basics
    - Relational Databases
    - ACID Properties
2. SQL
    - SQLite
    - MySQL
    - PostgreSQL
3. NoSQL
    - Redis
    - MongoDB
4. ORM
    - SQLAlchemy
    - Django ORM

### Part XIV: Networking and Web Development <a id="toc-14-web"></a>

1. HTTP
    - HTTP Basics
    - HTTP Methods
2. Web Frameworks
    - Django
    - Flask
    - FastAPI
3. API
    - REST API
    - Authentication
    - JWT
    - GraphQL
4. RPC
    - XML-RPC
    - JSON-RPC
    - gRPC
5. Web Scraping
    - Beautiful Soup
6. Websockets
7. Web Servers
    - WSGI
    - ASGI
    - Gunicorn
    - Nginx

### Part XV: GUI Programming <a id="toc-15-gui"></a>

1. Tkinter
2. PyQT
3. wxPython

### Part XVI: Python and Data Science <a id="toc-16-data-science"></a>

1. NumPy
2. Pandas
3. Matplotlib
4. SciPy
5. Machine Learning with Scikit-Learn

### Part XVII: Software Architecture <a id="toc-17-architecture"></a>

1. Principles
    - SOLID
    - DRY
    - KISS
    - YAGNI
2. Paradigms
    - Procedural
    - Structured
    - Object-oriented
    - Functional
3. Architecture styles:
    - Monolithic
    - Microservice
    - Layered
    - Event-Driven
4. Microservices
    - Microservices Basics
    - Communication
5. System Design
    - System Design Basics
    - Designing for Scalability and Reliability
6. Refactoring
    - Code Smells
    - Refactoring Techniques

### Part XVIII: DevOps <a id="toc-18-devops"></a>

1. Git
    - Branching Models
    - Git Tools
    - GitHub Features
2. Linux
    - Basic Commands
    - Shell Scripting
3. Development Lifecycle
    - SDLC Models
    - Agile and Scrum
4. CI/CD
    - CI/CD Pipeline
    - Jenkins, Travis CI, GitLab CI
5. Containers
    - Docker
    - Kubernetes
6. Cloud
    - AWS
    - Azure
    - GCP
    - DigitalOcean
7. Infrastructure as Code
    - Terraform
    - Ansible
8. Monitoring
    - Prometheus
    - Grafana
    - ELK Stack

### Part XIX: Algorithms <a id="toc-19-algorithms"></a>

1. Time Complexity and Big O Notation
2. Sorting Algorithms
    - Bubble
    - Selection
    - Insertion
    - Quick
    - Merge
    - Heap
    - Radix
3. Searching Algorithms
    - Linear, Binary
    - Depth-First Search
    - Breadth-First Search
    - Dijkstra's
    - Bellman-Ford
4. Graph Algorithms
5. Problem Solving Methods
    - Two Pointers
    - Divide and Conquer
    - Recursion
    - Dynamic Programming
    - Greedy Algorithms

### [Outro](#c-outro)

### [Sources](#c-sources)

### [License](#c-license)


## Part I. Data Structures and Data Types <a id="1-ds-and-dt"></a>

Data structures in Python are objects or collections of objects that can hold and organize data in various ways. They provide a way to store and manipulate data, and can be used for a wide range of applications, from simple to complex.

Python provides a rich set of built-in data structures, such as `lists`, `tuples`, `dictionaries`, and `sets`. These data structures can be used to hold various types of data, including `numbers`, `strings`, and other objects.

Python also provides more specialized data structures, such as `arrays`, `heaps`, and `queues`, as well as libraries that provide more advanced data structures, such as `pandas` and `numpy`.

Choosing the appropriate data structure for a particular application can have a significant impact on performance, readability, and ease of implementation. Understanding the strengths and weaknesses of different data structures is an important part of writing efficient and effective Python code.

### 1. Basic Data Types <a id="basic-dt"></a>

#### String <a id="string"></a>

In Python, a `string` is a sequence of characters enclosed in quotation marks (either single or double quotes). `Strings` are one of the built-in data types in Python and are used to represent text data.

Python 3.x uses [`str`](https://docs.python.org/3/library/stdtypes.html#text-sequence-type-str) objects to store textual data as immutable sequences of Unicode characters. Practically speaking, that means a `str` is an immutable array of characters. Oddly enough, it’s also a recursive data structure — each character in a string is itself a `str` object of length 1.


```python
# Concatenating strings
greeting = "Hello"
name = "Alice"
message = greeting + " " + name
print("message:", message)

# Assemble the string using the specified separator
joined_string = " ".join(["The", "quick", "brown", "fox"])
print("joined_string:", joined_string)

# Converting case
sentence = "The quick brown fox jumps over the lazy dog"
upper_sentence = sentence.upper()
lower_sentence = sentence.lower()
print("upper_sentence:", upper_sentence)
print("lower_sentence:", lower_sentence)

# Finding substrings
word = "Hello"
index = word.find("l")
substring = word[1:4]
print("index:", index)
print("substring:", substring)

# Replacing substrings
sentence = "The quick brown fox jumps over the lazy dog"
new_sentence = sentence.replace("brown", "red")
print("new_sentence:", new_sentence)
```

    message: Hello Alice
    joined_string: The quick brown fox
    upper_sentence: THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG
    lower_sentence: the quick brown fox jumps over the lazy dog
    index: 2
    substring: ell
    new_sentence: The quick red fox jumps over the lazy dog


#### Number <a id="number"></a>

In Python, there are three built-in numeric data types: `integers`, `floating-point` numbers, and `complex` numbers.

It is also possible to convert between numeric data types in Python using built-in functions. For example, the `int()` function can be used to convert a floating-point number or a string to an integer, and the `float()` function can be used to convert an integer or a string to a floating-point number.


```python
a = 3.5
b = int(a)  # Converting a floating-point number to an integer
print("b:", b)

s = "123"
i = int(s)  # Converting a string to an integer
print("i:", i)

c = 5
d = float(c)  # Converting an integer to a floating-point number
print("d:", d)

t = "3.14"
f = float(t)  # Converting a string to a floating-point number
print("f:", f)
```

    b: 3
    i: 123
    d: 5.0
    f: 3.14


##### Integer <a id="int"></a>

Integers are whole numbers that can be positive, negative, or zero. They are represented by the `int` class in Python.


```python
a = 5
b = 3

c = a / b
print("c:", c)

# Bitwise operations
d = a & b  # 0b0001
e = a | b  # 0b0111
f = a ^ b  # 0b0110
print("d:", d)
print("e:", e)
print("f:", f)

# Comparisons
print(a > b)
print(a < b)
print(a == b)
print(a != b)

# Logical operations
p = True
q = False
r = p and q
s = p or q
t = not p
print("r:", r)
print("s:", s)
print("t:", t)
```

    c: 1.6666666666666667
    d: 1
    e: 7
    f: 6
    True
    False
    False
    True
    r: False
    s: True
    t: False


##### Float <a id="float"></a>

Floating-point numbers are decimal numbers that can also be positive, negative, or zero. They are represented by the `float` class in Python.


```python
import math

x = 3.14
y = -2.5

z = x**y
print("z:", z)

b = math.sin(x)
c = math.exp(x)
d = math.sqrt(x)
print("b:", b)
print("c:", c)
print("d:", d)
```

    z: 0.05723687045956228
    b: 0.0015926529164868282
    c: 23.103866858722185
    d: 1.772004514666935


##### Complex <a id="complex"></a>

Complex numbers are numbers that have a real and an imaginary component. They are represented by the `complex` class in Python. Complex numbers are created by using the `j` or `J` suffix to indicate the imaginary component.


```python
import cmath

# Comparisons
z1 = 2 + 3j
z2 = 2 + 4j
a = z1 == z2
b = z1 != z2
print("a:", a)
print("b:", b)

# Mathematical functions
z3 = -1 + 1j
c = cmath.phase(z3)
d = abs(z3)
e = cmath.sqrt(z3)
f = cmath.exp(z3)
print("c:", c)
print("d:", d)
print("e:", e)
print("f:", f)
```

    a: False
    b: True
    c: 2.356194490192345
    d: 1.4142135623730951
    e: (0.45508986056222733+1.09868411346781j)
    f: (0.19876611034641298+0.3095598756531122j)


#### NoneType <a id="none"></a>

In Python, `None` is a special value that represents the absence of a value or the absence of a meaningful value. It is often used to indicate that a variable or function does not return any useful value.

`None` is a built-in constant in Python, represented by the `NoneType` class. It is typically used to initialize variables or functions that are expected to be assigned a value or return a value later on.


```python
x = None  # Initializing a variable with None


def greet(name):  # Defining a function that returns None
    if name:
        print(f"Hello, {name}!")
    else:
        print("Hello, stranger!")
    return None


greet("Alice")
greet("")
```

    Hello, Alice!
    Hello, stranger!


### 2. Built-in Data Structures <a id="built-in-ds"></a>

#### List <a id="list"></a>

A `list` is the most versatile and popular data structure in Python which can be written as a list of comma-separated values (items) between square brackets.  

A `list` is an ordered mutable collection of objects. Important thing about a `list` is that items in a `list` need not be of the same type. The internal structure of a `list` is an `array` (more precisely, a vector) of pointers, i.e. the `list` is a dynamic `array`.


```python
a = []  # Create an empty list

a: list[int] = [10, 20]
b: list[int] = [30, 40]
a.append(50)  # Add a value at the end of the list
b.insert(1, 60)  # Insert value at specific index
print("List a:", a)
print("List b:", b)

a += b
print(f"Add: {a}")

a.reverse()
b = list(reversed(a))  # reversed() returns an iterator, not a list
print("Reversed a:", a)
print("Reversed b:", b)

b = sorted(a)  # Returns a new sorted list
a.sort()  # Modifies the original list and returns nothing
print("Sorted a:", a)
print("Sorted b:", b)

s: str = "This is a string"
list_of_chars: list = list(s)
print(list_of_chars)
list_of_words: list = s.split()
print(list_of_words)

i: int = list_of_chars.index(
    "i"
)  # Returns the index of the first occurrence of the item searched for or throws a ValueError exception
print(i)
list_of_chars.remove(
    "i"
)  # Removes the first occurrence of the searched element or throws a ValueError exception
e = list_of_chars.pop(
    9
)  # Removes and returns the value located at the index. pop() (with no argument) will remove and return the last item in the list
print(list_of_chars)
print(e)
a.clear()  # Clear list
```

    List a: [10, 20, 50]
    List b: [30, 60, 40]
    Add: [10, 20, 50, 30, 60, 40]
    Reversed a: [40, 60, 30, 50, 20, 10]
    Reversed b: [10, 20, 50, 30, 60, 40]
    Sorted a: [10, 20, 30, 40, 50, 60]
    Sorted b: [10, 20, 30, 40, 50, 60]
    ['T', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 's', 't', 'r', 'i', 'n', 'g']
    ['This', 'is', 'a', 'string']
    2
    ['T', 'h', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'r', 'i', 'n', 'g']
    s


#### Tuple <a id="tuple"></a>

A `tuple` is also a list, only immutable and hashable. A `tuple` containing the same data as a `list` takes less space:


```python
a = [2, 3, "Some", "String", 1.56e-22]
b = (2, 3, "Some", "String", 1.56e-22)

print(f"List: {a.__sizeof__()} bytes")
print(f"Tuple: {b.__sizeof__()} bytes")
```

    List: 88 bytes
    Tuple: 64 bytes


##### Named tuple <a id="namedtuple"></a>

According to the name, `namedtuple` has named fields. It is not a separate data structure, but a factory function that returns a new `tuple` subclass.


```python
from collections import namedtuple

rectangle = namedtuple("rectangle", "length width")
r = rectangle(length=1, width=2)

print("r:", r)
print("r.lengt:", r.length)
print("r.width:", r.width)
print("r._fields:", r._fields)
```

    r: rectangle(length=1, width=2)
    r.lengt: 1
    r.width: 2
    r._fields: ('length', 'width')


#### Dictionary <a id="dict"></a>

_Dictionary_ is the second most commonly used data structure in Python. The `dict` is an implementation of a hash table, so we cannot take a non-hashable object as a key, such as a `list` (this is where `tuple` comes in handy). The key of the dictionary can be any immutable object: number, string, datetime or even function. Such objects have a method `__hash__()`, which uniquely associates the object to a number. With this number the dictionary looks for the value of the key.

`Lists`, `dictionaries` and `sets` (which we will consider below) are mutable and have no hash method; an attempt to substitute them into the dictionary will result in an error.


```python
d = {}  # Create an empty dictionary

d: dict[str, str] = {
    "France": "Croissant",
    "Mexico": "Taco",
    "India": "Naan",
}  # Direct dictionary creation

k = ["France", "Mexico", "India"]
v = ["Croissant", "Taco", "Naan"]
d = dict(zip(k, v))  # create a dictionary from two collections using zip()

k = d.keys()  # Key collection. Reflects changes in the main dictionary
v = d.values()  # Value collection. Also reflects changes in main dictionary
k_v = d.items()  # Key-value tuples, which also reflect changes in the main dictionary

print("d:", d)
print("d.keys():", k)
print("d.values():", v)
print("d.items():", k_v)

print(f"Mapping: {k.mapping['France']}")

d.update(
    {"India": "Samosa"}
)  # Adding a value. If the key matches, the old value will be overwritten
print(f"Replace item: {d}")

c = d["India"]  # Read value
print(f"Read item: {c}")

try:
    v = d.pop("Brazil")  # Delete value or raise KeyError exception
except KeyError:
    print("Dictionary key doesn't exist")

# Examples of dict comprehension (more on comprehension below)
b = {
    k: v for k, v in d.items() if "o" in k
}  # Will return a new dictionary, filtered by key value
print("dict comprehension:", b)

c = {
    k: v for k, v in d.items() if len(v) >= 4
}  # Returns a new dictionary, filtered by value length
print("dict comprehension:", c)

d.clear()  # Clearing dictionary
```

    d: {'France': 'Croissant', 'Mexico': 'Taco', 'India': 'Naan'}
    d.keys(): dict_keys(['France', 'Mexico', 'India'])
    d.values(): dict_values(['Croissant', 'Taco', 'Naan'])
    d.items(): dict_items([('France', 'Croissant'), ('Mexico', 'Taco'), ('India', 'Naan')])
    Mapping: Croissant
    Replace item: {'France': 'Croissant', 'Mexico': 'Taco', 'India': 'Samosa'}
    Read item: Samosa
    Dictionary key doesn't exist
    dict comprehension: {'Mexico': 'Taco'}
    dict comprehension: {'France': 'Croissant', 'Mexico': 'Taco', 'India': 'Samosa'}


##### DefaultDict <a id="defaultdict"></a>

If you try to read from the normal dictionary a value of a key that is not there, a KeyError exception will be thrown (exceptions will be discussed below). `defaultdict` allows you not to write an exception handler, but simply treats reading a non-existent key as a command to write to that key and return the default value; for example, `defaultdict(int)` will return `0`.


```python
from collections import defaultdict

dd = defaultdict(int)
print("dd[10]:", dd[10])  # Print int, the default value: zero will be printed
dd[5] = "five"
print("dd[5]:", dd[5])

dd = {}  # "Regular" empty dictionary
# print(dd[10]) # will throw a KeyError exception
```

    dd[10]: 0
    dd[5]: five


##### OrderedDict <a id="ordereddict"></a>

Python includes a specialized `dict` subclass that remembers the insertion order of keys added to it: `OrderedDict`.


```python
from collections import OrderedDict

od = OrderedDict(one=1, two=2, three=3)
print("od:", od)

for k, v in od.items():
    print(k, v)
```

    od: OrderedDict([('one', 1), ('two', 2), ('three', 3)])
    one 1
    two 2
    three 3


##### Counter <a id="counter"></a>

The `Counter` counts the objects passed to it. Sometimes it is very convenient to just feed some list into the counter and immediately get the data structure with the counted elements.


```python
from collections import Counter

shoes_sizes = ["36", "38", "39", "38", "40", "40", "42"]
c = Counter(shoes_sizes)
print("c:", c)

c["42"] += 1
print(f"After shopping: {c}")
```

    c: Counter({'38': 2, '40': 2, '36': 1, '39': 1, '42': 1})
    After shopping: Counter({'38': 2, '40': 2, '42': 2, '36': 1, '39': 1})


Explaining how `Counter()` works with `defaultdict()`:


```python
from collections import defaultdict

shirts_colors = ["red", "white", "blue", "white", "white", "black", "black"]

d = defaultdict(int)
for shirt in shirts_colors:
    d[shirt] += 1

print("d:", d)
```

    d: defaultdict(<class 'int'>, {'red': 1, 'white': 3, 'blue': 1, 'black': 2})


#### Set <a id="set"></a>

The third most common Python data structure. `Sets` were formerly somewhat reduced `dictionaries`, but over time their implementations began to diverge. However, a `set` is still a hash table with appropriate performance on different types of operations.


```python
big_cities: set["str"] = {"Paris", "Berlin", "Tokyo"}
european_cities: set["str"] = {"Paris", "Berlin", "Madrid"}

big_cities |= {"Barcelona"}  # add value (or add())
european_cities |= {"Lisbon", "Rome"}  # Add sets (or update())

print("big_cities:", big_cities)
print("european_cities:", european_cities)

union_cities: set["str"] = big_cities | european_cities  # Or union()
intersected_cities: set["str"] = big_cities & european_cities  # Or intersection()
dif_cities: set["str"] = big_cities - european_cities  # Or difference()
symdif_cities: set["str"] = big_cities ^ european_cities  # Or symmetric_difference()

issub: bool = big_cities <= union_cities  # Or issubset()
issuper: bool = european_cities >= dif_cities  # Or issuperset()

print("union_cities:", union_cities)
print("intersected_cities:", intersected_cities)
print("dif_cities:", dif_cities)
print("symdif_cities:", symdif_cities)

print("issub:", issub)
print("issuper:", issuper)

big_cities.add("Moscow")

big_cities.remove("Paris")  # Deletes value if present or throws KeyError
big_cities.discard("Berlin")  # Deletes value without throwing KeyError
big_cities.pop()  # Returns and deletes a random value (order in set undefined) or discards KeyError
big_cities.clear()  # Clears the set
```

    big_cities: {'Paris', 'Berlin', 'Tokyo', 'Barcelona'}
    european_cities: {'Rome', 'Lisbon', 'Madrid', 'Berlin', 'Paris'}
    union_cities: {'Lisbon', 'Rome', 'Madrid', 'Berlin', 'Paris', 'Tokyo', 'Barcelona'}
    intersected_cities: {'Paris', 'Berlin'}
    dif_cities: {'Tokyo', 'Barcelona'}
    symdif_cities: {'Rome', 'Lisbon', 'Madrid', 'Tokyo', 'Barcelona'}
    issub: True
    issuper: False


##### Frozen set <a id="frozenset"></a>

`frozenset` is the same set, only immutable and hashable. Reminds of the difference between a `list` and a `tuple`.


```python
a = frozenset({"New-York", "Los Angeles", "Ottawa"})
print("a:", a)
```

    a: frozenset({'Ottawa', 'New-York', 'Los Angeles'})


#### Array <a id="array"></a>

An `array` in Python is not the default data structure of choice and is only used when structure size and processing speed become crucial. But, on the other hand, if you are looking at `NumPy` and `Pandas` (a bit below), arrays are your go to.

An `array` stores variables of a certain type, so unlike a `list`, it doesn't require you to create a new object for each new variable and wins over a `list` in size and access speed. You could say it's a thin wrapper over C arrays.

You should distinguish between an `array` ("simple" array), `bytes` (an immutable array containing only bytes, the legacy str of Python 2), and `bytearray` (a mutable byte array).


```python
from array import array

a1 = array("l", [1, 2, 3, -4])
a2 = array("b", b"1234567890")
b = bytes(a2)

print("a1:", a1)
print("a2[0]:", a2[0])
print("b:", b)

print(
    "a1.index(-4):", a1.index(-4)
)  # Returns the index of the elements or throws a ValueError
```

    a1: array('l', [1, 2, 3, -4])
    a2[0]: 49
    b: b'1234567890'
    a1.index(-4): 3


##### Bytes <a id="bytes"></a>

[`bytes`](https://docs.python.org/3/library/stdtypes.html#bytes-objects) objects are immutable sequences of single bytes, or integers in the range 0 ≤ _x_ ≤ 255. Conceptually, `bytes` objects are similar to `str` objects, and you can also think of them as immutable arrays of bytes.


```python
# Creation
b1 = bytes([5, 10, 15, 20])  # Integers must be between 0 and 255
b2 = "The Bytes".encode("utf-8")
b3 = (-4096).to_bytes(
    4, byteorder="little", signed=True
)  # byteorder = "big"/"little"/"sys.byteorder", signed = False/True
b4 = bytes.fromhex("DEADBEEF")  # Hex values can be separated by spaces for readability
b5 = bytes(range(10, 40, 3))

print("b1:", b1)
print("b2:", b2)
print("b3:", b3)
print("b4:", b4)
print("b5:", b5)

# Transformation
c: list = list(b"\x01\x02\x03\x04\x05\x06")
s: str = b"The Bytes".decode("utf-8")
b: int = int.from_bytes(
    b"\xfc\x00", byteorder="little", signed=False
)  # byteorder = "big"/"little"/"sys.byteorder", signed = False/True
s2: str = b"\xfc\x00\x00\x00\x00\x01".hex(" ")

print("c:", c)
print("s:", s)
print("b:", b)
print("s2:", s2)

with open("examples/bytes.bin", "wb") as file:  # Write byte to file
    file.write(b1)

with open("examples/bytes.bin", "rb") as file:  # Read from file
    b6 = file.read()

print("b6:", b6)
```

    b1: b'\x05\n\x0f\x14'
    b2: b'The Bytes'
    b3: b'\x00\xf0\xff\xff'
    b4: b'\xde\xad\xbe\xef'
    b5: b'\n\r\x10\x13\x16\x19\x1c\x1f"%'
    c: [1, 2, 3, 4, 5, 6]
    s: The Bytes
    b: 252
    s2: fc 00 00 00 00 01
    b6: b'\x05\n\x0f\x14'


##### Bytearray <a id="bytearray"></a>

The [`bytearray`](https://docs.python.org/3.1/library/functions.html#bytearray) type is a mutable sequence of integers in the range 0 ≤ _x_ ≤ 255. The `bytearray` object is closely related to the `bytes` object, with the main difference being that a `bytearray` can be modified freely—you can overwrite elements, remove existing elements, or add new ones. The `bytearray` object will grow and shrink accordingly.

A `bytearray` can be converted back into immutable `bytes` objects, but this involves copying the stored data in full—a slow operation taking _O_(_n_) time:


```python
# Creation
ba1 = bytearray([1, 2, 3, 4])  # Create a bytearray from a list of integers
b2 = "The Bytes".encode("utf-8")
ba2 = bytearray(b2)  # Create a bytearray from a bytes object

print("ba1:", ba1)
print("ba2:", ba2)

# Modification
ba1[0] = 5  # Modify an element in the bytearray
ba2.append(33)  # Append an integer to the bytearray
ba2.extend(b1)  # Extend the bytearray with another bytes object

print("ba1:", ba1)
print("ba2:", ba2)

# Transformation
ba3 = bytearray(b5)  # Create a bytearray from a bytes object (b5)
b7 = bytes(ba3)  # Convert the bytearray back to a bytes object

print("ba3:", ba3)
print("b7:", b7)
```

    ba1: bytearray(b'\x01\x02\x03\x04')
    ba2: bytearray(b'The Bytes')
    ba1: bytearray(b'\x05\x02\x03\x04')
    ba2: bytearray(b'The Bytes!\x05\n\x0f\x14')
    ba3: bytearray(b'\n\r\x10\x13\x16\x19\x1c\x1f"%')
    b7: b'\n\r\x10\x13\x16\x19\x1c\x1f"%'


#### Deque <a id="deque"></a>

The `deque` class implements a double-ended queue that supports adding and removing elements from either end in _O_(1) time (non-amortized). Because deques support adding and removing elements from either end equally well, they can serve both as `queues` and as `stacks`.

Python’s `deque` objects are implemented as doubly-linked lists. This gives them excellent and consistent performance for inserting and deleting elements, but poor _O_(_n_) performance for randomly accessing elements in the middle of the stack.


```python
from collections import deque

d = deque([1, 2, 3, 4], maxlen=1000)

d.append(5)  # Add element to the right side of the deque
d.appendleft(
    0
)  # Add element to the left side of the deque by appending elements from iterable

d.extend([6, 7])  # Extend the right side of the deque
d.extendleft([-1, -2])  # Extend the left side of the deque
print("d:", d)

a = d.pop()  # Remove and return an element from the right side of the deque. Can raise an IndexError
b = d.popleft()  # Remove and return an element from the left side of the deque. Can raise an IndexError
print("a:", a)
print("b:", b)
print("d:", d)
```

    d: deque([-2, -1, 0, 1, 2, 3, 4, 5, 6, 7], maxlen=1000)
    a: 7
    b: -2
    d: deque([-1, 0, 1, 2, 3, 4, 5, 6], maxlen=1000)


#### Queue <a id="queue"></a>

`Queue` implements FIFO with multiple data providers and multiple consumers. It can be particularly useful for multithreading, allowing information to be exchanged correctly between threads. 
There is also `LifoQueueue` to implement LIFO and `PriorityQueueue` to implement priority queue.


```python
from queue import Queue

q = Queue(maxsize=1000)

q.put("eat", block=True, timeout=10)
q.put("sleep")  # By default block=True, timeout=None
q.put("code")
q.put_nowait(
    "repeat"
)  # Equivalent to put("repeat", block=False). If a free slot is not immediately available, a queue.Full exception will be thrown
print("q.queue:", q.queue)

a = q.get(block=True, timeout=10)  # Remove and return element from FIFO
b = q.get()  # By default block=True, timeout=None
c = q.get_nowait()  # Equivalent to get(False)
print("a:", a)
print("b:", b)
print("c:", c)
print("q.queue:", q.queue)
```

    q.queue: deque(['eat', 'sleep', 'code', 'repeat'])
    a: eat
    b: sleep
    c: code
    q.queue: deque(['repeat'])


##### LifoQueue <a id="lifoqueue"></a>

`LifoQueue` stores and retrieves elements in a last-in, first-out (LIFO) order. This means that the last element added to the queue will be the first one retrieved from it. LifoQueue is also sometimes called a "`stack`" because it behaves like a stack data structure.


```python
from queue import LifoQueue

q = LifoQueue()

q.put(1)  # add an item to the top of the stack
q.put(2)  # add another item to the top of the stack
q.put(3)  # add yet another item to the top of the stack

print(q.get())  # get the last item that was added to the stack (3)
print(q.get())  # get the next-to-last item that was added to the stack (2)
print(q.get())  # get the first item that was added to the stack (1)
```

    3
    2
    1


##### PriorityQueue <a id="priorityqueue"></a>

`PriorityQueue` allows elements to be retrieved in order of priority. When you add an element to a PriorityQueue, you assign it a priority value. The PriorityQueue uses this priority value to determine the order in which elements are retrieved. The element with the highest priority will be the first one retrieved from the queue. PriorityQueue is also sometimes called a "`heap`" because it is implemented using a heap data structure.


```python
from queue import PriorityQueue

q = PriorityQueue()

q.put((3, "High Priority"))  # add an item with priority 3
q.put((1, "Low Priority"))  # add an item with priority 1
q.put((2, "Medium Priority"))  # add an item with priority 2

print(q.get()[1])  # get the item with lowest priority (priority 1)
print(q.get()[1])  # get the next item with the second lowest priority (priority 2)
print(q.get()[1])  # get the item with highest priority (priority 3)
```

    Low Priority
    Medium Priority
    High Priority


#### Heap queue (Heapq) <a id="heap"></a>

In Python, a `heap` is a binary tree data structure that is commonly used to implement a PriorityQueue. A `heap` is a complete binary tree where the parent node is always greater (or less) than its children, and the tree has the minimum or maximum element at the root node.

Python's `heapq` module provides the min heap (the smallest value always lies at the root) functions for working with heaps in a list. The heapq module can be used to create a heap, add elements to it, remove elements from it, and so on. 
If you need a max heap, with the maximum value at the root, you can use the advice from [Stackoverflow](https://stackoverflow.com/questions/2501457/what-do-i-use-for-a-max-heap-implementation-in-python).


```python
import heapq

h = [211, 1, 43, 79, 12, 5, -10, 0]
heapq.heapify(h)  # Turn the list into a heap
print("h:", h)

heapq.heappush(h, 2)  # Add item
heapq.heappush(h, 150)
print("h:", h)

m = heapq.heappop(h)  # Retrieve the minimum item
print("h:", h)
print("m:", m)
```

    h: [-10, 0, 5, 1, 12, 211, 43, 79]
    h: [-10, 0, 5, 1, 12, 211, 43, 79, 2, 150]
    h: [0, 1, 5, 2, 12, 211, 43, 79, 150]
    m: -10


### 3. User-defined Data Structures <a id="user-defined-ds"></a>

Data structures that Python has no built-in implementation, but can nevertheless be very useful in a real project.

#### Linked List <a id="linkedlist"></a>

A `linked list` ([Wiki](https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list)) is a data structure that consists of a sequence of nodes, where each node contains a value and a reference to the next node in the list. The first node in the list is called the `head` of the list, and the last node is called the `tail`. Linked lists can be used to implement various data structures, such as stacks and queues.

Python does not have a built-in linked list data structure, but it can be implemented using a class to represent the nodes and their relationships. 

#### Binary Tree <a id="binarytree"></a>

A `binary tree` ([Wiki](https://en.wikipedia.org/wiki/Binary_tree)) is a type of tree data structure in which each node can have at most two children, known as the `left child` and the `right child`. Each node contains a value, and the left child's value is less than the node's value, while the right child's value is greater than the node's value. Binary trees are often used to implement search and sorting algorithms, such as binary search.

#### B-tree <a id="btree"></a>

A `B-tree` ([Wiki](https://en.wikipedia.org/wiki/B-tree)) is a type of self-balancing tree data structure that can store large amounts of data on disk or in memory. B-trees are commonly used in databases and file systems to store and retrieve large amounts of data quickly and efficiently.

In a B-tree, each node can contain multiple keys and pointers to child nodes. The number of keys in a node is determined by a parameter called the "order" of the tree. Each node in the tree has at least `ceil(order/2)` keys and at most order keys.

Python does not have a built-in B-tree data structure, but there are third-party libraries that provide implementations of B-trees, such as the `bintrees` module.

#### Red-Black Tree <a id="redblacktree"></a>

A `Red-Black Tree` ([Wiki](https://en.wikipedia.org/wiki/Red%E2%80%93black_tree)) is a self-balancing binary search tree data structure. It is similar to a binary search tree but has additional properties that make it self-balancing, which means that the tree is always balanced, ensuring efficient searching, insertion, and deletion of elements.

The Red-Black Tree is named after the color of its nodes, which can be either `red` or `black`. The nodes are structured in a way that ensures that the tree is always balanced, regardless of the order in which elements are inserted or deleted.

In Python, a Red-Black Tree can be implemented using a class to represent the nodes and their relationships, and by implementing the necessary algorithms for searching, insertion, and deletion.

#### AVL Tree <a id="avltree"></a>

`AVL Tree` ([Wiki](https://en.wikipedia.org/wiki/AVL_tree)) can be defined as height balanced binary search tree in which each node is associated with a balance factor which is calculated by subtracting the height of its right sub-tree from that of its left sub-tree.

In AVL trees, insertion and deletion operations are slower than in red-black trees. But for lookup-intensive applications, AVL trees are faster than red–black trees because they are more strictly balanced.

#### Trie <a id="trie"></a>

A `Trie` ([Wiki](https://en.wikipedia.org/wiki/Trie)) is a tree-like data structure that is used for efficient searching and retrieval of strings. It is also known as a `prefix tree`, because it can be used to efficiently search for all strings that have a given prefix.

A Trie is made up of nodes that represent the characters of the strings being stored. Each node has multiple branches, one for each possible character in the alphabet, and each branch can lead to another node or to a leaf node that represents the end of a string.

The Trie data structure is particularly useful when dealing with large sets of strings, as it allows for efficient searching, insertion, and deletion of strings.

### 4. Other Data Types <a id="other-dt"></a>

#### Enum <a id="enum"></a>

The `enum` module in Python provides a way to define named constants in a program. Enums are a way to represent a set of values as a named collection of symbolic constants. They make it easier to write more readable, self-documenting code and help avoid errors due to typos or invalid values.


```python
from enum import Enum


class Color(Enum):
    RED = 1
    GREEN = 2
    BLUE = 3


print("Color.RED:", Color.RED)  # Color.RED
print("Color.BLUE:", Color.BLUE)  # Color.BLUE
print("Color.GREEN:", Color.GREEN)  # Color.GREEN

# Iterating over enums
for color in Color:
    print(color)

# Accessing enum members by value
print("Color(1):", Color(1))  # Color.RED
print("Color(2):", Color(2))  # Color.GREEN
print("Color(3):", Color(3))  # Color.BLUE

list_of_colors = list(Color)
color_names = [e.name for e in Color]
color_values = [e.value for e in Color]

print("list_of_colors:", list_of_colors)
print("color_names:", color_names)
print("color_values:", color_values)
```

    Color.RED: Color.RED
    Color.BLUE: Color.BLUE
    Color.GREEN: Color.GREEN
    Color.RED
    Color.GREEN
    Color.BLUE
    Color(1): Color.RED
    Color(2): Color.GREEN
    Color(3): Color.BLUE
    list_of_colors: [<Color.RED: 1>, <Color.GREEN: 2>, <Color.BLUE: 3>]
    color_names: ['RED', 'GREEN', 'BLUE']
    color_values: [1, 2, 3]


#### Range <a id="range"></a>

In Python, `range()` is a built-in function that generates a sequence of numbers. `The range()` function is commonly used for iterating over a sequence of numbers, such as in a for loop.

The `range()` function takes up to three arguments, in the form `range(start, stop, step)`. The `start` argument is the starting number of the sequence (inclusive), the `stop` argument is the ending number of the sequence (exclusive), and the `step` argument is the difference between each number in the sequence.


```python
r1: range = range(11)  # Returns a sequence of numbers from 0 to 10
r2: range = range(5, 21)  # Returns a sequence of numbers from 5 to 20
r3: range = range(
    20, 9, -2
)  # Returns the sequence of numbers from 20 to 10 in steps of 2

print("To exclusive: ", end="")
for i in r1:
    print(f"{i} ", end="")

print("\nFrom inclusive to exclusive: ", end="")
for i in r2:
    print(f"{i} ", end="")

print("\nFrom inclusive to exclusive with step: ", end="")
for i in r3:
    print(f"{i} ", end="")

print(f"\nFrom = {r3.start}")
print(f"To = {r3.stop}")
```

    To exclusive: 0 1 2 3 4 5 6 7 8 9 10 
    From inclusive to exclusive: 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 
    From inclusive to exclusive with step: 20 18 16 14 12 10 
    From = 20
    To = 9


#### Dataclass <a id="dataclass"></a>

In Python, the `dataclass` decorator is a  shorthand way of creating classes that are primarily used for storing data, and can save time and reduce code duplication by automatically generating common methods such as `__init__()`, `__repr__()`, and `__eq__()`.

Using the `dataclass` decorator, you can define a class with a concise syntax that specifies the fields of the class, their types, and any default values or other attributes. 

There is a more advanced alternative called [attrs](https://pypi.org/project/attrs/).


```python
from dataclasses import dataclass


@dataclass
class Point:
    x: float
    y: float
    z: float = 0.0


# With a dataclass, you can create instances of the class using the normal syntax for calling a constructor:
p1 = Point(1.0, 2.0)
p2 = Point(3.0, 4.0, 5.0)

print("p1:", p1.x, p1.y, p1.z)
print("p2:", p2.x, p2.y, p2.z)
```

    p1: 1.0 2.0 0.0
    p2: 3.0 4.0 5.0


The dataclass decorator also generates other useful methods, such as `__repr__()`, which returns a string representation of the object, and `__eq__()`, which tests for equality between two objects of the same class.

Dataclass can be made immutable with the directive `frozen=True`.


```python
from dataclasses import dataclass


@dataclass(frozen=True)
class User:
    name: str
    account: int
```

#### Struct <a id="struct"></a>

In Python, the `struct` module provides functions for packing and unpacking binary data. These functions allow you to convert data between Python objects and their binary representation, which is useful for working with binary data formats such as network protocols, file formats, and device drivers.

Allows you to turn a Python `int` into, for example, a `short int` or a `long int`.


```python
from struct import iter_unpack, pack, unpack

p = pack("if", 42, 3.14)
print("pack:", p)

u = b"*\x00\x00\x00\xcd\xcc\x0c@"
values = unpack("if", u)
print("unpack:", values)

i = b"*\x00\x00\x00\xcd\xcc\x0c@\xa0\x0f\x00\x00\xcd\xcc\xcc?"
for values in iter_unpack("if", i):
    print("iter_unpack:", values)
```

    pack: b'*\x00\x00\x00\xc3\xf5H@'
    unpack: (42, 2.200000047683716)
    iter_unpack: (42, 2.200000047683716)
    iter_unpack: (4000, 1.600000023841858)


#### Datetime <a id="datetime"></a>

In Python, the `datetime` module provides classes for working with dates and times. 

The `datetime` class is the most commonly used class in the `datetime` module and represents a date and time together.

The `datetime` module also provides several other classes for working with dates and times, such as `date`, `time`, and `timedelta`. These classes provide more fine-grained control over individual components of a date or time, such as the year, month, day, hour, minute, second, or microsecond.

##### Constructors <a id="constructors"></a>

The constructor creates a `datetime` object with the specified year, month, day, hour, minute, second, and microsecond. If any of these values are not specified, they default to 0.


```python
from datetime import date, datetime, time, timedelta

d: date = date(year=1987, month=11, day=2)
t: time = time(hour=12, minute=30, second=0, microsecond=0, tzinfo=None, fold=0)
dt: datetime = datetime(year=1987, month=11, day=2, hour=9, minute=30, second=0)
td: timedelta = timedelta(weeks=1, days=2, hours=12, minutes=13, seconds=14)

print("d:", d)
print("t:", t)
print("dt:", dt)
print("td:", td)
```

    d: 1987-11-02
    t: 12:30:00
    dt: 1987-11-02 09:30:00
    td: 9 days, 12:13:14


##### Now <a id="now"></a>

Get the current date or date/time.


```python
import time
from datetime import date, datetime

import pytz

d: date = date.today()
dt1: datetime = datetime.today()
dt2: datetime = datetime.utcnow()
dt3: datetime = datetime.now(pytz.timezone("Europe/Budapest"))

t1 = time.time()  # Unix epoch time
t2 = time.ctime()

print("d:", d)
print("dt1:", dt1)
print("dt2:", dt2)
print("dt3:", dt3)
print("t1:", t1)
print("t2:", t2)
```


    ---------------------------------------------------------------------------

    ModuleNotFoundError                       Traceback (most recent call last)

    Cell In[31], line 4
          1 import time
          2 from datetime import date, datetime
    ----> 4 import pytz
          6 d: date = date.today()
          7 dt1: datetime = datetime.today()


    ModuleNotFoundError: No module named 'pytz'


##### Timezone <a id="timezone"></a>

The `timezone` class is used to represent a time zone and can be used to convert `datetime` objects between different time zones.


```python
import datetime

import pytz

# Create a datetime object representing April 15, 2022 at 3:30 PM in the US/Eastern time zone
eastern = pytz.timezone("US/Eastern")
dt = datetime.datetime(2022, 4, 15, 15, 30, tzinfo=eastern)
print("dt:", dt)

# Convert the datetime object to the UTC time zone
utc = pytz.utc
dt_utc = dt.astimezone(utc)
print("dt_utc:", dt_utc)
```

    dt: 2022-04-15 15:30:00-04:56
    dt_utc: 2022-04-15 20:26:00+00:00


### 5. General Data Structure Concepts <a id="general-ds-concepts"></a>

#### Mutable/Immutable <a id="mutable-immutable"></a>

In Python, data structures and data types can be classified as either mutable or immutable.

`Immutable` data types are those whose value cannot be changed once they are created. Examples of immutable data types in Python include: 
- Strings;
- Numbers (integers, floats, and complex numbers);
- Tuples;
- Frozen sets.

When an operation is performed on an immutable object, a new object is created in memory, rather than modifying the existing object. This is because the original object cannot be modified due to its immutability.

`Mutable` data types are those whose value can be changed after they are created. Examples of mutable data types in Python include:
- Lists;
- Dictionaries;
- Sets.

When an operation is performed on a mutable object, the object is modified in place, rather than creating a new object in memory. This is because mutable objects can be modified due to their mutability.

For the User-defined Classes it purely depends upon the user to define the characteristics.

#### Hash calculation problem <a id="hashcalc"></a>

Any hash table, including a Python dictionary, must be able to solve the hash calculation problem. For this purpose the **open addressing** or **chaining** techniques are used. Python [uses](https://stackoverflow.com/questions/9010222/why-can-a-python-dict-have-multiple-keys-with-the-same-hash) open addressing.

The new dictionary is initialized with 8 empty slots.
The interpreter first tries to add the new entry at an address that depends on the hash of the key.

```python
addr = hash(key) & mask,
```
where
```python
mask = PyDictMINSIZE - 1
```

If this address is busy, the interpreter checks (with `==`) the hash and the key. If both match, then the record already exists. Then it starts probing for free slots, which is done in pseudo-random order (the order depends on the key value). A new record will be added to the first free address.

Reading from the dictionary is done similarly, the interpreter starts searching from `addr` position and follows the same pseudo-random path until it reads the desired record.


## Part II. Data Manipulation and Processing <a id="2-dm-and-processing">

### 1. Basic Data Manipulation <a id="basic-dm"></a>

#### Slice <a id="slice"></a>

In Python, a `slice` is a way to extract a portion of a sequence, such as a `string`, `list`, or `tuple`. 

`Slices` are defined using the colon (:) operator, with the syntax `start:stop:step`. The `start` parameter is the index of the first element to include in the slice, the `stop` parameter is the index of the first element to exclude from the slice, and the `step` parameter is the number of elements to skip between each included element.


```python
# Slicing a string
s = "Hello, world!"

s1 = s[0:5]
s2 = s[7:]
s3 = s[:5]
s4 = s[::2]

print("s1:", s1)
print("s2:", s2)
print("s3:", s3)
print("s4:", s4)

# Slicing a list
lst = [1, 2, 3, 4, 5]

lst1 = lst[1:3]
lst2 = lst[::2]

print("lst1:", lst1)
print("lst2:", lst2)
```

    s1: Hello
    s2: world!
    s3: Hello
    s4: Hlo ol!
    lst1: [2, 3]
    lst2: [1, 3, 5]


The values of `start` and `stop` can be negative, which means that it is counting from the end of the structure. You can also use a negative `step` value.


```python
s = "Hello, world!"

s1 = s[-6:]
s2 = s[:-5]
s3 = s[::-1]

print("s1:", s1)
print("s2:", s2)
print("s3:", s3)
```

    s1: world!
    s2: Hello, w
    s3: !dlrow ,olleH


#### Sorting <a id="sorting"></a>

In Python, sorting is the process of arranging elements in a specific order. Python provides two built-in functions for sorting: `sort()` and `sorted()`. 

The `sort()` method sorts the list in-place, meaning it modifies the original list. It does not return a new list. The `sorted()` function, on the other hand, returns a new sorted list and leaves the original list unchanged.


```python
# Using sort()
lst = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
lst.sort()
print("lst:", lst)

# Using sorted()
lst = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
new_lst = sorted(lst)
print("new_lst:", new_lst)
print("lst:", lst)
```

    lst: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
    new_lst: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
    lst: [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]


Both `sort()` and `sorted()` can take a `reverse` parameter to sort the list in descending order.


```python
# Sorting in descending order
lst = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
lst.sort(reverse=True)
print("lst:", lst)

new_lst = sorted(lst, reverse=True)
print("new_lst:", new_lst)
```

    lst: [9, 6, 5, 5, 5, 4, 3, 3, 2, 1, 1]
    new_lst: [9, 6, 5, 5, 5, 4, 3, 3, 2, 1, 1]


Both `sort()` and `sorted()` can also take a `key` parameter, which is a function that takes an element as input and returns a value to use for sorting.


```python
# Sorting by length of strings
lst = ["apple", "banana", "cherry", "date", "elderberry"]
lst.sort(key=len)
print("lst:", lst)

new_lst = sorted(lst, key=len, reverse=True)
print("new_lst:", new_lst)
```

    lst: ['date', 'apple', 'banana', 'cherry', 'elderberry']
    new_lst: ['elderberry', 'banana', 'cherry', 'apple', 'date']


Complex data structures can be sorted by `key=lambda el: el[1]` or even, for example, by `key=lambda el: (el[1], el[0])`.

#### any()/all() <a id="anyall"></a>

`all()` and `any()` are built-in functions that operate on iterable objects, such as lists, tuples, and sets.

The `all()` function returns `True` if all elements in the iterable are `True`, and `False` otherwise. The `any()` function returns `True` if at least one element in the iterable is `True`, and `False` otherwise.


```python
# Using all()
lst1 = [True, True, True]
lst2 = [True, False, True]
lst3 = [False, False, False]

print("all(lst1):", all(lst1))
print("all(lst2):", all(lst2))
print("all(lst3):", all(lst3))

# Using any()
lst4 = [False, False, True]
lst5 = [False, False, False]

print("any(lst1):", any(lst1))
print("any(lst4):", any(lst4))
print("any(lst5):", any(lst5))
```

    all(lst1): True
    all(lst2): False
    all(lst3): False
    any(lst1): True
    any(lst4): True
    any(lst5): False


`all()` and `any()` can also be used with generator expressions, which are similar to list comprehensions but do not create a list in memory.


```python
# Using all() with a generator expression
lst = [1, 2, 3, 4, 5]
al = all(x > 0 for x in lst)
print("al:", al)

# Using any() with a generator expression
lst = [0, 0, 0, 1, 0]
an = any(x > 0 for x in lst)
print("an:", an)
```

    al: True
    an: True


Note that `all()` and `any()` short-circuit, meaning they stop iterating through the iterable as soon as the result is determined. For example, if `all()` encounters a `False` element, it immediately returns `False` without checking the remaining elements.

#### Basic Math operations <a id="basicmathoperations"></a>

##### sum(), count(), min(), max() <a id="sumcountminmax"></a>

In Python, `sum()`, `count()`, `min()`, and `max()` are built-in functions that operate on iterable objects, such as lists, tuples, and sets.

The `sum()` function returns the sum of all elements in the iterable. It can also take an optional `start` parameter, which is added to the sum of the iterable.


```python
lst = [1, 2, 3, 4, 5]
s1 = sum(lst)
print("s1:", s1)

tpl = (1.5, 2.5, 3.5)
s2 = sum(tpl, 1)
print("s2:", s2)
```

    s1: 15
    s2: 8.5


The `count()` function returns the number of times a specified element appears in the iterable.


```python
lst = [1, 2, 3, 4, 5, 2]
c1 = lst.count(2)
print("c1:", c1)

tpl = ("apple", "banana", "cherry", "banana")
c2 = tpl.count("banana")
print("c2:", c2)
```

    c1: 2
    c2: 2


The `min()` function returns the smallest element in the iterable. It can also take multiple arguments, in which case it returns the smallest argument.


```python
lst = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
m1 = min(lst)
print("m1:", m1)

tpl = ("apple", "banana", "cherry")
m2 = min(tpl)
print("m2:", m2)

print("m3:", min(3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5))
```

    m1: 1
    m2: apple
    m3: 1


The `max()` function returns the largest element in the iterable. It can also take multiple arguments, in which case it returns the largest argument.


```python
lst = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
m1 = max(lst)
print("m1:", m1)

tpl = ("apple", "banana", "cherry")
m2 = max(tpl)
print("m2:", m2)

print("m3:", max(3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5))
```

    m1: 9
    m2: cherry
    m3: 9


##### Basic math <a id="basicmath"></a>

In Python, basic math operations include addition (`+`), subtraction (`-`), multiplication (`*`), division (`/`), and exponentiation (`**`). These operators work on numeric data types, such as integers and floating-point numbers.


```python
a = 5
b = 3

# Addition
c1 = a + b
print("c1:", c1)

# Subtraction
c2 = a - b
print("c2:", c2)

# Multiplication
c3 = a * b
print("c3:", c3)

# Division
c4 = a / b
print("c4:", c4)

# Exponentiation
c5 = a**b
print("c5:", c5)
```

    c1: 8
    c2: 2
    c3: 15
    c4: 1.6666666666666667
    c5: 125


Note that division (`/`) always returns a floating-point number, even if both operands are integers. If you want to perform integer division, use the `//` operator instead.


```python
a = 5
b = 3
c = a // b
print("c:", c)
```

    c: 1


##### Bit operations <a id="bitoperations"></a>

Bit operations are used to manipulate individual bits in binary numbers. Bitwise operators work on integers at the binary level, and are used to perform operations such as shifting bits left or right, setting or clearing individual bits, and performing logical operations on bits.

Here are the bitwise operators in Python:

- `&` (AND): Sets each bit to 1 if both bits are 1.
- `|` (OR): Sets each bit to 1 if one of the bits is 1.
- `^` (XOR): Sets each bit to 1 if only one of the bits is 1.
- `~` (NOT): Inverts all the bits.
- `<<` (left shift): Shifts the bits left by a specified number of positions.
- `>>` (right shift): Shifts the bits right by a specified number of positions.


```python
a = 0b1010
b = 0b1100

# AND
c1 = bin(a & b)
print("c1:", c1)

# OR
c2 = bin(a | b)
print("c2:", c2)

# XOR
c3 = bin(a ^ b)
print("c3:", c3)

# NOT
c4 = bin(~a)
print("c4:", c4)

# Left shift
c5 = bin(a << 2)
print("c5:", c5)

# Right shift
c6 = bin(a >> 2)
print("c6:", c6)
```

    c1: 0b1000
    c2: 0b1110
    c3: 0b110
    c4: -0b1011
    c5: 0b101000
    c6: 0b10


##### Bit count <a id="bitcount"></a>

Bit count refers to the number of set bits (bits with a value of 1) in a binary representation of an integer. One way to count the number of set bits in Python is to use the `bin()` function to convert the integer to a binary string, and then use the `count()` method to count the number of '1' characters in the string.


```python
num = 10
binary = bin(num)[2:]  # remove the '0b' prefix
count = binary.count("1")
print("count:", count)
```

    count: 2


##### Fraction <a id="fraction"></a>

Fractions can be represented using the `fractions` module. The `Fraction` class in this module represents a rational number as a numerator and a denominator. The `Fraction` class can be initialized with a numerator and denominator, or with a string representation of a fraction.


```python
from fractions import Fraction

frac = Fraction(3, 4)
print("frac:", frac)
```

    frac: 3/4


The `Fraction` class also provides various methods for performing arithmetic operations on fractions, such as addition, subtraction, multiplication, and division.

Note that the `Fraction` class automatically simplifies fractions to their lowest terms, so the fraction `5/4` in the example above is automatically simplified to `1 1/4`.


```python
from fractions import Fraction

frac1 = Fraction(3, 4)
frac2 = Fraction(1, 2)

sum_frac = frac1 + frac2
print("sum_frac:", sum_frac)

diff_frac = frac1 - frac2
print("diff_frac:", diff_frac)

prod_frac = frac1 * frac2
print("prod_frac:", prod_frac)

quot_frac = frac1 / frac2
print("quot_frac:", quot_frac)
```

    sum_frac: 5/4
    diff_frac: 1/4
    prod_frac: 3/8
    quot_frac: 3/2


##### Euclidean distance <a id="euclideandistance"></a>

The Euclidean distance between two points in n-dimensional space can be calculated using the `distance` function from the `scipy.spatial` module.

The `distance` function can also be used to calculate other types of distances, such as Manhattan distance and Chebyshev distance, by passing different parameters to the function.


```python
from scipy.spatial import distance

point1 = (1, 2, 3)
point2 = (4, 5, 6)

euclidean_dist = distance.euclidean(point1, point2)
print("euclidean_dist:", euclidean_dist)
```

    euclidean_dist: 5.196152422706632


### 2. String Operations <a id="string-operations"></a>

#### lower(), upper(), capitalize(), title() <a id="loweruppercapitalizetitle"></a>

GitHub Copilot: In Python, strings have several built-in methods for modifying their case and capitalization.

- `lower()`: This method returns a new string with all the characters in lowercase.
- `upper()`: This method returns a new string with all the characters in uppercase.
- `capitalize()`: This method returns a new string with the first character in uppercase and the rest in lowercase.
- `title()`: This method returns a new string with the first character of each word in uppercase and the rest in lowercase.


```python
string = "Hello, World!"

lower_string = string.lower()
print("lower_string:", lower_string)

upper_string = string.upper()
print("upper_string:", upper_string)

string = "hello, world!"

cap_string = string.capitalize()
print("cap_string:", cap_string)

title_string = string.title()
print("title_string:", title_string)
```

    lower_string: hello, world!
    upper_string: HELLO, WORLD!
    cap_string: Hello, world!
    title_string: Hello, World!


#### strip() <a id="strip"></a>

`strip()` method is used to remove leading and trailing whitespace characters (spaces, tabs, and newlines) from a string.

The `strip()` method can also be used to remove specific characters from the beginning and end of a string by passing a string argument to the method. This argument specifies the characters to be removed. Note that the order of the characters in the argument does not matter.


```python
string = "   hello, world!   \n"
stripped_string_1 = string.strip()
print("stripped_string_1:", stripped_string_1)

string = "+++hello, world!---"
stripped_string_2 = string.strip("+-")
print("stripped_string_2:", stripped_string_2)
```

    stripped_string_1: hello, world!
    stripped_string_2: hello, world!


#### split() <a id="split"></a>

The `split()` method is used to split a string into a list of substrings based on a specified delimiter. By default, the delimiter is whitespace characters (spaces, tabs, and newlines), but a different delimiter can be specified as an argument to the method. 

The `split()` method can also be used to split a string into a list of substrings based on a specified maximum number of splits. This is done by passing a second argument to the method, which specifies the maximum number of splits to perform.


```python
string = "hello world!"
split_string_1 = string.split()
print("split_string_1:", split_string_1)

string = "hello,world!"
split_string_2 = string.split(",")
print("split_string_2:", split_string_2)

string = "hello,world,how,are,you?"
split_string_3 = string.split(",", 2)
print("split_string_3:", split_string_3)
```

    split_string_1: ['hello', 'world!']
    split_string_2: ['hello', 'world!']
    split_string_3: ['hello', 'world', 'how,are,you?']


#### ord(), chr() <a id="ordchr"></a>

GitHub Copilot: In Python, the `ord()` and `chr()` functions are used to convert between characters and their corresponding ASCII codes. 

- The `ord()` function takes a single character as an argument and returns its corresponding ASCII code as an integer.
- The `chr()` function takes an integer ASCII code as an argument and returns the corresponding character as a string.

Note that the `ord()` and `chr()` functions only work with ASCII characters and codes. For Unicode characters and codes, the `ord()` and `chr()` functions may not work as expected.


```python
char = "A"

ascii_code = ord(char)
print("ascii_code:", ascii_code)

char = chr(ascii_code + 1)
print("char:", char)
```

    ascii_code: 65
    char: B


### 3. Regular Expressions <a id="regular-expressions"></a>

#### RegEx <a id="regex"></a>

Regular expressions (often abbreviated as "`RegEx`") are sequences of characters that define a search pattern. This pattern can be used to match strings or parts of strings. Python's `re` module provides functions to work with regular expressions.

1. Basic Patterns:

- `.`: Matches any character except a newline.
- `^`: Matches the start of the string.
- `$`: Matches the end of the string.
- `*`: Matches 0 or more repetitions of the preceding character or group.
- `+`: Matches 1 or more repetitions of the preceding character or group.
- `?`: Matches 0 or 1 repetition of the preceding character or group.
- `\d`: Matches any decimal digit; equivalent to [0-9].
- `\D`: Matches any non-digit character.
- `\w`: Matches any alphanumeric character or underscore; equivalent to [a-zA-Z0-9_].
- `\W`: Matches any non-alphanumeric character.
- `\s`: Matches any whitespace character.
- `\S`: Matches any non-whitespace character.

2. Functions in the re module:

- `search()`: Searches for a match to the pattern anywhere in the string. Returns a match object if found, otherwise returns None.
- `findall()`: Returns all non-overlapping matches of the pattern in the string as a list of strings.
- `finditer()`: Returns an iterator yielding match objects for all non-overlapping matches of the pattern in the string.
- `sub()`: Replaces one or many matches with a string.
- `split()`: Splits the source string by the occurrences of the pattern.


```python
import re

# Search for the word "Python" in the given string
result = re.search(r"Python", "Learning Python is fun!")
if result:
    print(f"Match found at index {result.start()} to {result.end()}.")
else:
    print("Match not found!")

# Extract all email addresses from the given string
text = "Contact us at contact@mywebsite.com or at support@mywebsite.com"
pattern = r"[\w\.-]+@[\w\.-]+"
print("findall:", re.findall(pattern, text))

# Find all words that are exactly 3 characters long
text = "The cat and the hat sat on the mat."
pattern = r"\b\w{3}\b"
for match in re.finditer(pattern, text):
    print(f"Found word: {match.group()} at position {match.start()}-{match.end()}.")

# Replace all occurrences of "apple" or "orange" with "fruit"
text = "I have two apples and three oranges."
pattern = r"apple|orange"
print("sub:", re.sub(pattern, "fruit", text))

# Split a string by any number (e.g., "3a5b2c" -> ['a', 'b', 'c'])
text = "3a5b2c"
pattern = r"\d"
print("split:", re.split(pattern, text))
```

    Match found at index 9 to 15.
    findall: ['contact@mywebsite.com', 'support@mywebsite.com']
    Found word: The at position 0-3.
    Found word: cat at position 4-7.
    Found word: and at position 8-11.
    Found word: the at position 12-15.
    Found word: hat at position 16-19.
    Found word: sat at position 20-23.
    Found word: the at position 27-30.
    Found word: mat at position 31-34.
    sub: I have two fruits and three fruits.
    split: ['', 'a', 'b', 'c']


#### match() <a id="match"></a>

The `match()` function is used to match a regular expression pattern at the beginning of a string. The `match()` function returns a `Match` object if the pattern matches the beginning of the string, or `None` if there is no match.

Note that the `match()` function only matches patterns at the beginning of the string. If you want to match a pattern anywhere in the string, you should use the `search()` function instead.


```python
import re

string = "The quick brown fox jumps over the lazy dog."
pattern = r"(\w+) (\w+)"

match = re.match(pattern, string)

group = match.group()  # Returns the entire match
print("group:", group)

group_1 = match.group(1)  # Returns the first parenthesized subgroup
print("group(1):", group_1)

groups = match.groups()  # Returns a tuple containing all the subgroups
print("groups:", groups)

start = match.start()  # Returns the start position of the match
print("start:", start)

end = match.end()  # Returns the end position of the match
print("end:", end)

tuple = (
    match.span()
)  # Returns a tuple containing the (start, end) positions of the match
print("tuple:", tuple)
```

    group: The quick
    group(1): The
    groups: ('The', 'quick')
    start: 0
    end: 9
    tuple: (0, 9)



## Part III. Control Flow and Data Flows <a id="3-cf-and-df">

### 1. Conditional Statements <a id="conditional-statements"></a>

#### if, else, elif <a id="if-else-elif"></a>

In Python, `if`, `else`, and `elif` are used to create conditional statements that allow a program to execute different code depending on whether a condition is true or false. The `elif` is short for "else if". You can have multiple `elif` statements in a conditional statement to check for multiple conditions. The `else` statement is optional and is executed if none of the previous conditions are true.


```python
x = 5

if x > 10:
    print("x is greater than 10")
elif x > 5:
    print("x is greater than 5 but less than or equal to 10")
else:
    print("x is less than or equal to 5")
```

    x is less than or equal to 5


#### Nested conditions <a id="nested-conditions"></a>

Nested conditions are conditional statements that are placed inside other conditional statements. Nested conditions allow you to check for multiple conditions and execute different code depending on the outcome of those conditions.

You can have multiple levels of nested conditions to check for multiple conditions and execute different code depending on the outcome of those conditions. However, it's important to keep your code organized and easy to read, so you should avoid nesting too many conditions if possible.


```python
x = 5
y = 10

if x > 0:
    if y > 0:
        print("Both x and y are positive.")
    else:
        print("x is positive but y is not.")
else:
    print("x is not positive.")
```

    Both x and y are positive.


### 2. Loops <a id="loops"></a>

#### for loop <a id="for-loop"></a>

The `for` loop is used for iterating over a sequence (that can be a list, tuple, dictionary, set, or string) or other iterable objects. The `for` loop runs a block of code for each item in the sequence. `for` loops can be used to iterate over any sequence of elements, and can be combined with conditional statements and other control flow statements to create complex programs.


```python
# 1. Iterating through a list
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)

print("------")

# 2. Iterating through a string
for char in "apple":
    print(char)

print("------")

# 3. Iterating through a tuple
colors = ("red", "green", "blue")
for color in colors:
    print(color)

print("------")

# 4. Iterating through a dictionary
person = {"name": "John", "age": 30, "city": "New York"}

# By keys
for key in person:
    print(key, ":", person[key])

print("------")

# By values
for value in person.values():
    print(value)

print("------")

# By both keys and values
for key, value in person.items():
    print(key, ":", value)

print("------")

# 5. Iterating through a set
unique_numbers = {1, 2, 3, 3, 4}
for num in unique_numbers:
    print(num)

print("------")
```

    apple
    banana
    cherry
    ------
    a
    p
    p
    l
    e
    ------
    red
    green
    blue
    ------
    name : John
    age : 30
    city : New York
    ------
    John
    30
    New York
    ------
    name : John
    age : 30
    city : New York
    ------
    1
    2
    3
    4
    ------


#### range() <a id="range()"></a>

The `range()` function is used to generate a sequence of numbers. The `range()` function can take one, two, or three parameters. 
- If you pass one parameter to the `range()` function, it will return a sequence of numbers starting at 0 and ending at the number before the parameter.

- If you pass two parameters to the `range()` function, it will return a sequence of numbers starting at the first parameter and ending at the number before the second parameter.

- If you pass three parameters to the `range()` function, it will return a sequence of numbers starting at the first parameter and ending at the number before the second parameter, with each number increasing by the third parameter.


```python
for i in range(5):  # Will iterate over numbers from 0 to 4
    print(i)

print("------")

for i in range(1, 5):  # Will iterate over numbers from 1 to 4
    print(i)

print("------")

for i in range(1, 5, 2):  # Will iterate over numbers from 1 to 4 with a step of 2
    print(i)
```

    0
    1
    2
    3
    4
    ------
    1
    2
    3
    4
    ------
    1
    3


#### while loop <a id="while-loop"></a>

The `while` loop is used to execute a block of code repeatedly as long as a condition is true. The `while` loop is useful when you don't know how many times you need to execute a block of code, or when you need to execute a block of code until a certain condition is met.

`while` loops can be used to iterate over any sequence of elements, and can be combined with conditional statements and other control flow statements to create complex programs.

Note that it's important to make sure that the condition in a `while` loop will eventually become false, otherwise the loop will continue to execute indefinitely, resulting in an infinite loop. You can use a `break` statement to exit a `while` loop prematurely if necessary.


```python
i = 0

while i < 5:
    print(i)
    i += 1
```

    0
    1
    2
    3
    4


#### Nested loops <a id="nested-loops"></a>

Nested loops are loops that are placed inside other loops. Nested loops allow you to iterate over multiple sequences of elements at the same time. You can have multiple levels of nested loops to iterate over multiple sequences of elements at the same time. However, it's important to keep your code organized and easy to read, so you should avoid nesting too many loops if possible.


```python
for i in range(3):
    for j in range(2):
        print(i, j)
```

    0 0
    0 1
    1 0
    1 1
    2 0
    2 1


### 3. Loop Control Statements <a id="loop-control-statements"></a>

#### break <a id="break"></a>

The `break` statement is used to exit a loop prematurely. The `break` statement can be used to exit a `for` loop or a `while` loop. The `break` statement is useful when you need to exit a loop based on a certain condition.

When a `break` statement is encountered inside a loop, the loop is immediately terminated and the program continues executing from the next statement after the loop.


```python
i = 0

while i < 10:
    print(i)
    i += 1
    if i == 5:
        break
print("------")
```

    0
    1
    2
    3
    4
    ------


#### continue <a id="continue"></a>

The `continue` is a control flow statement that allows you to skip the current iteration of a loop and move on to the next iteration. When a `continue` statement is encountered inside a loop, the loop skips the remaining statements in the current iteration and moves on to the next iteration. 

The `continue` statement is useful when you need to skip certain iterations of a loop based on a certain condition.


```python
i = 0

while i < 10:
    i += 1
    if i % 2 == 0:
        continue
    print(i)
```

    1
    3
    5
    7
    9


#### pass <a id="pass"></a>

In Python, `pass` is a null statement that does nothing. It is used as a placeholder when you need to include a statement in your code that does nothing, but you don't want to leave an empty block of code. The `pass` statement can be used inside loops, conditional statements, and other control flow statements as a placeholder for code that you haven't written yet.


```python
def my_function():
    pass


for i in range(10):
    if i % 2 == 0:
        pass
    else:
        print(i)
```

    1
    3
    5
    7
    9


### 4. Itertools <a id="itertools"></a>

#### Infinite iterators <a id="infinite-iterators"></a>

In Python, iterators that can iterate indefinitely are called `infinite iterators`. The standard library provides a few such iterators, mainly through the itertools module. The most commonly used infinite iterators are:

- `count(start=0, step=1)`: Starts from the start number and keeps on incrementing by the step value indefinitely.

- `cycle(iterable)`: This iterator cycles through an iterable indefinitely.

- `repeat(elem [,times])`: This iterator repeatedly returns the provided element. If the optional times argument is provided, it will repeat for the specified number of times, otherwise, it will repeat indefinitely.

Note: Infinite iterators can lead to infinite loops if not handled properly. Always ensure there's a condition to break out of the loop to prevent unintended infinite execution.


```python
from itertools import count, cycle, repeat

print("count:", end=" ")
for i in count(10, 3):
    if i > 25:
        break
    else:
        print(i, end=", ")

print("\ncycle:", end=" ")
counter = 0
for item in cycle("XYZ"):
    if counter > 7:
        break
    print(item, end=", ")
    counter += 1

print("\nrepeat:", end=" ")
for item in repeat("A", 5):
    print(item, end=", ")
```

    count: 10, 13, 16, 19, 22, 25, 
    cycle: X, Y, Z, X, Y, Z, X, Y, 
    repeat: A, A, A, A, A, 



#### Finite iterators <a id="finite-iterators"></a>

In Python, iterators that can iterate over a finite sequence of elements are called `finite iterators`. The standard library provides a few such iterators, mainly through the itertools module. The most commonly used finite iterators are:

- `accumulate(iterable[, func, *, initial=None])`: Produces accumulated sums, or accumulated results of other binary functions

- `chain(*iterables)`: Used for chaining multiple iterables together.

- `groupby(iterable, key=None)`: Groups consecutive elements of the iterable which have the same key.

- `islice(iterable, start, stop[, step])`: Returns an iterator that returns selected elements from the iterable.

- `zip_longest(*iterables, fillvalue=None)`: Iterates over multiple input iterables simultaneously, filling in missing values with a specified fillvalue.

These are just a few of the finite iterators provided by `itertools`. Each of these tools can be incredibly useful in various scenarios, especially when dealing with complex iteration patterns.


```python
from itertools import accumulate, chain, groupby, islice, zip_longest

# Using accumulate()
print("accumulate :", list(accumulate([1, 2, 3, 4])))

# Using chain()
print("chain :", list(chain("ABC", "DEF")))

# Using groupby()
print("groupby:", end=" ")
for key, group in groupby("AABBCCAA"):
    print(key, list(group))

# Using islice()
print("islice :", list(islice("ABCDEFG", 2, 5)))

# Using zip_longest()
print("zip_longest :", list(zip_longest("AB", "12345", fillvalue="x")))
```

    accumulate : [1, 3, 6, 10]
    chain : ['A', 'B', 'C', 'D', 'E', 'F']
    groupby: A ['A', 'A']
    B ['B', 'B']
    C ['C', 'C']
    A ['A', 'A']
    islice : ['C', 'D', 'E']
    zip_longest : [('A', '1'), ('B', '2'), ('x', '3'), ('x', '4'), ('x', '5')]


#### Combinatorics <a id="combinatorics"></a>

The `itertools` module provides functions for working with combinatorics, which is the study of combinations and permutations of elements in a set. These functions can be used to generate all possible combinations or permutations of a set of elements, which can be useful in a variety of applications, such as generating test cases or analyzing data.

Here are some of the combinatoric functions provided by the `itertools` module:

- `product(*iterables, repeat=1)`: This function generates the Cartesian product of the input iterables, which is a sequence of tuples containing one element from each input iterable. The `repeat` argument specifies the number of times to repeat the input iterables.

- `permutations(iterable, r=None)`: This function generates all possible permutations of the elements in `iterable`, with a length of `r` if specified, or the length of `iterable` if not specified.

- `combinations(iterable, r)`: This function generates all possible combinations of the elements in `iterable` of length `r`.

- `combinations_with_replacement(iterable, r)`: This function generates all possible combinations of the elements in `iterable` of length `r`, allowing for repeated elements.

Combinatoric functions can be useful when you need to generate all possible combinations or permutations of a set of elements. They can be especially useful when working with large datasets or when you need to perform complex operations on sequences of data.


```python
from itertools import combinations, combinations_with_replacement, permutations, product

list1 = ["a", "b", "c"]
list2 = [1, 2]

print("product:", list(product(list1, list2)))
print("combinations:", list(combinations(list1, 2)))
print("permutations:", list(permutations(list1, 2)))
print("combinations_with_replacement:", list(combinations_with_replacement(list1, 2)))
```

    product: [('a', 1), ('a', 2), ('b', 1), ('b', 2), ('c', 1), ('c', 2)]
    combinations: [('a', 'b'), ('a', 'c'), ('b', 'c')]
    permutations: [('a', 'b'), ('a', 'c'), ('b', 'a'), ('b', 'c'), ('c', 'a'), ('c', 'b')]
    combinations_with_replacement: [('a', 'a'), ('a', 'b'), ('a', 'c'), ('b', 'b'), ('b', 'c'), ('c', 'c')]


### 5. enumerate() <a id="enumerate"></a>

The `enumerate()` function is used to add a counter to an iterable object. The `enumerate()` function returns an enumerate object that contains tuples of the index and item in the iterable object.

The `enumerate()` function can be used to iterate over the index and item of an iterable object at the same time.


```python
fruits = ["apple", "banana", "cherry"]

for i, fruit in enumerate(fruits):
    print(i, fruit)
```

    0 apple
    1 banana
    2 cherry


### 6. zip() <a id="zip"></a>

`zip()` is a built-in function that takes two or more iterables as arguments and returns an iterator that generates tuples containing the corresponding elements from each iterable. The resulting iterator stops when the shortest input iterable is exhausted.

The `zip()` function can take any number of iterables as arguments, and returns an iterator that generates tuples containing the corresponding elements from each iterable. If the input iterables are of different lengths, the resulting iterator stops when the shortest input iterable is exhausted.

The `zip()` function is useful when you need to combine two or more iterables into a single iterable that contains the corresponding elements from each input iterable. It can be especially useful when working with large datasets or when you need to perform complex operations on sequences of data.


```python
list1 = ["a", "b", "c"]
list2 = [1, 2, 3]

print("zip:", list(zip(list1, list2)))
```

    zip: [('a', 1), ('b', 2), ('c', 3)]


### 7. Context Managers <a id="context-managers"></a>

#### enter/exit <a id="enter-exit"></a>

A context manager in Python is an object designed to set up a resource for a portion of code and then clean up that resource after the code has run. The most common use case is with file handling where you need to open a file, perform operations, and then close it. Context managers make this process cleaner and more readable.

The primary mechanism for using context managers is the with statement. The context manager provides two methods:

1. `__enter__(self)`:
- This method is run when execution flow enters the block of the with statement.
- It returns the resource that needs to be managed, like a file for file handling.

2. `__exit__(self, exc_type, exc_value, traceback)`:
- This method is run when execution flow exits the block of the with statement.
- It can handle exceptions, suppress them, or let them propagate.
- It's typically used to release the resource or rollback changes in case of errors.



```python
class MyContextManager:
    def __enter__(self):
        print("Entering context")
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        print("Exiting context")


with MyContextManager() as cm:
    print("Inside context")
```

    Entering context
    Inside context
    Exiting context


Here, the `open()` function returns a file object, and its `__enter__` method is called, which essentially does nothing special in this case. When the block inside the with statement is exited, the `__exit__` method of the file object is called, which closes the file. This ensures that the file is closed even if an exception occurs inside the block.


```python
# Without context manager
file = open("examples/sample.txt", "r")
content = file.read()
print("without:", content)
file.close()

# With context manager
with open("examples/sample copy.txt", "r") as file:
    content = file.read()
    print("with:", content)
```

    without: Hello, World!
    with: Hello, copy World!


With this context manager, you can ensure that database transactions are either committed if everything goes well or rolled back if an exception occurs.


```python
class DatabaseTransaction:
    def __init__(self, db_connection):
        self.connection = db_connection

    def __enter__(self):
        # Begin the transaction
        self.connection.begin()
        return self.connection

    def __exit__(self, exc_type, exc_value, traceback):
        if exc_type is not None:
            # If an exception occurred, rollback the transaction
            self.connection.rollback()
        else:
            # Otherwise, commit the changes
            self.connection.commit()
```

#### contextlib <a id="contextlib"></a>

The `contextlib` module in Python's standard library provides utilities to work with context management more easily. While you can always create context managers using classes (by defining `__enter__` and `__exit__` methods), contextlib offers shortcuts and additional utilities.

Here are some of the main features of the contextlib module:

- `contextmanager` decorator: This decorator turns a generator into a context manager, allowing you to create a context manager using a function instead of a class.

- `closing` function: This function creates a context manager that closes the specified object when the context manager is exited.

- `suppress(*exceptions)`: Returns a context manager that suppresses any of the specified exceptions if they occur in the body of a with statement.

- `redirect_stdout` and `redirect_stderr` functions: These functions create context managers that redirect stdout and stderr to the specified file-like objects.

- `ExitStack` class: This class allows you to combine multiple context managers into a single context manager.

These are just a few of the utilities provided by the contextlib module. They simplify the creation and use of context managers, making resource management in Python more flexible and readable.


```python
from contextlib import contextmanager


@contextmanager
def my_context_manager():
    print("Entering context")
    yield
    print("Exiting context")


with my_context_manager():
    print("Inside context")
```

    Entering context
    Inside context
    Exiting context


In this example, we define a context manager using the `@contextmanager` decorator and a generator function `my_context_manager()`. The `yield` statement is used to define the boundary between the `__enter__()` and `__exit__()` methods. The `print()` statements are used to indicate when the context is being entered and exited.

We use the `with` statement to create a context manager that automatically calls the `__enter__()` and `__exit__()` methods. We use the `my_context_manager()` function as a context manager by calling it with the `with` statement. We then print a message indicating that we are inside the context.


```python
from contextlib import closing
from urllib.request import urlopen

lines = []
with closing(urlopen("https://www.google.com")) as page:
    for line in page:
        lines.append(line)

print(len(lines))
```

    17



```python
import os
from contextlib import suppress

with suppress(FileNotFoundError):
    os.remove("somefile.tmp")
# This code will suppress a FileNotFoundError if the file doesn't exist.
```


```python
import io
from contextlib import redirect_stdout

f = io.StringIO()
with redirect_stdout(f):
    print("This will be written to f instead of stdout")
print(f.getvalue())
```

    This will be written to f instead of stdout
    



```python
from contextlib import ExitStack

filenames = ["examples/sample.txt", "examples/sample copy.txt"]
with ExitStack() as stack:
    files = [stack.enter_context(open(fname)) for fname in filenames]
    # All files will be properly closed at the end of the with block
```


## Part IV: File Handling, I/O, and Serialization <a id="4-file-io-serialization"></a>

### 1. File Operations <a id="file-operations"></a>

File operations in Python are crucial for reading from and writing to files on your computer. These operations allow your programs to save data permanently, work with configuration files, or read data from existing files for processing. 

Python makes file operations straightforward through its built-in functions and methods. The most common operations involve opening a file, reading from it, writing to it, and closing it.

#### Opening a File <a id="opening-a-file"></a>

Use the `open(file_name, mode)` function to open a file. It returns a file object and takes two main parameters: the `file_name` and the `mode` ('r' for reading, 'w' for writing, 'a' for appending, and 'b' for binary mode).

#### Reading from a File <a id="reading-from-a-file"></a>

Once a file is opened in read mode ('r'), you can use methods like `.read()`, `.readline()`, or `.readlines()` to read its content.

- `.read(size)` reads size bytes, or if size is omitted or negative, it reads the entire file.
- `.readline()` reads a single line from the file.
- `.readlines()` reads all the lines in a file and returns them as a list.

#### Writing to a File <a id="writing-to-a-file"></a>

Opening a file in write ('w') or append ('a') mode allows you to write or add content to the file. Use `.write(string)` to write the specified string to the file. For writing multiple lines, `.writelines(list)` can be used.

- `.write(string)` writes the string to the file.
- `.writelines(sequence)` writes a sequence of strings to the file.

#### Closing a File <a id="closing-a-file"></a>

After finishing with a file, it's crucial to close it using the .close() method to free up system resources. Failure to close files can lead to memory leaks and other resource issues.


```python
# Step 1: Read from the original file
names = []  # List to hold names
with open("examples/names.txt", "r") as file_reader:
    for line in file_reader:
        # Strip newline characters and add to list
        names.append(line.strip())
        print(line.strip())

# Step 2: Data manipulation
new_name = "Diana"
if new_name not in names:  # Avoid duplicate
    names.append(new_name)

# Step 3: Write to a new file
with open("examples/updated_names.txt", "w") as file_writer:
    for name in names:
        file_writer.write(name + "\n")  # Add newline to put each name on a new line

print("------")

# Check the new file
with open("examples/updated_names.txt", "r") as file_reader:
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


### 2. Working with Directories <a id="working-with-directories"></a>

Working with directories in Python involves managing folders on your file system. This includes tasks such as creating, listing, renaming, and removing directories. The os module in Python provides a portable way of using operating system-dependent functionality like navigating and manipulating the file system.

Key Functions in the os module for Directories:
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
contents = os.listdir("examples/")
print("Directory contents:", contents)

# Rename the directory
os.rename("new_directory", "renamed_directory")

# Remove a directory (must be empty)
os.rmdir("renamed_directory/intermediate_directory")

# Remove the now empty parent directory
os.rmdir("renamed_directory")
```

    Directory contents: ['names.txt', 'example.csv', 'data.pickle', 'person.json', 'updated_names.txt', 'sample copy.txt', 'bytes.bin', 'sample.txt']


### 3. Serialization <a id="serialization"></a>

Serialization in Python refers to the process of converting a Python object into a byte stream (a sequence of bytes) that can be saved to a file or transmitted over a network. This byte stream can then be deserialized back into a Python object. This process is crucial for saving complex data structures, like lists and dictionaries, to a file or sending them over a network for distributed computing tasks.

#### Pickling and Unpickling <a id="pickling-and-unpickling"></a>

The most common serialization technique in Python is using the pickle module. "Pickling" is the act of serializing an object, and "unpickling" is the process of deserializing the byte stream back into an object.

- **Pickling**: Convert a Python object into a byte stream.
- **Unpickling**: Convert a byte stream back into a Python object.

Be cautious when unpickling objects from an untrusted source. Since pickle can execute arbitrary code, it may pose a security risk.


```python
import pickle

# Define a sample dictionary
data = {"key": "value", "list": [1, 2, 3, 4, 5]}

# Pickling: Serializing the Python object to a byte stream
with open("examples/data.pickle", "wb") as file:
    pickle.dump(data, file)

# Unpickling: Deserializing the byte stream back to a Python object
with open("examples/data.pickle", "rb") as file:
    loaded_data = pickle.load(file)

print("Loaded data:", loaded_data)
```

    Loaded data: {'key': 'value', 'list': [1, 2, 3, 4, 5]}


### 4. Structured Data Formats <a id="structured-data-formats"></a>

Structured data formats organize and store data in a way that is easily readable by both humans and computers. These formats are essential for data interchange between different applications, systems, or programming languages. Python supports several structured data formats, including JSON, YAML, CSV, and XML, each serving different needs and use cases.

- **JSON (JavaScript Object Notation)**: Widely used for web APIs and config files. Features: Lightweight, text-based, language-independent.
- **YAML (YAML Ain't Markup Language)**: Common for configuration files, more readable for humans than JSON. Features: Supports complex data structures, more flexible and readable.
- **CSV (Comma-Separated Values)**: Data exchange format for spreadsheets or databases. Features: Simple format, each line is a data record, fields separated by commas.
- **XML (eXtensible Markup Language)**: General purpose, structured document format with custom tags. Features: Hierarchical structure, self-descriptive tags, supports metadata.

#### JSON <a id="json"></a>

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
with open("examples/person.json", "w") as file:
    json.dump(person, file)

# Reading JSON from a file
with open("examples/person.json", "r") as file:
    person_read = json.load(file)
    print("Read from file:", person_read)
```

    JSON representation: {"name": "Alice", "age": 30, "city": "London", "hasPets": false}
    Back to Python dictionary: {'name': 'Alice', 'age': 30, 'city': 'London', 'hasPets': False}
    Read from file: {'name': 'Alice', 'age': 30, 'city': 'London', 'hasPets': False}


#### YAML <a id="yaml"></a>

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
    


#### CSV <a id="csv"></a>

**CSV** (Comma-Separated Values) format is a simple file format used to store tabular data, such as a database or spreadsheet. Each line in a CSV file corresponds to a row in the table, and each field (or cell) in that row is separated by a comma.

Key Features:
- **Simplicity**: CSV files are easy to read and write by both humans and machines.
- **Compatibility**: Can be imported to and exported from programs that store data in tables, such as Excel or Google Sheets.
- **Flexibility**: Supports text data and numbers, making it versatile for various use cases.

Python provides a built-in `csv` module to easily deal with CSV files. This module presents functions to read, write, and manipulate data in CSV format.


```python
import csv

# Writing to a CSV file
with open("examples/example.csv", "w", newline="") as file:
    writer = csv.writer(file)
    writer.writerow(["name", "age", "city"])
    writer.writerow(["Alice", "30", "New York"])
    writer.writerow(["Bob", "25", "Los Angeles"])

# Reading from a CSV file
with open("examples/example.csv", "r") as file:
    reader = csv.reader(file)
    print("Using csv.reader:")
    for row in reader:
        print(row)

# Using DictReader for more intuitive access by column names
with open("examples/example.csv", "r") as file:
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


#### XML <a id="xml"></a>

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


### 5. Data Encoding and Decoding <a id="data-encoding-and-decoding"></a>

Data encoding and decoding involve the processes of transforming data into a different format using a scheme that is understood by both the sender and receiver. This transformation is essential for data storage, transmission, or communication between different systems. Encoding converts data from a source format into a format suitable for transmission or storage, while decoding reverses the process, converting the encoded data back into its original format.

#### base64 <a id="base64"></a>

Base64 is a binary-to-text encoding scheme that represents binary data in an ASCII string format by translating it into a radix-64 representation. It is commonly used in email and HTML to encode binary files like images or documents to attach or embed them in textual mediums.

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


#### Unicode <a id="unicode"></a>

Unicode is a computing industry standard designed to consistently encode, represent, and handle text expressed in most of the world's writing systems. In Python, strings are stored as Unicode by default.

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



## Part V: Exceptions and Error Handling <a id="5-exceptions-and-errors"></a>

Python uses exceptions to manage errors that arise during execution. An exception is an event that disrupts the normal flow of a program's instructions. Python's approach to exceptions ensures that programs can deal with unforeseen errors gracefully and can recover from them.

### 1. Python Exceptions <a id="python-exceptions"></a>

Python exceptions are errors detected during execution that interrupt the normal flow of a program. These errors can be caused by various issues, such as attempting to divide by zero, accessing a non-existent file, or trying to access a list element out of its bounds. When an exception occurs, the program immediately stops executing and raises an exception. If the exception is not handled, the program will crash.

#### Built-in Exceptions <a id="built-in-exceptions"></a>

Python has a set of built-in exceptions that can be raised when an error occurs. These exceptions are defined in the `builtins` module and are inherited by all other exceptions.

There are several common built-in exceptions that you'll frequently encounter, including:
- `SyntaxError`: Raised when the parser encounters a syntax error.
- `IndexError`: Occurs when a sequence subscript (index) is out of range.
- `KeyError`: Raised when a dictionary key is not found.
- `ValueError`: Occurs when an operation receives an argument with the right type but an inappropriate value.
- `TypeError`: Raised when an operation or function is applied to an object of an inappropriate type.
- `FileNotFoundError`: Triggered when an attempt to open a file fails because it does not exist.
- `ZeroDivisionError`: Occurs when the second argument of a division or modulo operation is zero.

Python allows you to handle these exceptions using `try`, `except` blocks. This provides a way to respond to errors instead of allowing the program to crash.


```python
def divide(a, b):
    try:
        return a / b
    except ZeroDivisionError:
        return "Cannot divide by zero."


print(divide(10, 0))
```

    Cannot divide by zero.


#### Exception hierarchy <a id="exception-hierarchy"></a>

The exception hierarchy in Python organizes the various built-in exceptions into a structured tree, allowing for both specific and general exception handling strategies.

The base class for all built-in exceptions is `BaseException`. This class is inherited by `Exception`, which is the base class for all non-system-exiting exceptions. The `Exception` class is further subclassed into various exception types, such as `ArithmeticError`, `LookupError`, and `EnvironmentError`.

Example of Exception Hierarchy:
```
BaseException
 +-- SystemExit
 +-- KeyboardInterrupt
 +-- GeneratorExit
 +-- Exception
      +-- StopIteration
      +-- ArithmeticError
      |    +-- FloatingPointError
      |    +-- OverflowError
      |    +-- ZeroDivisionError
      +-- LookupError
      |    +-- IndexError
      |    +-- KeyError
      +-- EnvironmentError
           +-- IOError
           +-- OSError
```

Users can define their own exceptions by inheriting from any existing exception class, typically Exception or one of its child classes, to create custom error conditions relevant to their applications.

### 2. Handling Exceptions <a id="handling-exceptions"></a>

Handling exceptions in Python is crucial for writing robust and resilient programs. It allows your code to gracefully deal with unexpected situations without crashing. Python provides `try`, `except`, `else`, and `finally` blocks for this purpose.

#### try, except, else, finally blocks <a id="try-except-else-finally-blocks"></a>

- `try` Block: You start by wrapping the code that might raise an exception in a `try` block. This is the code that Python will attempt to execute, and if an exception occurs, Python looks for an `except` block to handle it.
- `except` Block: The `except` block catches exceptions raised by the `try` block. You can specify the type of exception you want to catch, allowing for multiple `except` blocks to handle different exceptions differently. If an exception is caught, the code inside the `except` block is executed.
- `else` Block: An optional `else` block can follow the `except` blocks. The code inside the `else` block is executed only if the code in the `try` block did not raise an exception. It's a good place to put code that should run only if the `try` block was successful.
- `finally` Block: Finally, a `finally` block can be used to define cleanup actions that must be executed under all circumstances, such as releasing external resources. The code inside the `finally` block runs whether an exception was raised or not, and even if an `except` or `else` block has a return statement.


```python
try:
    # Code that might raise an exception
    x = int(input("Enter a number: "))
    y = 10 / x
except ValueError:
    print("You did not enter a valid number.")
except ZeroDivisionError:
    print("Attempted to divide by zero.")
else:
    print(f"Everything went well. The result is {y}.")
finally:
    print("This always executes.")
```

    Everything went well. The result is 1.0.
    This always executes.


#### Catching multiple exceptions <a id="catching-multiple-exceptions"></a>

You might encounter situations where a block of code could raise more than one type of exception. To handle this, Python allows you to catch multiple exceptions in a single `try` block. You can achieve this in two ways: by specifying multiple `except` blocks, each catching a different type of exception, or by catching multiple exceptions in a single `except` block using a tuple.


```python
try:
    # Code that could raise multiple exceptions
    value = input("Enter a number: ")
    number = int(value)
    result = 10 / number
except ValueError:
    # Handles incorrect input type (e.g., a letter instead of a number)
    print("Please enter a valid integer.")
except ZeroDivisionError:
    # Handles division by zero
    print("Division by zero is not allowed.")
except (TypeError, OverflowError) as e:
    # Handles multiple exceptions similarly
    print(f"An error occurred: {e}")
```

    Division by zero is not allowed.


### 3. Raising Exceptions <a id="raising-exceptions"></a>

Raising exceptions is a core aspect of Python programming, allowing you to explicitly signal an error condition when a specific issue occurs in your code. This can be particularly useful for enforcing constraints, indicating invalid states, or signaling errors in API usage to other developers.

#### raise statement <a id="raise-statement"></a>

The `raise` statement is used to trigger an exception in Python. You can raise a built-in exception or a user-defined exception by specifying the exception class or an instance of the exception. Optionally, you can add a message to provide more context about the error.


```python
# Raising a built-in exception with a message
def divide(x, y):
    if y == 0:
        raise ZeroDivisionError("Division by zero is not allowed.")
    return x / y
```

#### assert statement <a id="assert-statement"></a>

The `assert` statement is a debugging aid that tests a condition as an expression. If the condition is `True`, nothing happens, and your program continues to execute. If the condition is `False`, Python raises an `AssertionError` exception. The `assert` statement can also include an optional message to be displayed with the error, making the cause of the assertion failure clearer.


```python
# Using assert to ensure a condition holds true
def square_root(value):
    assert value >= 0, "Cannot take the square root of a negative number."
    return value**0.5


try:
    result = divide(10, 0)
except ZeroDivisionError as e:
    print(e)

try:
    result = square_root(-1)
except AssertionError as e:
    print(e)
```

    Division by zero is not allowed.
    Cannot take the square root of a negative number.


### 4. User-Defined Exceptions <a id="user-defined-exceptions"></a>

User-defined exceptions allow you to create and use custom exceptions that are specific to your application's requirements. By defining your own exceptions, you can make your code more readable and ensure that it handles errors and special conditions in a clear and consistent manner.

To create a user-defined exception, you typically inherit from the `Exception` class or one of its subclasses. This custom exception can then be raised using the `raise` statement, just like any built-in exception. User-defined exceptions are especially useful for signaling errors in application-specific contexts.


```python
# Defining a custom exception
class NegativeNumberError(Exception):
    def __init__(self, value):
        super().__init__(f"Received {value}; expected a non-negative number.")


# Using the custom exception
def square_root(value):
    if value < 0:
        raise NegativeNumberError(value)
    return value**0.5


try:
    result = square_root(-1)
except NegativeNumberError as e:
    print(e)
```

    Received -1; expected a non-negative number.



## Part VI: Functional Programming <a id="6-fp"></a>

**Functional Programming** is a programming paradigm that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data. It emphasizes the application of functions in a way that the output of a function is only dependent on its input arguments, without any side effects (i.e., changes to the state of the program outside the function).

Python supports functional programming by providing features such as *first-class functions* (functions can be passed around and used as arguments), *higher-order functions* (functions that can take functions as arguments and return functions), *lambda functions* (anonymous functions), and built-in functions like `map`, `filter`, and `reduce` for operating on collections. Python also includes `list`, `dictionary`, and `set` comprehensions for creating new collections based on existing ones in a concise and readable way, as well as decorators for enhancing the behavior of functions and methods without permanently modifying their functionality.

Functional programming can lead to cleaner, more concise, and more predictable code that is easier to test and debug.

### 1. Lambda Functions <a id="lambda-functions"></a>

Lambda functions, also known as anonymous functions, are small, one-line functions defined without a name. They use the keyword `lambda` followed by a list of arguments, a colon, and an expression which the function will return when called. Lambda functions can have any number of arguments but only one expression. 

They are handy for short, simple functions that are used only once, or for a short period, within a larger function or a command.


```python
numbers = [1, 2, 3, 4, 5]

# Using lambda to square each number
squared = list(map(lambda x: x**2, numbers))
print(squared)

# Filtering numbers greater than 2
filtered = list(filter(lambda x: x > 2, numbers))
print(filtered)

# Sorting a list of tuples by the second item
pairs = [(1, "one"), (2, "two"), (3, "three"), (4, "four")]
pairs.sort(key=lambda pair: pair[1])
print(pairs)
```

    [1, 4, 9, 16, 25]
    [3, 4, 5]
    [(4, 'four'), (1, 'one'), (3, 'three'), (2, 'two')]


### 2. Comprehensions <a id="comprehensions"></a>

Comprehensions are a concise way to create new collections (lists, dictionaries, and sets) by applying an expression to each item in an existing collection. They are a powerful feature of Python that allows for more readable and efficient code.

#### List comprehension <a id="list-comprehension"></a>

List comprehensions provide a concise way to create lists. The result will be a new list resulting from evaluating the expression in the context of the `for` and `if` clauses which follow it.

The syntax for list comprehensions is:
[`expressions` for `item` in `collection` if `condition`]


```python
numbers = [1, 2, 3, 4, 5]

squared_numbers = [number**2 for number in numbers]
print("Squared:", squared_numbers)

even_squares = [number**2 for number in numbers if number % 2 == 0]
print("Even:", even_squares)

matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

flattened = [elem for row in matrix for elem in row]
print("Flattened:", flattened)
```

    Squared: [1, 4, 9, 16, 25]
    Even: [4, 16]
    Flattened: [1, 2, 3, 4, 5, 6, 7, 8, 9]


#### Dict comprehension <a id="dict-comprehension"></a>

Dictionary comprehensions provide a concise way to create dictionaries. The result will be a new dictionary resulting from evaluating the key-value pairs in the context of the `for` and `if` clauses which follow them.

The syntax for dictionary comprehensions is:
{`key`:`value` for `item` in `collection` if `condition`}


```python
numbers = [1, 2, 3, 4, 5]
squared_numbers = {number: number**2 for number in numbers}
print("Squared:", squared_numbers)

original_dict = {"a": 1, "b": 2, "c": 3}
inverted_dict = {value: key for key, value in original_dict.items()}
print("Inverted:", inverted_dict)

original_dict = {"a": 10, "b": 34, "c": 7, "d": 5}
filtered_dict = {k: v for k, v in original_dict.items() if v > 10}
print("Filtered:", filtered_dict)
```

    Squared: {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}
    Inverted: {1: 'a', 2: 'b', 3: 'c'}
    Filtered: {'b': 34}


#### Set comprehension <a id="set-comprehension"></a>

Set comprehensions provide a concise way to create sets. The result will be a new set resulting from evaluating the expression in the context of the `for` and `if` clauses which follow it.

The syntax for set comprehensions is:
{`expressions` for `item` in `collection` if `condition`}


```python
numbers = [1, 2, 2, 3, 4, 4, 5]
unique_squares = {x**2 for x in numbers}
print("Unique:", unique_squares)

numbers = range(10)
even_squares = {x**2 for x in numbers if x % 2 == 0}
print("Even:", even_squares)
```

    Unique: {1, 4, 9, 16, 25}
    Even: {0, 64, 4, 36, 16}


### 3. Functools <a id="functools"></a>

The `functools` module in Python provides higher-order functions and operations on callable objects. It includes functions for creating and manipulating functions and for creating and using decorators.

#### map <a id="map"></a>

The `map` function applies a given function to each item of an iterable (like a list, tuple, or set) and returns a list of the results.


```python
def square(number):
    return number**2


numbers = [1, 2, 3, 4]
result = map(square, numbers)
print(list(result))
```

    [1, 4, 9, 16]


#### filter <a id="filter"></a>

The `filter` function constructs an iterator from elements of an iterable for which a function returns `True`.


```python
def is_even(number):
    return number % 2 == 0


numbers = [1, 2, 3, 4, 5]
result = filter(is_even, numbers)
print(list(result))
```

    [2, 4]


#### reduce <a id="reduce"></a>

The `reduce` function applies a function of two arguments cumulatively to the items of an iterable, from left to right, so as to reduce the iterable to a single value.


```python
from functools import reduce


def add(x, y):
    return x + y


numbers = [1, 2, 3, 4]
result = reduce(add, numbers)
print(result)
```

    10


### 4. Bisect <a id="bisect"></a>

The `bisect` module in Python provides support for maintaining a list in sorted order without having to sort the list after each insertion. It is useful for cases where a sequence of values is continually updated (e.g., incoming data points that need to be kept in sorted order) and you need efficient operations to find the insertion point for new elements to keep the list sorted. The `bisect` module offers two main functions: `bisect_left` and `bisect_right` (also known as `bisect`), and two convenience functions: `insort_left` and `insort_right`.

#### bisect_left, bisect_right <a id="bisect-left-right"></a>

**bisect_left**

The `bisect_left(a, x, lo=0, hi=len(a))` function locates the insertion point for `x` in a to maintain sorted order. The parameters `lo` and `hi` may be used to specify a subset of the list which should be considered. If `x` is already present in `a`, the insertion point will be before (to the left of) any existing entries. The return value is the index at which `x` should be inserted into `a`.

**bisect_right** (or `bisect`)

The `bisect_right(a, x, lo=0, hi=len(a))` (alias `bisect`) functions similarly to `bisect_left`, but if `x` is already in `a`, the insertion point will be after (to the right of) any existing entries. It returns an insertion point which comes after, or to the right of, any existing entries of `x` in `a`.


```python
import bisect

a = [1, 2, 4, 4, 5]
x = 4

# Find the position to insert x to maintain sorted order
index = bisect.bisect_left(a, x)
print("bisect_left:", index)

index = bisect.bisect_right(a, x)
print("bisect_right:", index)
```

    bisect_left: 2
    bisect_right: 4


#### insort_left, insort_right <a id="insort-left-right"></a>

**insort_left**

The `insort_left(a, x, lo=0, hi=len(a))` function inserts `x` into a in sorted order. If `x` is already present in `a`, it inserts it to the left of the existing entries. The list remains in ascending order.

**insort_right**

The `insort_right(a, x, lo=0, hi=len(a))` (alias `insort`) function inserts `x` into `a` just like insort_left but if `x` is already in `a`, it inserts it to the right of the existing entries.


```python
import bisect

a = [1, 2, 3, 5]
bisect.insort_left(a, 4)
print("insort_left:", a)

bisect.insort_right(a, 4)
print("insort_right:", a)
```

    insort_left: [1, 2, 3, 4, 5]
    insort_right: [1, 2, 3, 4, 4, 5]


### 5. Decorators <a id="decorators"></a>

Decorators are a powerful feature in Python that allows the behavior of functions or methods to be modified without permanently modifying their functionality. They are a form of metaprogramming and provide a clean and elegant way to modify the behavior of functions or methods.

#### Decorator <a id="decorator"></a>

A decorator is a function that takes another function as an argument and returns a new function. It is used to modify the behavior of the function or method it decorates.

The basic syntax for a decorator is:

```python
@decorator
def function_that_gets_decorated():
    pass
```

This is equivalent to:

```python
def function_that_gets_decorated():
    pass

function_that_gets_decorated = decorator(function_that_gets_decorated)
```


```python
def my_decorator(func):
    def wrapper():
        print("Something is happening before the function is called.")
        func()
        print("Something is happening after the function is called.")

    return wrapper


@my_decorator
def say_hello():
    print("Hello!")


say_hello()
```

    Something is happening before the function is called.
    Hello!
    Something is happening after the function is called.


#### Parametrized decorator <a id="parametrized-decorator"></a>

A parametrized decorator is a decorator that accepts arguments. It is a function that returns a decorator, which in turn is a function that takes a function and returns a new function.


```python
def repeat(num_times):
    def decorator_repeat(func):
        def wrapper(*args, **kwargs):
            for _ in range(num_times):
                result = func(*args, **kwargs)
            return result

        return wrapper

    return decorator_repeat


@repeat(num_times=3)
def greet(name):
    print(f"Hello {name}")


greet("World")
```

    Hello World
    Hello World
    Hello World


#### functools.wraps <a id="functools-wraps"></a>

When you use a decorator, the original function’s metadata (like its name, docstring, and module) gets hidden by the wrapper closure. To avoid this and make the wrapper function look like the decorated function, use `functools.wraps`:

```python
from functools import wraps

def my_decorator(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        # Do something before
        result = func(*args, **kwargs)
        # Do something after
        return result
    return wrapper
```

#### LRU Cache <a id="lru-cache"></a>

The `functools` module provides a decorator called `lru_cache` that caches the results of a function, saving time when the same inputs occur again. The `lru_cache` decorator can be used to speed up functions that are called with the same arguments repeatedly.


```python
from functools import lru_cache


@lru_cache(maxsize=None)  # Cache all calls
def fib(n):
    if n < 2:
        return n
    return fib(n - 1) + fib(n - 2)


# Without caching, this would take a significant amount of time for large n
print(fib(30))  # Instant result due to caching
```

    832040


### 6. Generators <a id="generators"></a>

Generators are a special class of functions that simplify the task of writing iterators. Regular functions compute a value and return it, but generators return an iterator that returns a stream of values. They are a powerful tool for creating iterators and are used in Python to create iterators more easily.

#### yield <a id="yield"></a>

The `yield` statement is used to define a generator, replacing the `return` statement in a function. When a function is called with the `yield` statement, it returns a generator object without executing the function. The generator object can then be iterated over to produce the values.


```python
def count_up_to(max):
    count = 1
    while count <= max:
        yield count
        count += 1


counter = count_up_to(5)
for number in counter:
    print(number)
```

    1
    2
    3
    4
    5


#### Generator expression <a id="generator-expression"></a>

Generator expressions are a high-performance, memory-efficient generalization of list comprehensions and generators. They are similar to list comprehensions, but they return an iterator that produces the values on-the-fly instead of building a whole list.


```python
squares = (x**2 for x in range(5))
for square in squares:
    print(square)
```

    0
    1
    4
    9
    16


#### yield from <a id="yield-from"></a>

The `yield from` statement is used to delegate part of the responsibility for a generator to another generator. It allows you to yield values from a sub-generator without having to write a loop that iterates over the sub-generator and yields its values.


```python
def countdown(n):
    while n > 0:
        yield n
        n -= 1


def countup(n):
    yield from countdown(n)
    yield from range(1, n + 1)


for x in countup(3):
    print(x)
```

    3
    2
    1
    1
    2
    3


### 7. Iterators <a id="iterators"></a>

Iterators in Python are objects that allow you to iterate over iterable objects (like lists, tuples, dictionaries, sets, and strings). An iterator implements two special methods, `__iter__()` and `__next__()`, which together form the iterator protocol.

- `__iter__()` returns the iterator object itself. This is used in for loops and other iteration contexts to create an iterator from an iterable.
- `__next__()` returns the next item from the collection. When there are no more items to return, it raises the StopIteration exception, signaling that the iteration is complete.


```python
my_list = [1, 2, 3]
my_iterator = iter(my_list)

# Iterating through using __next__()
print(next(my_iterator))  # Output: 1
print(next(my_iterator))  # Output: 2
print(next(my_iterator))  # Output: 3

# Next call would raise StopIteration since there are no more items
```

    1
    2
    3


#### Building an iterator <a id="building-iterator"></a>

To build an iterator, you need to implement the `__iter__()` and `__next__()` methods in a class. The `__iter__()` method returns the iterator object itself, and the `__next__()` method returns the next item in the sequence. If there are no more items to return, it raises the StopIteration exception.


```python
class CountDown:
    def __init__(self, start):
        self.current = start

    def __iter__(self):
        # An iterator must return itself as an iterator.
        return self

    def __next__(self):
        if self.current <= 0:
            raise StopIteration  # End of iteration
        else:
            num = self.current
            self.current -= 1
            return num


# Using the iterator
for number in CountDown(3):
    print(number)
```

    3
    2
    1



## Outro <a id="c-outro"></a>

As the final chapter of our tale draws to a close, remember that every end is but a new beginning. You've journeyed through the vast expanse of Python, from its humble beginnings to its intricate complexities. But the realm of coding is ever-evolving, and there's always more to learn. **pyQuest** was but a map to guide you, a beacon in the vast sea of knowledge.

As you continue on your path, may you always find the *courage* to tackle new challenges, the *curiosity* to explore uncharted territories, and the *passion* to keep coding. The world of Python is boundless, and with every line of code, you write your own story. Until our paths cross again, fare thee well, *intrepid coder*.

**May your code always run error-free!** 🌌🐍🌟

## Sources <a id="c-sources"></a>

- [Python Documentation](https://docs.python.org/3/)
- [Python Tutorial](https://docs.python.org/3/tutorial/)
- [Python Standard Library](https://docs.python.org/3/library/)
- [Comprehensive Python Cheatsheet](https://gto76.github.io/python-cheatsheet/)
- [Python Cheatsheet](https://www.pythoncheatsheet.org/)
- [Awesome Python](https://github.com/vinta/awesome-python)
- [Hitchhiker's Guide to Python](https://docs.python-guide.org/)
- [Python Core](https://github.com/amaargiru/pycore)
- [Tech Interview Handbook](https://github.com/yangshun/tech-interview-handbook)
- [Dev Mentor](https://chat.openai.com/g/g-Wjnn7QXmE-dev-mentor)

## License <a id="c-license"></a>

CC-BY-SA-4.0 © [Andrey Ivanov](https://github.com/ivnvxd)


