## Content

- [Part I. Data Structures and Data Types](#toc-1-ds-and-dt)
- [Part II: Data Manipulation and Processing](#toc-2-dm-and-processing)
- [Part III: Control Flow and Data Flows](#toc-3-cf-and-df)
- [Part IV: File Handling, I/O, and Serialization](#toc-4-file-io-serialization)
- [Part V: Exceptions and Error Handling](#toc-5-exceptions-and-errors)
- [Part VI: Functional Programming](#toc-6-fp)
- [Part VII: Python Standard Libraries](#toc-7-standart-libraries)
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
    - Common data structures operations

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

### Part III: Control Flow and Data Flows <a id="toc-3-cf-and-df"></a>

1. Conditional Statements
    - if, else, elif
    - Nested conditions
2. Loops
    - for loop
    - while loop
    - Nested loops
3. Loop Control Statements
    - break
    - continue
    - pass
4. Itertools
    - Infinite iterators
    - Finite iterators
    - Combinatorics
5. Enumerate Function
6. Context Managers
    - enter/exit
    - contextlib

### Part IV: File Handling, I/O, and Serialization <a id="toc-4-file-io-serialization"></a>

1. File Operations
    - Opening a File
    - Reading from a File
    - Writing to a File
    - Closing a File
2. Working with Directories
3. Serialization
    - Pickling and Unpickling
4. Structured Data Formats
    - JSON
    - YAML
    - CSV
    - XML
5. Data Encoding and Decoding
    - base64
    - Unicode

### Part V: Exceptions and Error Handling <a id="toc-5-exceptions-and-errors"></a>

1. Python Exceptions
    - Built-in Exceptions
    - Exception hierarchy
2. Handling Exceptions
    - try, except, finally blocks
    - Catching multiple exceptions
3. Raising Exceptions
    - raise statement
    - assert statement
4. User-Defined Exceptions

### Part VI: Functional Programming <a id="toc-6-fp"></a>

1. Lambda Functions
2. Comprehensions
    - List comprehension
    - Dict comprehension
    - Set comprehension
3. Functools
    - map
    - filter
    - reduce
4. Bisect
5. Decorators
    - Decorator
    - LRU Cache
    - Parametrized decorator
6. Generators
    - yield
    - Generator expression
    - yield from

### Part VII: Python Standard Libraries <a id="toc-7-standart-libraries"></a>

1. Math
2. DateTime
    - Creating datetime variables
    - Datetime conversion
    - Datetime arithmetic
3. Collections
4. OS and Sys
5. JSON, CSV

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

### Part XII: Common Practices <a id="toc-12-common-practices"></a>

1. Logging
2. Profiling
3. Random Number Generation
4. User Input and Output
5. Cryptography

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
2. Frameworks
    - Django
    - Flask
3. API
    - REST API
    - Authentication
    - JWT
    - FastAPI
    - GraphQL

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
