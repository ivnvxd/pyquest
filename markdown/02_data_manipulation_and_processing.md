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

