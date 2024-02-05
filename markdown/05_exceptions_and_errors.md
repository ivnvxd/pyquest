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

    Attempted to divide by zero.
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

