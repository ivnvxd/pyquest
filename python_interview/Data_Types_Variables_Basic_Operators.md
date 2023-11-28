### Core Python Concepts: Data Types, Variables, Basic Operators

#### Data Types

In Python, data types are the classification of data items. They represent the kinds of values that can be stored and manipulated within a Python program. Major data types in Python include:

1. **Integers (`int`)**: Whole numbers, positive or negative, without a decimal point. Example: `5`, `-3`.
2. **Floating Point Numbers (`float`)**: Numbers with a decimal point or in exponential (E) form. Example: `3.14`, `2e2` which is `2 * 10^2`.
3. **Strings (`str`)**: A sequence of Unicode characters, used to store text. Example: `"Hello"`, `'Python'`.
4. **Booleans (`bool`)**: Represents `True` or `False` values, often the result of comparisons or logical operations.
5. **Lists**: Ordered, mutable collections of items (which can be of mixed types). Example: `[1, 'a', 3.14]`.
6. **Tuples**: Ordered, immutable collections of items. Example: `(1, 'a', 3.14)`.
7. **Sets**: Unordered collections of unique items. Example: `{1, 2, 3}`.
8. **Dictionaries (`dict`)**: Unordered collections of key-value pairs. Example: `{'name': 'Alice', 'age': 25}`.

#### Variables

Variables in Python are used to store data that can be used and manipulated later in the program. They are created by assigning a value to a variable name.

```python
# Variable Assignments
x = 10          # An integer assignment
y = 3.14        # A floating-point assignment
name = "Alice"  # A string assignment
is_valid = True # A boolean assignment
```

Python is dynamically typed, meaning you don't need to declare the type of a variable when you create one.

#### Basic Operators

Operators are special symbols in Python that carry out arithmetic or logical computation. The value that an operator operates on is called the operand.

1. **Arithmetic Operators**:
   - Addition (`+`): `3 + 2` equals `5`.
   - Subtraction (`-`): `3 - 2` equals `1`.
   - Multiplication (`*`): `3 * 2` equals `6`.
   - Division (`/`): `3 / 2` equals `1.5`.
   - Floor Division (`//`): `3 // 2` equals `1`. (Rounds down the result)
   - Modulus (`%`): `3 % 2` equals `1`. (Remainder of division)
   - Exponentiation (`**`): `3 ** 2` equals `9`. (3 squared)

2. **Comparison Operators** (return `bool`):
   - Equal to (`==`), Not equal to (`!=`)
   - Greater than (`>`), Less than (`<`)
   - Greater than or equal to (`>=`), Less than or equal to (`<=`)

3. **Logical Operators**:
   - `and`: Returns `True` if both operands are true.
   - `or`: Returns `True` if any one of the operands is true.
   - `not`: Returns `True` if operand is false.

4. **Assignment Operators**:
   - `=`: Assigns value from right side operands to left side operand.
   - `+=`, `-=`, `*=`, `/=`, etc.: Perform the operation and assign the result. For example, `x += 1` is equivalent to `x = x + 1`.

Understanding these core concepts is fundamental to programming in Python, as they form the basis of more complex operations and structures in the language.