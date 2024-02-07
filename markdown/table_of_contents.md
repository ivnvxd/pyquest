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
4. [Data Copying](#data-copying)
    - [Shallow Copy](#shallow-copy)
    - [Deep Copy](#deep-copy)

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
4. [Functions](#functions)
    - [*args and **kwargs](#args-kwargs)
    - [Closures](#closures)
5. [Itertools](#itertools)
    - [Infinite iterators](#infinite-iterators)
    - [Finite iterators](#finite-iterators)
    - [Combinatorics](#combinatorics)
6. [enumerate()](#enumerate)
7. [zip()](#zip)
8. [Recursion](#recursion)
    - [Recursion vs Iteration](#recursion-vs-iteration)
    - [Tail Recursion](#tail-recursion)
9. [Context Managers](#context-managers)
    - [enter/exit](#enter-exit)
    - [contextlib](#contextlib)

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

### [Part VII: Python Standard Library](#7-standard-library) <a id="toc-7-standard-library"></a>

1. [Math](#math)
2. [DateTime](#library-datetime)
    - [Creating datetime variables](#creating-datetime-variables)
    - [Datetime conversion](#datetime-conversion)
    - [Datetime arithmetic](#datetime-arithmetic)
    - [Timezones](#datetime-timezones)
3. [Collections](#collections)
    - [Counter](#collections-counter)
    - [DefaultDict](#collections-defaultdict)
    - [OrderedDict](#collections-ordereddict)
    - [NamedTuple](#collections-namedtuple)
    - [Deque](#collections-deque)
4. [OS and Sys](#os-and-sys)
    - [OS Module](#os-module)
    - [Sys Module](#sys-module)

### [Part VIII: Object-Oriented Programming](#toc-8-oop) <a id="toc-8-oop"></a>

1. [OOP Fundamentals](#oop-fundamentals)
    - [Classes and Objects](#classes-and-objects)
        - [Creating Classes and Objects](#creating-classes-and-objects)
        - [\_\_init\_\_, \_\_repr\_\_, and \_\_str\_\_ Methods](#init-repr-str-methods)
        - [Instance Members](#class-members)
        - [Class Methods](#class-methods)
        - [Static Methods](#static-methods)
        - [Property Decorator](#property-decorator)
2. [Core OOP Principles](#core-oop-principles)
    - [Encapsulation](#encapsulation)
        - [Private and Protected Attributes](#private-and-protected-attributes)
    - [Inheritance](#inheritance)
        - [Single and Multiple Inheritance](#single-and-multiple-inheritance)
        - [super()](#super)
        - [Method Resolution Order (MRO)](#method-resolution-order)
    - [Polymorphism](#polymorphism)
        - [Method Overriding](#method-overriding)
        - [Operator Overloading](#operator-overloading)
    - [Abstraction](#abstraction)
        - [Abstract Base Classes (ABCs)](#abstract-base-classes)
3. [Advanced OOP Features](#advanced-oop-features)
    - [Magic Methods](#magic-methods)
    - [Duck Typing](#duck-typing)
    - [Protocols](#protocols)
        - [Iterable, Comparable, Hashable, Callable Protocols](#iterable-comparable-hashable-callable-protocols)
        - [Context Manager Protocol](#context-manager-protocol)
4. [Metaprogramming](#metaprogramming)
    - [Metaclasses](#metaclasses)
    - [Decorators](#oop-decorators)
5. [Design Patterns in OOP](#design-patterns-in-oop)
    - [Creational Patterns](#creational-patterns)
        - [Singleton](#singleton-pattern)
        - [Factory Method](#factory-method-pattern)
        - [Abstract Factory](#abstract-factory-pattern)
        - [Builder](#builder-pattern)
        - [Prototype](#prototype-pattern)
    - [Structural Patterns](#structural-patterns)
        - [Adapter (Wrapper)](#adapter-pattern)
        - [Bridge](#bridge-pattern)
        - [Composite](#composite-pattern)
        - [Decorator](#decorator-pattern)
        - [Facade](#facade-pattern)
    - [Behavioral Patterns](#behavioral-patterns)
        - [Observer](#observer-pattern)
        - [Strategy](#strategy-pattern)
        - [Command](#command-pattern)
        - [State](#state-pattern)
        - [Chain of Responsibility](#chain-of-responsibility-pattern)

### Part IX: Python Language Fundamentals <a id="toc-9-language-fundamentals"></a>

1. Garbage Collection
    - Reference Counting
    - GC Debug and objgraph
    - Cyclic References
2. Typing
    - Static and Dynamic Typing
    - Protocols
    - Type Hints
3. Memory Management
    - Memory Allocation
    - Memory Profiling
    - Memory Leaks
4. Miscellaneous
    - Global Interpreter Lock (GIL)
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
4. Kivy

### Part XVI: Python and Data Science <a id="toc-16-data-science"></a>

1. NumPy
2. Pandas
3. Matplotlib
4. SciPy
5. Machine Learning with Scikit-Learn
6. Deep Learning with TensorFlow and Keras
7. Data Analysis with Jupyter Notebook

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
