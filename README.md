# PyQuest


## Content

- [Part I. Data Structures and Data Types](#toc-1-ds-and-dt)
- [Part II: Data Manipulation and Processing](#toc-2-dm-and-processing)

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
        - Bit operations
        - Bit count
        - Fraction
        - Euclidean distance
2. Comprehensions
    - List comprehension
    - Dict comprehension
    - Set comprehension
3. String Operations
    - lower(), upper(), capitalize(), title()
    - strip()
    - split()
    - ord(), chr()
4. Regular Expressions
    - RegEx
    - match
5. Datetime
    - Creating datetime variables
    - Datetime conversion
    - Datetime arithmetic
6. Functional Programming
    - Functools
        - map
        - filter
        - reduce
    - Bisect
7. File Operations
    - Files
        - read
        - write
        - text/binary
    - Serialization
        - JSON
        - Pickle
        - Protocol Buffers
    - Filesystem
        - paths
    - Structured Data Formats
        - CSV
        - Other structured data formats (e.g., XML, YAML)
8. Data Encoding and Decoding
    - base64
    - Unicode


# Part I. Data Structures and Data Types <a id="1-ds-and-dt"></a>

Data structures in Python are objects or collections of objects that can hold and organize data in various ways. They provide a way to store and manipulate data, and can be used for a wide range of applications, from simple to complex.

Python provides a rich set of built-in data structures, such as `lists`, `tuples`, `dictionaries`, and `sets`. These data structures can be used to hold various types of data, including `numbers`, `strings`, and other objects.

Python also provides more specialized data structures, such as `arrays`, `heaps`, and `queues`, as well as libraries that provide more advanced data structures, such as `pandas` and `numpy`.

Choosing the appropriate data structure for a particular application can have a significant impact on performance, readability, and ease of implementation. Understanding the strengths and weaknesses of different data structures is an important part of writing efficient and effective Python code.

## 1. Basic Data Types <a id="basic-dt"></a>

### String <a id="string"></a>

In Python, a `string` is a sequence of characters enclosed in quotation marks (either single or double quotes). `Strings` are one of the built-in data types in Python and are used to represent text data.

Python 3.x uses [`str`](https://docs.python.org/3/library/stdtypes.html#text-sequence-type-str) objects to store textual data as immutable sequences of Unicode characters. Practically speaking, that means a `str` is an immutable array of characters. Oddly enough, it’s also a recursive data structure — each character in a string is itself a `str` object of length 1.


```python
# Concatenating strings
greeting = "Hello"
name = "Alice"
message = greeting + " " + name
print("message:", message)

# Assemble the string using the specified separator
joined_string = ' '.join(["The", "quick", "brown", "fox"])
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


### Number <a id="number"></a>

In Python, there are three built-in numeric data types: `integers`, `floating-point` numbers, and `complex` numbers.

It is also possible to convert between numeric data types in Python using built-in functions. For example, the `int()` function can be used to convert a floating-point number or a string to an integer, and the `float()` function can be used to convert an integer or a string to a floating-point number.


```python
a = 3.5
b = int(a) # Converting a floating-point number to an integer
print("b:", b)

s = "123"
i = int(s) # Converting a string to an integer
print("i:", i)

c = 5
d = float(c) # Converting an integer to a floating-point number
print("d:", d)

t = "3.14"
f = float(t) # Converting a string to a floating-point number
print("f:", f)
```

    b: 3
    i: 123
    d: 5.0
    f: 3.14


#### Integer <a id="int"></a>

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


#### Float <a id="float"></a>

Floating-point numbers are decimal numbers that can also be positive, negative, or zero. They are represented by the `float` class in Python.


```python
import math

x = 3.14
y = -2.5

z = x ** y
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


#### Complex <a id="complex"></a>

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


### NoneType <a id="none"></a>

In Python, `None` is a special value that represents the absence of a value or the absence of a meaningful value. It is often used to indicate that a variable or function does not return any useful value.

`None` is a built-in constant in Python, represented by the `NoneType` class. It is typically used to initialize variables or functions that are expected to be assigned a value or return a value later on.


```python
x = None # Initializing a variable with None

def greet(name): # Defining a function that returns None
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


## 2. Built-in Data Structures <a id="built-in-ds"></a>

### List <a id="list"></a>

A `list` is the most versatile and popular data structure in Python which can be written as a list of comma-separated values (items) between square brackets.  

A `list` is an ordered mutable collection of objects. Important thing about a `list` is that items in a `list` need not be of the same type. The internal structure of a `list` is an `array` (more precisely, a vector) of pointers, i.e. the `list` is a dynamic `array`.


```python
a = [] # Create an empty list

a: list[int] = [10, 20]
b: list[int] = [30, 40]
a.append(50) # Add a value at the end of the list
b.insert(1, 60) # Insert value at specific index
print("List a:", a)
print("List b:", b)

a += b
print(f"Add: {a}")

a.reverse()
b = list(reversed(a))  # reversed() returns an iterator, not a list
print("Reversed a:", a)
print("Reversed b:", b)

b = sorted(a) # Returns a new sorted list
a.sort() # Modifies the original list and returns nothing
print("Sorted a:", a)
print("Sorted b:", b)

s: str = "This is a string"
list_of_chars: list = list(s)
print(list_of_chars)
list_of_words: list = s.split()
print(list_of_words)

i: int = list_of_chars.index("i") # Returns the index of the first occurrence of the item searched for or throws a ValueError exception
print(i)
list_of_chars.remove("i") # Removes the first occurrence of the searched element or throws a ValueError exception
e = list_of_chars.pop(9) # Removes and returns the value located at the index. pop() (with no argument) will remove and return the last item in the list
print(list_of_chars)
print(e)
a.clear() # Clear list
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


### Tuple <a id="tuple"></a>

A `tuple` is also a list, only immutable and hashable. A `tuple` containing the same data as a `list` takes less space:


```python
a = [2, 3, "Some", "String", 1.56e-22]
b = (2, 3, "Some", "String", 1.56e-22)

print(f"List: {a.__sizeof__()} bytes")
print(f"Tuple: {b.__sizeof__()} bytes")
```

    List: 88 bytes
    Tuple: 64 bytes


#### Named tuple <a id="namedtuple"></a>

According to the name, `namedtuple` has named fields. It is not a separate data structure, but a factory function that returns a new `tuple` subclass.


```python
from collections import namedtuple

rectangle = namedtuple('rectangle', 'length width')
r = rectangle(length = 1, width = 2)

print("r:", r)
print("r.lengt:", r.length)
print("r.width:", r.width)
print("r._fields:", r._fields)
```

    r: rectangle(length=1, width=2)
    r.lengt: 1
    r.width: 2
    r._fields: ('length', 'width')


### Dictionary <a id="dict"></a>

_Dictionary_ is the second most commonly used data structure in Python. The `dict` is an implementation of a hash table, so we cannot take a non-hashable object as a key, such as a `list` (this is where `tuple` comes in handy). The key of the dictionary can be any immutable object: number, string, datetime or even function. Such objects have a method `__hash__()`, which uniquely associates the object to a number. With this number the dictionary looks for the value of the key.

`Lists`, `dictionaries` and `sets` (which we will consider below) are mutable and have no hash method; an attempt to substitute them into the dictionary will result in an error.


```python
d = {} # Create an empty dictionary

d: dict[str, str] = {"France": "Croissant", "Mexico": "Taco", "India": "Naan"} # Direct dictionary creation

k = ["France", "Mexico", "India"]
v = ["Croissant", "Taco", "Naan"]
d = dict(zip(k, v))  # create a dictionary from two collections using zip()

k = d.keys() # Key collection. Reflects changes in the main dictionary
v = d.values() # Value collection. Also reflects changes in main dictionary
k_v = d.items() # Key-value tuples, which also reflect changes in the main dictionary

print("d:", d)
print("d.keys():", k)
print("d.values():", v)
print("d.items():", k_v)

print(f"Mapping: {k.mapping['France']}")

d.update({"India": "Samosa"}) # Adding a value. If the key matches, the old value will be overwritten
print(f"Replace item: {d}")

c = d["India"] # Read value
print(f"Read item: {c}")

try:
    v = d.pop("Brazil") # Delete value or raise KeyError exception
except KeyError:
    print("Dictionary key doesn't exist")

# Examples of dict comprehension (more on comprehension below)
b = {k: v for k, v in d.items() if "o" in k}  # Will return a new dictionary, filtered by key value
print("dict comprehension:", b)

c = {k: v for k, v in d.items() if len(v) >= 4} # Returns a new dictionary, filtered by value length
print("dict comprehension:", c)

d.clear() # Clearing dictionary
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


#### DefaultDict <a id="defaultdict"></a>

If you try to read from the normal dictionary a value of a key that is not there, a KeyError exception will be thrown (exceptions will be discussed below). `defaultdict` allows you not to write an exception handler, but simply treats reading a non-existent key as a command to write to that key and return the default value; for example, `defaultdict(int)` will return `0`.


```python
from collections import defaultdict

dd = defaultdict(int)
print("dd[10]:", dd[10]) # Print int, the default value: zero will be printed
dd[5] = "five"
print("dd[5]:", dd[5])

dd = {} # "Regular" empty dictionary
# print(dd[10]) # will throw a KeyError exception
```

    dd[10]: 0
    dd[5]: five


#### OrderedDict <a id="ordereddict"></a>

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


#### Counter <a id="counter"></a>

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


### Set <a id="set"></a>

The third most common Python data structure. `Sets` were formerly somewhat reduced `dictionaries`, but over time their implementations began to diverge. However, a `set` is still a hash table with appropriate performance on different types of operations.


```python
big_cities: set["str"] = {"Paris", "Berlin", "Tokyo"}
european_cities: set["str"] = {"Paris", "Berlin", "Madrid"}

big_cities |= {"Barcelona"} # add value (or add())
european_cities |= {"Lisbon", "Rome"} # Add sets (or update())

print("big_cities:", big_cities)
print("european_cities:", european_cities)

union_cities: set["str"] = big_cities | european_cities # Or union()
intersected_cities: set["str"] = big_cities & european_cities # Or intersection()
dif_cities: set["str"] = big_cities - european_cities # Or difference()
symdif_cities: set["str"] = big_cities ^ european_cities # Or symmetric_difference()

issub: bool = big_cities <= union_cities # Or issubset()
issuper: bool = european_cities >= dif_cities # Or issuperset()

print("union_cities:", union_cities)
print("intersected_cities:", intersected_cities)
print("dif_cities:", dif_cities)
print("symdif_cities:", symdif_cities)

print("issub:", issub)
print("issuper:", issuper)

big_cities.add("Moscow")

big_cities.remove("Paris") # Deletes value if present or throws KeyError
big_cities.discard("Berlin") # Deletes value without throwing KeyError
big_cities.pop() # Returns and deletes a random value (order in set undefined) or discards KeyError
big_cities.clear() # Clears the set
```

    big_cities: {'Berlin', 'Barcelona', 'Tokyo', 'Paris'}
    european_cities: {'Paris', 'Lisbon', 'Berlin', 'Madrid', 'Rome'}
    union_cities: {'Tokyo', 'Lisbon', 'Barcelona', 'Rome', 'Paris', 'Berlin', 'Madrid'}
    intersected_cities: {'Berlin', 'Paris'}
    dif_cities: {'Barcelona', 'Tokyo'}
    symdif_cities: {'Barcelona', 'Tokyo', 'Lisbon', 'Madrid', 'Rome'}
    issub: True
    issuper: False


#### Frozen set <a id="frozenset"></a>

`frozenset` is the same set, only immutable and hashable. Reminds of the difference between a `list` and a `tuple`.


```python
a = frozenset({"New-York", "Los Angeles", "Ottawa"})
print("a:", a)
```

    a: frozenset({'Los Angeles', 'New-York', 'Ottawa'})


### Array <a id="array"></a>

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

print("a1.index(-4):", a1.index(-4)) # Returns the index of the elements or throws a ValueError
```

    a1: array('l', [1, 2, 3, -4])
    a2[0]: 49
    b: b'1234567890'
    a1.index(-4): 3


#### Bytes <a id="bytes"></a>

[`bytes`](https://docs.python.org/3/library/stdtypes.html#bytes-objects) objects are immutable sequences of single bytes, or integers in the range 0 ≤ _x_ ≤ 255. Conceptually, `bytes` objects are similar to `str` objects, and you can also think of them as immutable arrays of bytes.


```python
# Creation
b1 = bytes([5, 10, 15, 20]) # Integers must be between 0 and 255
b2 = "The Bytes".encode('utf-8')
b3 = (-4096).to_bytes(4, byteorder='little', signed=True) # byteorder = "big"/"little"/"sys.byteorder", signed = False/True
b4 = bytes.fromhex('DEADBEEF') # Hex values can be separated by spaces for readability
b5 = bytes(range(10,40,3))

print("b1:", b1)
print("b2:", b2)
print("b3:", b3)
print("b4:", b4)
print("b5:", b5)

# Transformation
c: list = list(b"\x01\x02\x03\x04\x05\x06")
s: str = b'The Bytes'.decode("utf-8")
b: int = int.from_bytes(b"\xfc\x00", byteorder='little', signed=False) # byteorder = "big"/"little"/"sys.byteorder", signed = False/True
s2: str = b"\xfc\x00\x00\x00\x00\x01".hex(" ")

print("c:", c)
print("s:", s)
print("b:", b)
print("s2:", s2)

with open("bytes.bin", "wb") as file: # Write byte to file
     file.write(b1)

with open("bytes.bin", "rb") as file: # Read from file
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


#### Bytearray <a id="bytearray"></a>

The [`bytearray`](https://docs.python.org/3.1/library/functions.html#bytearray) type is a mutable sequence of integers in the range 0 ≤ _x_ ≤ 255. The `bytearray` object is closely related to the `bytes` object, with the main difference being that a `bytearray` can be modified freely—you can overwrite elements, remove existing elements, or add new ones. The `bytearray` object will grow and shrink accordingly.

A `bytearray` can be converted back into immutable `bytes` objects, but this involves copying the stored data in full—a slow operation taking _O_(_n_) time:


```python
# Creation
ba1 = bytearray([1, 2, 3, 4])  # Create a bytearray from a list of integers
b2 = "The Bytes".encode('utf-8')
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


### Deque <a id="deque"></a>

The `deque` class implements a double-ended queue that supports adding and removing elements from either end in _O_(1) time (non-amortized). Because deques support adding and removing elements from either end equally well, they can serve both as `queues` and as `stacks`.

Python’s `deque` objects are implemented as doubly-linked lists. This gives them excellent and consistent performance for inserting and deleting elements, but poor _O_(_n_) performance for randomly accessing elements in the middle of the stack.


```python
from collections import deque
d = deque([1, 2, 3, 4], maxlen=1000)

d.append(5)  # Add element to the right side of the deque
d.appendleft(0)  # Add element to the left side of the deque by appending elements from iterable

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


### Queue <a id="queue"></a>

`Queue` implements FIFO with multiple data providers and multiple consumers. It can be particularly useful for multithreading, allowing information to be exchanged correctly between threads. 
There is also `LifoQueueue` to implement LIFO and `PriorityQueueue` to implement priority queue.


```python
from queue import Queue

q = Queue(maxsize=1000)

q.put("eat", block=True, timeout=10)
q.put("sleep") # By default block=True, timeout=None
q.put("code")
q.put_nowait("repeat") # Equivalent to put("repeat", block=False). If a free slot is not immediately available, a queue.Full exception will be thrown
print("q.queue:", q.queue)

a = q.get(block=True, timeout=10) # Remove and return element from FIFO
b = q.get() # By default block=True, timeout=None
c = q.get_nowait() # Equivalent to get(False)
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


#### LifoQueue <a id="lifoqueue"></a>

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


#### PriorityQueue <a id="priorityqueue"></a>

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


### Heap queue (Heapq) <a id="heap"></a>

In Python, a `heap` is a binary tree data structure that is commonly used to implement a PriorityQueue. A `heap` is a complete binary tree where the parent node is always greater (or less) than its children, and the tree has the minimum or maximum element at the root node.

Python's `heapq` module provides the min heap (the smallest value always lies at the root) functions for working with heaps in a list. The heapq module can be used to create a heap, add elements to it, remove elements from it, and so on. 
If you need a max heap, with the maximum value at the root, you can use the advice from [Stackoverflow](https://stackoverflow.com/questions/2501457/what-do-i-use-for-a-max-heap-implementation-in-python).


```python
import heapq

h = [211, 1, 43, 79, 12, 5, -10, 0]
heapq.heapify(h) # Turn the list into a heap
print("h:", h)

heapq.heappush(h, 2) # Add item
heapq.heappush(h, 150)
print("h:", h)

m = heapq.heappop(h) # Retrieve the minimum item
print("h:", h)
print("m:", m)
```

    h: [-10, 0, 5, 1, 12, 211, 43, 79]
    h: [-10, 0, 5, 1, 12, 211, 43, 79, 2, 150]
    h: [0, 1, 5, 2, 12, 211, 43, 79, 150]
    m: -10


## 3. User-defined Data Structures <a id="user-defined-ds"></a>

Data structures that Python has no built-in implementation, but can nevertheless be very useful in a real project.

### Linked List <a id="linkedlist"></a>

A `linked list` ([Wiki](https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list)) is a data structure that consists of a sequence of nodes, where each node contains a value and a reference to the next node in the list. The first node in the list is called the `head` of the list, and the last node is called the `tail`. Linked lists can be used to implement various data structures, such as stacks and queues.

Python does not have a built-in linked list data structure, but it can be implemented using a class to represent the nodes and their relationships. 

### Binary Tree <a id="binarytree"></a>

A `binary tree` ([Wiki](https://en.wikipedia.org/wiki/Binary_tree)) is a type of tree data structure in which each node can have at most two children, known as the `left child` and the `right child`. Each node contains a value, and the left child's value is less than the node's value, while the right child's value is greater than the node's value. Binary trees are often used to implement search and sorting algorithms, such as binary search.

### B-tree <a id="btree"></a>

A `B-tree` ([Wiki](https://en.wikipedia.org/wiki/B-tree)) is a type of self-balancing tree data structure that can store large amounts of data on disk or in memory. B-trees are commonly used in databases and file systems to store and retrieve large amounts of data quickly and efficiently.

In a B-tree, each node can contain multiple keys and pointers to child nodes. The number of keys in a node is determined by a parameter called the "order" of the tree. Each node in the tree has at least `ceil(order/2)` keys and at most order keys.

Python does not have a built-in B-tree data structure, but there are third-party libraries that provide implementations of B-trees, such as the `bintrees` module.

### Red-Black Tree <a id="redblacktree"></a>

A `Red-Black Tree` ([Wiki](https://en.wikipedia.org/wiki/Red%E2%80%93black_tree)) is a self-balancing binary search tree data structure. It is similar to a binary search tree but has additional properties that make it self-balancing, which means that the tree is always balanced, ensuring efficient searching, insertion, and deletion of elements.

The Red-Black Tree is named after the color of its nodes, which can be either `red` or `black`. The nodes are structured in a way that ensures that the tree is always balanced, regardless of the order in which elements are inserted or deleted.

In Python, a Red-Black Tree can be implemented using a class to represent the nodes and their relationships, and by implementing the necessary algorithms for searching, insertion, and deletion.

### AVL Tree <a id="avltree"></a>

`AVL Tree` ([Wiki](https://en.wikipedia.org/wiki/AVL_tree)) can be defined as height balanced binary search tree in which each node is associated with a balance factor which is calculated by subtracting the height of its right sub-tree from that of its left sub-tree.

In AVL trees, insertion and deletion operations are slower than in red-black trees. But for lookup-intensive applications, AVL trees are faster than red–black trees because they are more strictly balanced.

### Trie <a id="trie"></a>

A `Trie` ([Wiki](https://en.wikipedia.org/wiki/Trie)) is a tree-like data structure that is used for efficient searching and retrieval of strings. It is also known as a `prefix tree`, because it can be used to efficiently search for all strings that have a given prefix.

A Trie is made up of nodes that represent the characters of the strings being stored. Each node has multiple branches, one for each possible character in the alphabet, and each branch can lead to another node or to a leaf node that represents the end of a string.

The Trie data structure is particularly useful when dealing with large sets of strings, as it allows for efficient searching, insertion, and deletion of strings.

## 4. Other Data Types <a id="other-dt"></a>

### Enum <a id="enum"></a>

The `enum` module in Python provides a way to define named constants in a program. Enums are a way to represent a set of values as a named collection of symbolic constants. They make it easier to write more readable, self-documenting code and help avoid errors due to typos or invalid values.


```python
from enum import Enum

class Color(Enum):
    RED = 1
    GREEN = 2
    BLUE = 3

print("Color.RED:", Color.RED)    # Color.RED
print("Color.BLUE:", Color.BLUE)   # Color.BLUE
print("Color.GREEN:", Color.GREEN)  # Color.GREEN

# Iterating over enums
for color in Color:
    print(color)

# Accessing enum members by value
print("Color(1):", Color(1))   # Color.RED
print("Color(2):", Color(2))   # Color.GREEN
print("Color(3):", Color(3))   # Color.BLUE

list_of_colors = list(Color)
color_names    = [e.name for e in Color]
color_values   = [e.value for e in Color]

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


### Range <a id="range"></a>

In Python, `range()` is a built-in function that generates a sequence of numbers. `The range()` function is commonly used for iterating over a sequence of numbers, such as in a for loop.

The `range()` function takes up to three arguments, in the form `range(start, stop, step)`. The `start` argument is the starting number of the sequence (inclusive), the `stop` argument is the ending number of the sequence (exclusive), and the `step` argument is the difference between each number in the sequence.


```python
r1: range = range(11) # Returns a sequence of numbers from 0 to 10
r2: range = range(5, 21) # Returns a sequence of numbers from 5 to 20
r3: range = range(20, 9, -2) # Returns the sequence of numbers from 20 to 10 in steps of 2

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


### Dataclass <a id="dataclass"></a>

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

### Struct <a id="struct"></a>

In Python, the `struct` module provides functions for packing and unpacking binary data. These functions allow you to convert data between Python objects and their binary representation, which is useful for working with binary data formats such as network protocols, file formats, and device drivers.

Allows you to turn a Python `int` into, for example, a `short int` or a `long int`.


```python
from struct import pack, unpack, iter_unpack

p = pack('if', 42, 3.14)
print("pack:", p)

u = b'*\x00\x00\x00\xcd\xcc\x0c@'
values = unpack('if', u)
print("unpack:", values)

i = b'*\x00\x00\x00\xcd\xcc\x0c@\xa0\x0f\x00\x00\xcd\xcc\xcc?'
for values in iter_unpack('if', i):
    print("iter_unpack:", values)
```

    pack: b'*\x00\x00\x00\xc3\xf5H@'
    unpack: (42, 2.200000047683716)
    iter_unpack: (42, 2.200000047683716)
    iter_unpack: (4000, 1.600000023841858)


### Datetime <a id="datetime"></a>

In Python, the `datetime` module provides classes for working with dates and times. 

The `datetime` class is the most commonly used class in the `datetime` module and represents a date and time together.

The `datetime` module also provides several other classes for working with dates and times, such as `date`, `time`, and `timedelta`. These classes provide more fine-grained control over individual components of a date or time, such as the year, month, day, hour, minute, second, or microsecond.

#### Constructors <a id="constructors"></a>

The constructor creates a `datetime` object with the specified year, month, day, hour, minute, second, and microsecond. If any of these values are not specified, they default to 0.


```python
from datetime import date, time, datetime, timedelta

d: date = date(year=1987, month=11, day=2)
t: time  = time(hour=12, minute=30, second=0, microsecond=0, tzinfo=None, fold=0)
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


#### Now <a id="now"></a>

Get the current date or date/time.


```python
from datetime import date, datetime
import pytz
import time

d: date  = date.today()
dt1: datetime = datetime.today()
dt2: datetime = datetime.utcnow()
dt3: datetime = datetime.now(pytz.timezone('Europe/Budapest'))

t1 = time.time()  # Unix epoch time
t2 = time.ctime()

print("d:", d)
print("dt1:", dt1)
print("dt2:", dt2)
print("dt3:", dt3)
print("t1:", t1)
print("t2:", t2)

```

    d: 2023-04-26
    dt1: 2023-04-26 16:27:24.190924
    dt2: 2023-04-26 14:27:24.190933
    dt3: 2023-04-26 16:27:24.190955+02:00
    t1: 1682519244.190978
    t2: Wed Apr 26 16:27:24 2023


#### Timezone <a id="timezone"></a>

The `timezone` class is used to represent a time zone and can be used to convert `datetime` objects between different time zones.


```python
import datetime
import pytz

# Create a datetime object representing April 15, 2022 at 3:30 PM in the US/Eastern time zone
eastern = pytz.timezone('US/Eastern')
dt = datetime.datetime(2022, 4, 15, 15, 30, tzinfo=eastern)
print("dt:", dt)

# Convert the datetime object to the UTC time zone
utc = pytz.utc
dt_utc = dt.astimezone(utc)
print("dt_utc:", dt_utc)
```

    dt: 2022-04-15 15:30:00-04:56
    dt_utc: 2022-04-15 20:26:00+00:00


## 5. General Data Structure Concepts <a id="general-ds-concepts"></a>

### Mutable/Immutable <a id="mutable-immutable"></a>

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

### Hash calculation problem <a id="hashcalc"></a>

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


# Part II. Data Manipulation and Processing <a id="2-dm-and-processing">

## 1. Basic Data Manipulation <a id="basic-dm"></a>

### Slice <a id="slice"></a>

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


### Sorting <a id="sorting"></a>

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

### any()/all() <a id="anyall"></a>

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

### Basic Math operations <a id="basicmathoperations"></a>

#### sum(), count(), min(), max() <a id="sumcountminmax"></a>

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


#### Basic math <a id="basicmath"></a>

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
c5 = a ** b
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
print(c)
```

    1





