## Part I. Data Structures and Data Types <a id="1-ds-and-dt"></a>

Data structures in Python are objects or collections of objects that can hold and organize data in various ways. They provide a way to store and manipulate data, and can be used for a wide range of applications, from simple to complex.

Python provides a rich set of built-in data structures, such as `lists`, `tuples`, `dictionaries`, and `sets`. These data structures can be used to hold various types of data, including `numbers`, `strings`, and other objects.

Python also provides more specialized data structures, such as `arrays`, `heaps`, and `queues`, as well as libraries that provide more advanced data structures, such as `pandas` and `numpy`.

Choosing the appropriate data structure for a particular application can have a significant impact on performance, readability, and ease of implementation. Understanding the strengths and weaknesses of different data structures is an important part of writing efficient and effective Python code.

### 1. Basic Data Types <a id="basic-dt"></a>

Python has a number of built-in data types that are used to represent different kinds of data. These data types include `integers`, `floating-point numbers`, `complex numbers`, `strings`, `booleans`, and `None`.

#### String <a id="string"></a>

In Python, a `string` is a sequence of characters enclosed in quotation marks (either single or double quotes). `Strings` are one of the built-in data types in Python and are used to represent text data.

Python 3.x uses [`str`](https://docs.python.org/3/library/stdtypes.html#text-sequence-type-str) objects to store textual data as immutable sequences of Unicode characters. Practically speaking, that means a `str` is an immutable array of characters. Oddly enough, it’s also a recursive data structure — each character in a string is itself a `str` object of length 1.

Strings can be created using single quotes, double quotes, or triple quotes. Triple quotes are used to create multi-line strings.


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

- `Integers` are whole numbers, such as 1, 2, 3, 4, and so on. They can be positive or negative, but they cannot have a fractional part.
- `Floating-point` numbers are numbers with a fractional part, such as 3.14, 2.718, and so on. They can be positive or negative.
- `Complex` numbers are numbers with a real part and an imaginary part, such as 3 + 4j, 2 - 5j, and so on.

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

In Python, integers can be created using the `int()` constructor, or by simply writing a sequence of digits without a decimal point. For example, `123`, `-456`, and `0` are all integers.


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

Floating-point numbers can be created using the `float()` constructor, or by writing a sequence of digits with a decimal point. For example, `3.14`, `-2.718`, and `0.0` are all floating-point numbers.


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

Complex numbers are numbers that have a real and an imaginary component. They are represented by the `complex` class in Python. 

Complex numbers are created by using the `j` or `J` suffix to indicate the imaginary component. For example, `3 + 4j` and `2 - 5J` are both complex numbers.


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

_Properties of a List:_

- `Ordered`: Lists are ordered collections, which means that the items in a list have a specific order, and that order will not change unless the list is modified.
- `Mutable`: Lists are mutable, which means that the items in a list can be changed after the list is created.
- `Heterogeneous`: Lists can contain items of different types, including other lists.
- `Dynamic`: Lists can grow and shrink in size as needed.


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

A `tuple` is also a list, only immutable and hashable. A `tuple` containing the same data as a `list` takes less space.

A `tuple` is an ordered immutable collection of objects. Important thing about a `tuple` is that items in a `tuple` need not be of the same type. The internal structure of a `tuple` is an `array` (more precisely, a vector) of pointers, i.e. the `tuple` is a static `array`.

_Properties of a Tuple:_

- `Ordered`: Tuples are ordered collections, which means that the items in a tuple have a specific order, and that order will not change unless the tuple is modified.
- `Immutable`: Tuples are immutable, which means that the items in a tuple cannot be changed after the tuple is created.
- `Heterogeneous`: Tuples can contain items of different types, including other tuples.
- `Static`: Tuples have a fixed size and cannot be resized after they are created.


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

A `dictionary` is an unordered mutable collection of objects. The internal structure of a `dictionary` is a hash table, i.e. the `dictionary` is a dynamic `array` of pointers to key-value pairs.

_Properties of a Dictionary:_

- `Unordered`: Dictionaries are unordered collections, which means that the items in a dictionary do not have a specific order, and that order may change when the dictionary is modified.
- `Mutable`: Dictionaries are mutable, which means that the items in a dictionary can be changed after the dictionary is created.
- `Heterogeneous`: Dictionaries can contain items of different types, including other dictionaries.
- `Dynamic`: Dictionaries can grow and shrink in size as needed.


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

Python includes a specialized `dict` subclass that remembers the insertion order of keys added to it: `OrderedDict`. This class is useful when you want to preserve the order of items in a dictionary.


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

The `Counter` counts the objects passed to it. Sometimes it is very convenient to just feed some list into the counter and immediately get the data structure with the counted elements. The `Counter` is a subclass of `dict`.

_Properties of a Counter:_

- `Unordered`: Counters are unordered collections, which means that the items in a Counter do not have a specific order, and that order may change when the Counter is modified.
- `Mutable`: Counters are mutable, which means that the items in a Counter can be changed after the Counter is created.
- `Heterogeneous`: Counters can contain items of different types, including other Counters.
- `Dynamic`: Counters can grow and shrink in size as needed.

_Most Common Methods of a Counter:_

- `elements()`: Returns an iterator over elements repeating each as many times as its count.
- `most_common([n])`: Returns a list of the n most common elements and their counts from the most common to the least.
- `values()`: Returns an iterator over the values repeating each as many times as its count.
- `items()`: Returns a view of the Counter items.
- `keys()`: Returns a view of the Counter keys.
- `subtract([iterable-or-mapping])`: Elements are subtracted from an iterable or from another mapping (or counter). Like `dict.update()` but subtracts counts instead of replacing them. Both inputs and outputs may be zero or negative.
- `clear()`: Removes all elements from the Counter.
- `copy()`: Returns a shallow copy of the Counter.
- `get([key], [default])`: Returns the count of the element. The default value is 0.


```python
from collections import Counter

shoes_sizes = ["36", "38", "39", "38", "40", "40", "42"]
c = Counter(shoes_sizes)
print("c:", c)

c["42"] += 1
print(f"After shopping: {c}")

print("Most common:", c.most_common(1))
```

    c: Counter({'38': 2, '40': 2, '36': 1, '39': 1, '42': 1})
    After shopping: Counter({'38': 2, '40': 2, '42': 2, '36': 1, '39': 1})
    Most common: [('38', 2)]


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

A `set` is an unordered mutable collection of objects. The internal structure of a `set` is a hash table, i.e. the `set` is a dynamic `array` of pointers to unique objects.

_Properties of a Set:_

- `Unordered`: Sets are unordered collections, which means that the items in a set do not have a specific order, and that order may change when the set is modified.
- `Mutable`: Sets are mutable, which means that the items in a set can be changed after the set is created.
- `Heterogeneous`: Sets can contain items of different types, including other sets.
- `Dynamic`: Sets can grow and shrink in size as needed.


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

    big_cities: {'Tokyo', 'Paris', 'Barcelona', 'Berlin'}
    european_cities: {'Lisbon', 'Berlin', 'Madrid', 'Paris', 'Rome'}
    union_cities: {'Tokyo', 'Madrid', 'Barcelona', 'Lisbon', 'Berlin', 'Paris', 'Rome'}
    intersected_cities: {'Paris', 'Berlin'}
    dif_cities: {'Tokyo', 'Barcelona'}
    symdif_cities: {'Tokyo', 'Barcelona', 'Lisbon', 'Madrid', 'Rome'}
    issub: True
    issuper: False


##### Frozen set <a id="frozenset"></a>

`frozenset` is the same set, only immutable and hashable. Reminds of the difference between a `list` and a `tuple`. A `frozenset` containing the same data as a `set` takes less space.


```python
a = frozenset({"New-York", "Los Angeles", "Ottawa"})
print("a:", a)
```

    a: frozenset({'Ottawa', 'Los Angeles', 'New-York'})


#### Array <a id="array"></a>

An `array` in Python is not the default data structure of choice and is only used when structure size and processing speed become crucial. But, on the other hand, if you are looking at `NumPy` and `Pandas` (a bit below), arrays are your go to.

An `array` stores variables of a certain type, so unlike a `list`, it doesn't require you to create a new object for each new variable and wins over a `list` in size and access speed. You could say it's a thin wrapper over C arrays.

You should distinguish between an `array` ("simple" array), `bytes` (an immutable array containing only bytes, the legacy str of Python 2), and `bytearray` (a mutable byte array).

_Properties of an Array:_

- `Ordered`: Arrays are ordered collections, which means that the items in an array have a specific order, and that order will not change unless the array is modified.
- `Mutable`: Arrays are mutable, which means that the items in an array can be changed after the array is created.
- `Homogeneous`: Arrays can contain items of the same type, and the type of the items in an array is determined when the array is created.
- `Static`: Arrays have a fixed size and cannot be resized after they are created.


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

[`bytes`](https://docs.python.org/3/library/stdtypes.html#bytes-objects) objects are immutable sequences of single bytes, or integers in the range 0 ≤ _x_ ≤ 255. Conceptually, `bytes` objects are similar to `str` objects, and you can also think of them as immutable arrays of bytes. However, `bytes` objects are not the same as `str` objects, and you cannot use a `bytes` object as a string.

`bytes` objects can be created using the `bytes()` constructor, or by writing a sequence of bytes in hexadecimal notation. For example, `b'hello'` and `bytes.fromhex('68656c6c6f')` are both `bytes` objects.


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

with open("../examples/bytes.bin", "wb") as file:  # Write byte to file
    file.write(b1)

with open("../examples/bytes.bin", "rb") as file:  # Read from file
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

A `bytearray` can be converted back into immutable `bytes` objects, but this involves copying the stored data in full—a slow operation taking _O(n)_ time. This is why `bytearray` objects are not as efficient as `bytes` objects for read-only data.


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

The `deque` class implements a double-ended queue that supports adding and removing elements from either end in _O(1)_ time (non-amortized). Because deques support adding and removing elements from either end equally well, they can serve both as `queues` and as `stacks`.

Python’s `deque` objects are implemented as doubly-linked lists. This gives them excellent and consistent performance for inserting and deleting elements, but poor _O_(_n_) performance for randomly accessing elements in the middle of the stack.

_Properties of a Deque:_

- `Ordered`: Deques are ordered collections, which means that the items in a deque have a specific order, and that order will not change unless the deque is modified.
- `Mutable`: Deques are mutable, which means that the items in a deque can be changed after the deque is created.
- `Heterogeneous`: Deques can contain items of different types, including other deques.
- `Dynamic`: Deques can grow and shrink in size as needed.


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

_Properties of a Queue:_

- `Ordered`: Queues are ordered collections, which means that the items in a queue have a specific order, and that order will not change unless the queue is modified.
- `Mutable`: Queues are mutable, which means that the items in a queue can be changed after the queue is created.
- `Heterogeneous`: Queues can contain items of different types, including other queues.
- `Dynamic`: Queues can grow and shrink in size as needed.


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

`LifoQueue` is a subclass of `Queue` and inherits all of its methods. The only difference is that `LifoQueue` uses a last-in, first-out ordering, while `Queue` uses a first-in, first-out ordering.


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

`PriorityQueue` is a subclass of `Queue` and inherits all of its methods. The only difference is that `PriorityQueue` uses a priority ordering, while `Queue` uses a first-in, first-out ordering.


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

_Properties of a Heap:_

- `Ordered`: Heaps are ordered collections, which means that the items in a heap have a specific order, and that order will not change unless the heap is modified.
- `Mutable`: Heaps are mutable, which means that the items in a heap can be changed after the heap is created.
- `Heterogeneous`: Heaps can contain items of different types, including other heaps.
- `Dynamic`: Heaps can grow and shrink in size as needed.


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

Enums are defined using the `Enum` class, which is a metaclass that allows you to define new enumeration types. Each enumeration type is defined as a class that inherits from `Enum`, and each member of the enumeration is defined as a class attribute.


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

The `range()` function returns a range object, which is an immutable sequence of numbers. The range object can be converted to a list using the `list()` constructor, or it can be iterated over directly in a for loop.


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

Get the current date or date/time. The `now()` method returns the current date and time as a `datetime` object.


```python
import time
from datetime import date, datetime

import pytz  # pip install pytz

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

    d: 2024-02-20
    dt1: 2024-02-20 18:29:13.968926
    dt2: 2024-02-20 17:29:13.968943
    dt3: 2024-02-20 18:29:13.985428+01:00
    t1: 1708450153.985877
    t2: Tue Feb 20 18:29:13 2024


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
