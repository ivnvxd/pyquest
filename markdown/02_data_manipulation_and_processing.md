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
print("c:", c)
```

    c: 1


#### Bit operations <a id="bitoperations"></a>

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

