# Part VI: Functional Programming <a id="6-fp"></a>

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

**Functional Programming** is a programming paradigm that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data. It emphasizes the application of functions in a way that the output of a function is only dependent on its input arguments, without any side effects (i.e., changes to the state of the program outside the function).

Python supports functional programming by providing features such as *first-class functions* (functions can be passed around and used as arguments), *higher-order functions* (functions that can take functions as arguments and return functions), *lambda functions* (anonymous functions), and built-in functions like `map`, `filter`, and `reduce` for operating on collections. Python also includes `list`, `dictionary`, and `set` comprehensions for creating new collections based on existing ones in a concise and readable way, as well as decorators for enhancing the behavior of functions and methods without permanently modifying their functionality.

Functional programming can lead to cleaner, more concise, and more predictable code that is easier to test and debug.

## 1. Lambda Functions <a id="lambda-functions"></a>

_Lambda functions_, also known as anonymous functions, are small, one-line functions defined without a name. They use the keyword `lambda` followed by a list of arguments, a colon, and an expression which the function will return when called. Lambda functions can have any number of arguments but only one expression. 

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


## 2. Comprehensions <a id="comprehensions"></a>

_Comprehensions_ are a concise way to create new collections (lists, dictionaries, and sets) by applying an expression to each item in an existing collection. They are a powerful feature of Python that allows for more readable and efficient code.

### List comprehension <a id="list-comprehension"></a>

_List comprehensions_ provide a concise way to create lists. The result will be a new list resulting from evaluating the expression in the context of the `for` and `if` clauses which follow it.

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


### Dict comprehension <a id="dict-comprehension"></a>

_Dictionary comprehensions_ provide a concise way to create dictionaries. The result will be a new dictionary resulting from evaluating the key-value pairs in the context of the `for` and `if` clauses which follow them.

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


### Set comprehension <a id="set-comprehension"></a>

_Set comprehensions_ provide a concise way to create sets. The result will be a new set resulting from evaluating the expression in the context of the `for` and `if` clauses which follow it.

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


## 3. Functools <a id="functools"></a>

The `functools` module in Python provides higher-order functions and operations on callable objects. It includes functions for creating and manipulating functions and for creating and using decorators.

### map <a id="map"></a>

The `map` function applies a given function to each item of an iterable (like a list, tuple, or set) and returns a list of the results. 

It is a higher-order built-in function that takes a function and an iterable as arguments and returns an iterator that applies the function to every item of the iterable, yielding the results.

- Syntax: `map(function, iterable)`
- Returns: an iterator that applies `function` to every item of `iterable`, yielding the results


```python
def square(number):
    return number**2


numbers = [1, 2, 3, 4]
result = map(square, numbers)
print(list(result))
```

    [1, 4, 9, 16]


### filter <a id="filter"></a>

The `filter` function constructs an iterator from elements of an iterable for which a function returns `True`. 

It is a higher-order built-in function that takes a function and an iterable as arguments and returns an iterator that yields the items from the iterable for which the function returns `True`.

- Syntax: `filter(function, iterable)`
- Returns: an iterator that yields the items from `iterable` for which `function` returns `True`


```python
def is_even(number):
    return number % 2 == 0


numbers = [1, 2, 3, 4, 5]
result = filter(is_even, numbers)
print(list(result))
```

    [2, 4]


### reduce <a id="reduce"></a>

The `reduce` function applies a function of two arguments cumulatively to the items of an iterable, from left to right, so as to reduce the iterable to a single value. 

It is a higher-order built-in function that takes a function and an iterable as arguments and returns a single value constructed by calling the function on the first two items of the iterable, then on the result and the next item, and so on.

- Syntax: `functools.reduce(function, iterable[, initializer])`
- Returns: a single value constructed by calling `function` on the first two items of `iterable`, then on the result and the next item, and so on


```python
from functools import reduce


def add(x, y):
    return x + y


numbers = [1, 2, 3, 4]
result = reduce(add, numbers)
print(result)
```

    10


## 4. Bisect <a id="bisect"></a>

The `bisect` module in Python provides support for maintaining a list in sorted order without having to sort the list after each insertion. It is useful for cases where a sequence of values is continually updated (e.g., incoming data points that need to be kept in sorted order) and you need efficient operations to find the insertion point for new elements to keep the list sorted. The `bisect` module offers two main functions: `bisect_left` and `bisect_right` (also known as `bisect`), and two convenience functions: `insort_left` and `insort_right`.

### bisect_left, bisect_right <a id="bisect-left-right"></a>

1. **bisect_left**

The `bisect_left(a, x, lo=0, hi=len(a))` function locates the insertion point for `x` in a to maintain sorted order. The parameters `lo` and `hi` may be used to specify a subset of the list which should be considered. If `x` is already present in `a`, the insertion point will be before (to the left of) any existing entries. The return value is the index at which `x` should be inserted into `a`.

2. **bisect_right** (or `bisect`)

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


### insort_left, insort_right <a id="insort-left-right"></a>

1. **insort_left**

The `insort_left(a, x, lo=0, hi=len(a))` function inserts `x` into a in sorted order. If `x` is already present in `a`, it inserts it to the left of the existing entries. The list remains in ascending order.

2. **insort_right**

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


## 5. Decorators <a id="decorators"></a>

_Decorators_ are a powerful feature in Python that allows the behavior of functions or methods to be modified without permanently modifying their functionality. They are a form of metaprogramming and provide a clean and elegant way to modify the behavior of functions or methods. Decorators are often used to add functionality to existing functions or methods, such as logging, timing, or access control.

### Decorator <a id="decorator"></a>

A _decorator_ is a function that takes another function as an argument and returns a new function. It is used to modify the behavior of the function or method it decorates. Decorators are denoted by the `@decorator` syntax, where `decorator` is the name of the decorator function.

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


### Parametrized decorator <a id="parametrized-decorator"></a>

A _parametrized decorator_ is a decorator that accepts arguments. It is a function that returns a decorator, which in turn is a function that takes a function and returns a new function. Parametrized decorators are used to modify the behavior of the function or method it decorates based on the arguments passed to it.


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


### functools.wraps <a id="functools-wraps"></a>

When you use a decorator, the original function’s metadata (like its name, docstring, and module) gets hidden by the wrapper closure. To avoid this and make the wrapper function look like the decorated function, use `functools.wraps`. 

It is a decorator for updating the attributes of the wrapping function to look like the wrapped function. This is useful when you are building higher-order functions that return a function based on some input parameters.


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

### LRU Cache <a id="lru-cache"></a>

The `functools` module provides a decorator called `lru_cache` that caches the results of a function, saving time when the same inputs occur again. The `lru_cache` decorator can be used to speed up functions that are called with the same arguments repeatedly. 

It is particularly useful when the function is computationally expensive or when the function is called with the same arguments frequently.


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


## 6. Generators <a id="generators"></a>

_Generators_ are a special class of functions that simplify the task of writing iterators. Regular functions compute a value and return it, but generators return an iterator that returns a stream of values. They are a powerful tool for creating iterators and are used in Python to create iterators more easily.

### yield <a id="yield"></a>

The `yield` statement is used to define a generator, replacing the `return` statement in a function. When a function is called with the `yield` statement, it returns a generator object without executing the function. The generator object can then be iterated over to produce the values.

The `yield` statement is used to produce a series of values, one at a time, from a function. Each time the `yield` statement is executed, the function generates a new value. The generator function can be resumed from the last `yield` statement by calling the `next()` function on the generator object.


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


### Generator expression <a id="generator-expression"></a>

_Generator expressions_ are a high-performance, memory-efficient generalization of list comprehensions and generators. They are similar to list comprehensions, but they return an iterator that produces the values on-the-fly instead of building a whole list.

The syntax for generator expressions is similar to list comprehensions, but with parentheses `()` instead of square brackets `[]`.


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


### yield from <a id="yield-from"></a>

The `yield from` statement is used to delegate part of the responsibility for a generator to another generator. It allows you to yield values from a sub-generator without having to write a loop that iterates over the sub-generator and yields its values. 

It is particularly useful when you are working with nested generators.


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


## 7. Iterators <a id="iterators"></a>

_Iterators_ in Python are objects that allow you to iterate over iterable objects (like lists, tuples, dictionaries, sets, and strings). An iterator implements two special methods, `__iter__()` and `__next__()`, which together form the iterator protocol.

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


### Building an iterator <a id="building-iterator"></a>

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

