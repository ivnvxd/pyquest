# Part III. Control Flow and Data Flows <a id="3-cf-and-df">

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

## 1. Conditional Statements <a id="conditional-statements"></a>

Conditional statements are used to perform different computations or actions depending on whether a condition evaluates to `True` or `False`. The most common conditional statements in Python are `if`, `else`, and `elif`.

### if, else, elif <a id="if-else-elif"></a>

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


### Nested conditions <a id="nested-conditions"></a>

_Nested conditions_ are conditional statements that are placed inside other conditional statements. Nested conditions allow you to check for multiple conditions and execute different code depending on the outcome of those conditions.

You can have multiple levels of nested conditions to check for multiple conditions and execute different code depending on the outcome of those conditions. However, it's important to keep your code organized and easy to read, so you should avoid nesting too many conditions if possible. 

If you find yourself nesting too many conditions, you should consider refactoring your code to make it more readable.


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


## 2. Loops <a id="loops"></a>

Loops are used to execute a block of code multiple times. The most common types of loops in Python are `for` and `while` loops.

### for loop <a id="for-loop"></a>

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


### range() <a id="range()"></a>

The `range()` function is used to generate a sequence of numbers. The `range()` function can take one, two, or three parameters. The `range()` function returns a sequence of numbers starting at 0 and ending at the number before the parameter. The `range()` function can be used with the `for` loop to iterate over a sequence of numbers.

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


### while loop <a id="while-loop"></a>

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


### Nested loops <a id="nested-loops"></a>

_Nested loops_ are loops that are placed inside other loops. Nested loops allow you to iterate over multiple sequences of elements at the same time. You can have multiple levels of nested loops to iterate over multiple sequences of elements at the same time.

However, it's important to keep your code organized and easy to read, so you should avoid nesting too many loops if possible. If you find yourself nesting too many loops, you should consider refactoring your code to make it more readable.


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


## 3. Loop Control Statements <a id="loop-control-statements"></a>

Loop control statements are used to control the flow of a loop. The most common loop control statements in Python are `break`, `continue`, and `pass`.

### break <a id="break"></a>

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


### continue <a id="continue"></a>

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


### pass <a id="pass"></a>

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


## 4. Functions <a id="functions"></a>

_Functions_ are a way to organize your code into reusable blocks of code. Functions allow you to break your code into smaller, more manageable pieces, and can be used to perform a specific task or calculation. Functions can take parameters as input, and can return a value as output.

- Functions are defined using the `def` keyword, followed by the name of the function, a set of parentheses, and a colon.
- The body of the function is indented, and contains the code that the function will execute when it is called.
- Functions can take parameters as input, and can return a value as output.
- Functions can be called by using the name of the function followed by a set of parentheses, and can be used to create complex programs by combining multiple functions together.


```python
# Define the function
def add_numbers(a, b):
    return a + b


# Call the function
result = add_numbers(5, 3)
print(result)  # 8
```

    8


### *args and **kwargs <a id="args-kwargs"></a>

In Python, `*args` and `**kwargs` are used to pass a variable number of arguments to a function.

- `*args` is used to pass a non-keyworded, variable-length argument list. The syntax is to use the asterisk (`*`) before the parameter name. The function receives the arguments as a tuple.
- `**kwargs` allows you to pass keyworded, variable-length arguments. The double asterisk (`**`) is used before the parameter name, and the function receives the arguments as a dictionary.


```python
# Using *args to capture variable number of arguments
def print_args(*args):
    for arg in args:
        print(arg)


print_args("Hello", "world", "Python", 3.7)

print("------")


# Using **kwargs to capture variable number of keyword arguments
def print_kwargs(**kwargs):
    for key, value in kwargs.items():
        print(f"{key}: {value}")


print_kwargs(name="John", age=30, language="Python")
```

    Hello
    world
    Python
    3.7
    ------
    name: John
    age: 30
    language: Python


### Closures <a id="closures"></a>

_Closures_ in Python refer to a programming concept where a function is dynamically generated by another function, and the inner function has access to the variables that were in the local scope of the outer function when the inner function was created. This allows the inner function to remember and access those variables even after the outer function has finished executing, effectively providing a way to keep some form of state.

- Closures are used to create functions that have access to variables from the local scope of the outer function, even after the outer function has finished executing.
- Closures are created by defining a function inside another function, and returning the inner function from the outer function.
- Closures are useful for creating functions that have access to variables from the local scope of the outer function, and can be used to create functions that have some form of state.


```python
def outer_function(msg):
    # This is the outer enclosing function

    def inner_function():
        # This is the inner function that forms a closure
        # It 'remembers' the value of msg from the enclosing scope
        print(msg)

    return inner_function  # Return the inner function


# Create a closure
my_closure = outer_function("Hello, world!")

# Call the closure
my_closure()
```

    Hello, world!


## 5. Itertools <a id="itertools"></a>

The `itertools` module in Python provides a collection of tools for handling iterators. An iterator is an object that represents a stream of data. The `itertools` module provides a collection of tools for working with iterators, including functions for creating, combining, and iterating over iterators.

### Infinite iterators <a id="infinite-iterators"></a>

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

### Finite iterators <a id="finite-iterators"></a>

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


### Combinatorics <a id="combinatorics"></a>

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


## 6. enumerate() <a id="enumerate"></a>

The `enumerate()` function is used to add a counter to an iterable object. The `enumerate()` function returns an enumerate object that contains tuples of the index and item in the iterable object.

The `enumerate()` function can be used to iterate over the index and item of an iterable object at the same time. This can be useful when you need to keep track of the index of an item in a sequence, or when you need to iterate over the index and item of an iterable object at the same time.


```python
fruits = ["apple", "banana", "cherry"]

for i, fruit in enumerate(fruits):
    print(i, fruit)
```

    0 apple
    1 banana
    2 cherry


## 7. zip() <a id="zip"></a>

`zip()` is a built-in function that takes two or more iterables as arguments and returns an iterator that generates tuples containing the corresponding elements from each iterable. The resulting iterator stops when the shortest input iterable is exhausted.

The `zip()` function can take any number of iterables as arguments, and returns an iterator that generates tuples containing the corresponding elements from each iterable. If the input iterables are of different lengths, the resulting iterator stops when the shortest input iterable is exhausted.

The `zip()` function is useful when you need to combine two or more iterables into a single iterable that contains the corresponding elements from each input iterable. It can be especially useful when working with large datasets or when you need to perform complex operations on sequences of data.


```python
list1 = ["a", "b", "c"]
list2 = [1, 2, 3]

print("zip:", list(zip(list1, list2)))
```

    zip: [('a', 1), ('b', 2), ('c', 3)]


## 8. Recursion <a id="recursion"></a>

_Recursion_ is a programming technique where a function calls itself to solve a problem. Recursion is a powerful tool that can be used to solve complex problems by breaking them down into smaller, more manageable subproblems. Recursion can be especially useful when working with data structures such as trees and graphs.

Key components of a recursive function include:
- **Base Case**: A condition that stops the recursion. Without a base case, a recursive function would continue to call itself indefinitely, leading to a stack overflow error.
- **Recursive Case**: The part of the function where it calls itself but with a subset of the original problem.


```python
def factorial(n):
    # Base case: if n is 0, return 1
    if n == 0:
        return 1
    # Recursive case: n! = n * (n-1)!
    else:
        return n * factorial(n - 1)


# Example usage
print(factorial(5))  # Output: 120
```

    120


### Recursion vs Iteration <a id="recursion-vs-iteration"></a>

- **Recursion** is often preferred for problems that naturally fit recursive patterns, such as traversing trees, solving mathematical puzzles (e.g., Fibonacci sequence), or when the problem is easier to solve by dividing it into smaller problems of the same type.
- **Iteration** is preferred for simple repetitive tasks that do not require backtracking or when you want to avoid the overhead of multiple function calls. Iterative solutions are usually more efficient in terms of execution time and memory usage because they don't incur the overhead of multiple function calls and stack usage.


```python
# Recursive approach
def factorial_recursive(n):
    if n == 0:
        return 1
    else:
        return n * factorial_recursive(n - 1)


# Iterative approach
def factorial_iterative(n):
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result


# Example
print(factorial_recursive(5))  # Output: 120
print(factorial_iterative(5))  # Output: 120
```

    120
    120


### Tail Recursion <a id="tail-recursion"></a>

_Tail recursion_ is a special form of recursion where the recursive call is the last operation in the function. In tail-recursive functions, the result of the current recursive call is passed directly to the next recursive call, without any additional computation. This allows the compiler to optimize the function by reusing the current stack frame for the next recursive call, which can reduce the memory overhead of the recursion.

However, it's important to note that while tail recursion is a powerful concept, **Python does not officially support tail call optimization**. This means that even if you write a function in a tail-recursive style in Python, it will not benefit from the potential stack optimization, and deep recursion can still lead to a stack overflow error.


```python
def factorial(n, accumulator=1):
    if n == 0:
        return accumulator
    else:
        return factorial(n - 1, n * accumulator)


print(factorial(5))  # Output: 120
```

    120


## 9. Context Managers <a id="context-managers"></a>

A _Context manager_ in Python is an object designed to set up a resource for a portion of code and then clean up that resource after the code has run. The most common use case is with file handling where you need to open a file, perform operations, and then close it. Context managers make this process cleaner and more readable.

The primary mechanism for using context managers is the `with` statement.

### enter/exit <a id="enter-exit"></a>

The `with` statement is used to create a context manager. The `with` statement takes an expression that returns a context manager, and a block of code to execute. The context manager provides two methods, `__enter__` and `__exit__`, that are called when the `with` statement is entered and exited, respectively.

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
file = open("../examples/sample.txt", "r")
content = file.read()
print("without:", content)
file.close()

# With context manager
with open("../examples/sample copy.txt", "r") as file:
    content = file.read()
    print("with:", content)
```

    without: Hello again, world!
    with: Hello, copy World!


With this context manager, you can ensure that database transactions are either committed if everything goes well or rolled back if an exception occurs. This is a common pattern for managing resources that need to be cleaned up after use.


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

### contextlib <a id="contextlib"></a>

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

filenames = ["../examples/sample.txt", "../examples/sample copy.txt"]
with ExitStack() as stack:
    files = [stack.enter_context(open(fname)) for fname in filenames]
    # All files will be properly closed at the end of the with block
```
