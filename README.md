# pyquest


## Table of contents

### Part I. Data structures

1. Basic
    - string
    - number
        - int
        - float
        - complex
2. Built-in
    - [list](#list)
    - [tuple](#tuple)
        - [namedtuple](#namedtuple)
    - [dict](#dict)
        - [defaultdict](#defaultdict)
        - [OrderedDict](#OrderedDict)
        - [Counter](#Counter)
        - [Hash calculation problem](#Hash-calculation-problem)
    - [set](#set)
        - [frozenset](#frozenset)
    - [array](#array)
        - [bytes](#bytes)
        - [bytearray](#bytearray)
    - [deque](#deque)
    - [queue](#queue)
        - [lifoqueue](#lifoqueue)
        - [priority queue](#priority-queue)
    - [heap](#heap)
    - [Mutable/Immutable](#mutable-immutable)
3. Not present
    - linked list
    - binary tree
    - B-tree
    - red-black tree
    - AVL tree
    - trie
4. Other
    - enum
    - range
    - dataclass
    - struct
    - datetime
        - constructors
        - now
        - timezone
    - common data structures operations


### list

A `list` is the most versatile and popular data structure in Python which can be written as a list of comma-separated values (items) between square brackets.  

A list is an ordered mutable collection of objects. Important thing about a list is that items in a list need not be of the same type. The internal structure of a list is an array (more precisely, a vector) of pointers, i.e. the list is a dynamic array.


```python

```


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


### tuple

A `tuple` is also a list, only immutable and hashable. A tuple containing the same data as a list takes less space:


```python
a = [2, 3, "Some", "String", 1.56e-22]
b = (2, 3, "Some", "String", 1.56e-22)

print(f"List: {a.__sizeof__()} bytes")
print(f"Tuple: {b.__sizeof__()} bytes")
```

    List: 88 bytes
    Tuple: 64 bytes


#### namedtuple

According to the name, `namedtuple` has named fields.


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


### dict

_Dictionary_ is the second most commonly used data structure in Python. The `dict` is an implementation of a hash table, so we cannot take a non-hashable object as a key, such as a list (this is where tuple comes in handy). The key of the dictionary can be any immutable object: number, string, datetime or even function. Such objects have a method `__hash__()`, which uniquely associates the object to a number. With this number the dictionary looks for the value of the key.

Lists, dictionaries and sets (which we will consider below) are mutable and have no hash method; an attempt to substitute them into the dictionary will result in an error.




