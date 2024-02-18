## Part VIII: Object-Oriented Programming <a id="8-oop"></a>

Object-oriented programming (OOP) is a programming paradigm that uses objects and classes. It is a way of structuring a program by bundling related properties and behaviors into individual objects. In this part, we will learn about the basics of OOP in Python.

### 1. OOP Fundamentals <a id="oop-fundamentals"></a>

#### Classes and Objects <a id="classes-and-objects"></a>

A *class* is a blueprint for creating objects. It defines a set of properties and methods that objects of the class will have. An *object* is an instance of a class. It is a concrete entity that has properties and methods defined by its class.

##### Creating Classes and Objects <a id="creating-classes-and-objects"></a>

In Python, we can create a class using the `class` keyword followed by the class name. The class body contains the properties and methods of the class. We can create an object of a class using the class name followed by parentheses.

Basic Class Structure:
```python
class MyClass:
    # Class attribute
    class_attribute = 'I am a class attribute'

    # Initializer / Instance attributes
    def __init__(self, value):
        self.instance_attribute = value  # Instance attribute

    # Method
    def my_method(self):
        return f'My method was called with instance_attribute={self.instance_attribute}'
```

Example of Creating an Object:
```python
# Creating an instance of MyClass
my_object = MyClass("Hello")
```

Key Concepts:
- **Classes** define the blueprint for objects, encapsulating data for the object and methods to manipulate that data.
- Objects** are instances of a class, each with its own unique state. They can interact with each other using methods.
- `self` is a reference to the current instance of the class, used to access variables and methods associated with the current object.
- **Attributes** store the state of an instance, while methods define the behavior.


```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        return f"Hello, my name is {self.name} and I am {self.age} years old."


# Creating a new Person object
person = Person("Andrey", 36)

# Using the object's methods and attributes
print(person.greet())  # Hello, my name is Andrey and I am 36 years old.
```

    Hello, my name is Andrey and I am 36 years old.


##### \_\_init\_\_, \_\_repr\_\_, and \_\_str\_\_ Methods <a id="init-repr-str-methods"></a>

- The `__init__` method is a special method that is called when an object is created. It is used to initialize the properties of the object. 
- The `__repr__` method is meant to return an unambiguous string representation of an object so that it can be recreated. The main goal of `__repr__` is to be unambiguous and, if possible, match the code necessary to recreate the object being represented.
- The `__str__` method is intended to return a string representation of an object that is readable and informative for end-users. It is called by the `str()` built-in function and by the `print` function.


```python
class MyClass:
    def __init__(self, value):
        self.value = value  # Assigning the value to the instance's attribute

    def __repr__(self):
        return f"MyClass({self.value})"

    def __str__(self):
        return f"Value of the object is {self.value}"


obj = MyClass(42)
print(obj)  # Value of the object is 42
print(repr(obj))  # MyClass(42)
```

    Value of the object is 42
    MyClass(42)


##### Instance Members <a id="instance-members"></a>

Instance members are attributes and methods associated with class instances. They are not shared among instances; each instance has its own copy of the instance attribute.

- **Instance Attributes**: Defined within methods (typically within `__init__`). They use `self` to denote that they are associated with a particular instance.
- **Instance Methods**: Functions defined inside a class that operate on an instance of the class. They take `self` as the first parameter to access and modify the instance's attributes.


```python
class MyClass:
    def __init__(self, value):
        self.instance_attribute = value  # Instance attribute

    def instance_method(self):
        return f"Value: {self.instance_attribute}"  # Instance method


obj = MyClass(42)
print(obj.instance_method())  # Value: 42
```

    Value: 42


##### Class Methods <a id="class-methods"></a>

Class methods are functions defined inside a class that have access to the class object through the first parameter, usually named `cls`. They can modify the class state that applies across all instances of the class. Class methods are defined using the @classmethod decorator.


```python
class Person:
    count = 0  # Class variable

    def __init__(self, name):
        self.name = name
        Person.count += 1

    @classmethod
    def get_count(cls):
        return cls.count  # Accessing class variable


# Creating instances of Person
person1 = Person("Alice")
person2 = Person("Bob")

# Class method can be called using the class name
print(Person.get_count())  # 2
```

    2


##### Static Methods <a id="static-methods"></a>

Static methods are functions defined inside a class that do not have access to `self` (the instance object) or `cls` (the class itself). They are utility functions that work independently of class instances. Static methods are defined using the `@staticmethod` decorator.


```python
class MathUtility:
    @staticmethod
    def add(x, y):
        return x + y

    @staticmethod
    def multiply(x, y):
        return x * y


# Static methods can be called using the class name
print(MathUtility.add(5, 3))  # 8
print(MathUtility.multiply(5, 3))  # 15
```

    8
    15


##### Property Decorator <a id="property-decorator"></a>

Property decorators allow you to define methods that can be accessed like attributes. This is useful for adding validation logic or encapsulation to class attributes.


```python
class MyClass:
    def __init__(self, value):
        self._value = value

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, new_value):
        if new_value > 0:
            self._value = new_value
        else:
            raise ValueError("Value must be greater than 0")


obj = MyClass(42)
print(obj.value)  # 42
```

    42


### 2. Core OOP Principles <a id="core-oop-principles"></a>

The core principles of Object-Oriented Programming (OOP) are encapsulation, inheritance, polymorphism, and abstraction. These principles help in designing software that is modular, reusable, and adaptable to change.

#### Encapsulation <a id="encapsulation"></a>

Encapsulation is a fundamental concept in object-oriented programming (OOP) that involves bundling the data (attributes) and methods (behaviors) that operate on the data into a single unit or class and restricting access to some of the object's components. This principle is one of the key mechanisms for achieving data hiding, a core aspect of OOP that enhances security and reduces complexity.

##### Private and Protected Attributes <a id="private-and-protected-attributes"></a>

Python does not have the strict access control mechanisms found in some other languages like Java or C++. However, encapsulation can still be effectively implemented through naming conventions and properties.

- **Private Attributes**: In Python, prefixing an attribute name with double underscores (`__`) makes it private. This means the attribute cannot be accessed directly from outside the class, although Python implements this by name mangling, which renames the attribute to `_ClassName__attributeName`.
- **Protected Attributes**: Attributes prefixed with a single underscore (`_`) are intended to be protected, meaning they should not be accessed outside the class and subclasses, although this is not enforced by Python and is more of a convention.
- **Properties**: Python's `@property` decorator can be used to create getter and setter methods for attributes, allowing for controlled access to private attributes.


```python
class Account:
    def __init__(self, owner, balance=0):
        self.owner = owner
        self.__balance = balance  # Private attribute

    def deposit(self, amount):
        if amount > 0:
            self.__balance += amount
            print("Deposit successful")

    def withdraw(self, amount):
        if 0 < amount <= self.__balance:
            self.__balance -= amount
            print("Withdrawal successful")
        else:
            print("Insufficient funds")

    def get_balance(self):
        return self.__balance


account = Account("John Doe", 1000)
account.deposit(500)
print(account.get_balance())  # 1500
account.withdraw(200)
print(account.get_balance())  # 1300

# Direct access is not allowed
# print(account.__balance)  # AttributeError: 'Account' object has no attribute '__balance'
```

    Deposit successful
    1500
    Withdrawal successful
    1300


#### Inheritance <a id="inheritance"></a>

Inheritance is a core concept in object-oriented programming (OOP) that allows a class to inherit attributes and methods from another class. This mechanism promotes code reuse and establishes a hierarchical relationship between classes, enabling the development of more complex software systems in a more manageable and scalable way.

Key Concepts:
- **Base Class (Parent Class)**: The class whose properties and methods are inherited by another class.
- **Derived Class (Child Class)**: The class that inherits properties and methods from another class.

##### Single and Multiple Inheritance <a id="single-and-multiple-inheritance"></a>

Types of Inheritance:
- **Single Inheritance**: A derived (child) class inherits from only one base (parent) class. This is the simplest form of inheritance.
- **Multiple Inheritance**: A derived class inherits from more than one base class. Python supports multiple inheritance, allowing a class to combine features from multiple base classes.
- **Multilevel Inheritance**: This involves a chain of inheritance where a class inherits from a base class, which in turn inherits from another base class.
- **Hierarchical Inheritance**: Multiple derived classes inherit from a single base class.
- **Hybrid Inheritance**: A combination of two or more types of inheritance.


```python
# Base class
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        raise NotImplementedError("Subclasses must implement abstract method")


# Derived class
class Dog(Animal):
    def speak(self):
        return f"{self.name} says Woof!"


class Cat(Animal):
    def speak(self):
        return f"{self.name} says Meow!"


dog = Dog("Buddy")
cat = Cat("Whiskers")

print(dog.speak())  # Buddy says Woof!
print(cat.speak())  # Whiskers says Meow!
```

    Buddy says Woof!
    Whiskers says Meow!


##### super() <a id="super"></a>

The `super()` function is used to call methods of a base class from a derived class. It returns a temporary object of the superclass that allows access to the methods of the base class.


```python
class Parent:
    def __init__(self, name):
        self.name = name


class Child(Parent):
    def __init__(self, name, age):
        super().__init__(name)  # Using super to call the Parent's __init__
        self.age = age


person = Child("Bob", 10)
print(person.name)  # Bob
```

    Bob


##### Method Resolution Order (MRO) <a id="method-resolution-order"></a>

Method Resolution Order (MRO) is the order in which base classes are searched for a method or attribute. It is important in multiple inheritance because it determines the order in which the base classes are traversed when searching for a method or attribute.

You can view the MRO of a class in Python using either the `__mro__` attribute or the `mro()` method on the class. This returns a tuple or list of the classes in the order they are searched.


```python
class A:
    def method(self):
        print("A method")


class B(A):
    def method(self):
        print("B method")


class C(A):
    def method(self):
        print("C method")


class D(B, C):
    pass


# Checking the Method Resolution Order for class D
print(
    D.mro()
)  # [<class '__main__.D'>, <class '__main__.B'>, <class '__main__.C'>, <class '__main__.A'>, <class 'object'>]
```

    [<class '__main__.D'>, <class '__main__.B'>, <class '__main__.C'>, <class '__main__.A'>, <class 'object'>]


#### Polymorphism <a id="polymorphism"></a>

Polymorphism allows objects of different classes to be treated as objects of a common superclass. It is derived from Greek words meaning "many forms," and it enables a single interface to represent different underlying forms (data types). Polymorphism promotes flexibility and scalability in code design by allowing the same operation to behave differently on different classes.

Python's built-in functions are polymorphic, as they can work with objects of different types. For example, the `len()` function can accept many different types of objects:
```python
print(len("hello"))  # String
print(len([1, 2, 3]))  # List
print(len({"name": "John", "age": 30}))  # Dictionary
```

##### Method Overriding <a id="method-overriding"></a>

When a method in a subclass has the same name, same parameters, or signature, and same return type (or subtype) as a method in the superclass, the method in the subclass is said to override the method in the superclass.


```python
class Animal:
    def speak(self):
        print("Some generic animal sound")


class Dog(Animal):
    def speak(self):
        print("Woof!")


class Cat(Animal):
    def speak(self):
        print("Meow!")


for animal in [Dog(), Cat(), Animal()]:
    animal.speak()
```

    Woof!
    Meow!
    Some generic animal sound


##### Operator Overloading <a id="operator-overloading"></a>

Operator overloading is a feature of object-oriented programming that allows operators to have different meanings based on their context, particularly with respect to the operands they work on. In Python, operator overloading is achieved by redefining certain special methods in a class, which Python automatically invokes when associated with the operator is used with objects of that class. This enables objects of user-defined classes to interact with standard operators such as addition (`+`), subtraction (`-`), multiplication (`*`), and more.

Commonly Overloaded Operators and Their Methods:
- **Addition (`+`)**: `__add__(self, other)`
- **Subtraction (`-`)**: `__sub__(self, other)`
- **Multiplication (`*`)**: `__mul__(self, other)`
- **Division (`/`)**: `__truediv__(self, other)`
- **Floor Division (`//`)**: `__floordiv__(self, other)`
- **Modulus (`%`)**: `__mod__(self, other)`
- **Power (`**`)**: `__pow__(self, other)`
- **Equality (`==`)**: `__eq__(self, other)`
- **Less than (`<`)**: `__lt__(self, other)`
- **Greater than (`>`)**: `__gt__(self, other)`, and so on.


```python
class Vector:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    # Overloading the + operator
    def __add__(self, other):
        return Vector(self.x + other.x, self.y + other.y)

    # Overloading the * operator for scalar multiplication
    def __mul__(self, scalar):
        if isinstance(scalar, (float, int)):  # Ensure scalar is a number
            return Vector(self.x * scalar, self.y * scalar)
        raise ValueError("Scalar must be a number")

    def __repr__(self):
        return f"Vector({self.x}, {self.y})"


# Using the overloaded operators
v1 = Vector(2, 4)
v2 = Vector(5, -2)
print(v1 + v2)  # Vector addition
print(v1 * 3)  # Scalar multiplication
```

    Vector(7, 2)
    Vector(6, 12)


#### Abstraction <a id="abstraction"></a>

Abstraction is the process of hiding the complex implementation details and showing only the necessary features of an object. It is one of the key principles of object-oriented programming (OOP) and is closely related to encapsulation. Abstraction allows programmers to focus on the relevant aspects of an object and ignore the irrelevant details.

##### Abstract Base Classes (ABCs) <a id="abstract-base-classes"></a>

An abstract class is a class that cannot be instantiated on its own and is designed to be subclassed. It may contain one or more abstract methods, although it can also include concrete methods (methods with an implementation). The purpose of an abstract class is to provide a common interface for its subclasses.

In Python, abstract classes are created by inheriting from the `ABC` class (Abstract Base Class) from the `abc` module and marking methods as abstract using the `@abstractmethod` decorator.


```python
from abc import ABC, abstractmethod


class Shape(ABC):  # Abstract class
    @abstractmethod
    def area(self):
        pass  # No implementation here

    @abstractmethod
    def perimeter(self):
        pass  # No implementation here


class Rectangle(Shape):  # Concrete class
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):  # Implementing the abstract method
        return self.width * self.height

    def perimeter(self):  # Implementing the abstract method
        return 2 * (self.width + self.height)


# shape = Shape()  # TypeError: Can't instantiate abstract class Shape with abstract methods area, perimeter
rectangle = Rectangle(10, 20)
print(rectangle.area())  # 200
print(rectangle.perimeter())  # 60
```

    200
    60


### 3. Advanced OOP Features <a id="advanced-oop-features"></a>

#### Magic Methods <a id="magic-methods"></a>

Magic methods in Python, also known as dunder methods (from "double underscores"), are special methods that start and end with double underscores (e.g., `__init__`, `__str__`). These methods enable operator overloading, are invoked by Python's syntax, and allow classes to implement and interact with built-in behaviors and operations. Magic methods provide a powerful means of making your objects behave like built-in types, enabling them to integrate seamlessly with Python's language features.

**Common Magic Methods**:

Object Initialization and Destruction
- `__init__(self, [...])`: Called when an instance is created. Used for object initialization.
- `__del__(self)`: Called when an instance is about to be destroyed. Useful for cleanup actions.

String Representation
- `__str__(self)`: Called by the `str(object)` built-in function and by the `print` function to compute the "informal" or nicely printable string representation of an object.
- `__repr__(self)`: Called by the `repr()` built-in function and in many other contexts where a slightly more formal string representation is required. Ideally, it returns a string that could be used to recreate the object.

Arithmetic Operators
- `__add__(self, other)`: Implements addition (`+`).
- `__sub__(self, other)`: Implements subtraction (`-`).
- `__mul__(self, other)`: Implements multiplication (`*`).
- `__truediv__(self, other)`: Implements division (`/`).

Comparison Operators
- `__eq__(self, other)`: Defines behavior for the equality operator, `==`.
- `__ne__(self, other)`: Defines behavior for the inequality operator, `!=`.
- `__lt__(self, other)`: Defines behavior for the less than operator, `<`.
- `__gt__(self, other)`: Defines behavior for the greater than operator, `>`.

Container Methods
- `__len__(self)`: Called to implement the built-in function `len()`. Should return the length of the object, an integer `>= 0`.
- `__getitem__(self, key)`: Called to implement evaluation of `self[key]`. Allows access to elements using square brackets.
- `__setitem__(self, key, value)`: Implements assignment to `self[key]`.
- `__delitem__(self, key)`: Implements deletion of `self[key]`.

Callable Objects
- `__call__(self, [...])`: Allows an instance of a class to be called as a function.


```python
class ComplexNumber:
    def __init__(self, real, imag):
        self.real = real
        self.imag = imag

    def __repr__(self):
        return f"ComplexNumber({self.real}, {self.imag})"

    def __str__(self):
        return f"({self.real} + {self.imag}i)"

    def __add__(self, other):
        return ComplexNumber(self.real + other.real, self.imag + other.imag)

    def __eq__(self, other):
        return self.real == other.real and self.imag == other.imag


# Using the ComplexNumber class
a = ComplexNumber(2, 3)
b = ComplexNumber(3, 4)
print(a)  # Output: (2 + 3i)
print(repr(a))  # Output: ComplexNumber(2, 3)
print(a + b)  # Output: (5 + 7i)
print(a == b)  # Output: False
```

    (2 + 3i)
    ComplexNumber(2, 3)
    (5 + 7i)
    False


#### Duck Typing <a id="duck-typing"></a>

Duck typing is a concept related to dynamic typing, where an object's suitability for use is determined by the presence of certain methods and properties, rather than the actual type of the object. The name comes from the phrase "If it looks like a duck and quacks like a duck, then it probably is a duck," emphasizing behavior over explicit inheritance or interface implementation.


```python
class Duck:
    def quack(self):
        print("Quack, quack!")


class Person:
    def quack(self):
        print("I'm quacking like a duck!")


def make_it_quack(duck):
    duck.quack()


# Usage
duck = Duck()
person = Person()

make_it_quack(duck)  # Quack, quack!
make_it_quack(person)  # I'm quacking like a duck!
```

    Quack, quack!
    I'm quacking like a duck!


#### Protocols <a id="protocols"></a>

Protocols are a concept from static typing systems, but Python 3.8 introduced the notion of "typing protocols" to bring similar benefits to dynamic typing. A protocol specifies one or more methods that must be implemented, serving as an informal interface. An object is considered an instance of a protocol if it implements the specified methods. This is Python's version of structural typing, in contrast to nominal typing.

Protocols are defined in the `typing` module using the `Protocol` class. They allow for duck typing to be combined with static type checks, giving developers the flexibility of duck typing along with the safety of static typing.


```python
from typing import Protocol


class Quackable(Protocol):
    def quack(self) -> None:
        print("Quack, quack!")


def make_it_quack(duck: Quackable) -> None:
    duck.quack()


# Even without explicit inheritance, if an object implements the methods defined in a Protocol,
# it's considered as implementing the protocol.
make_it_quack(duck)  # Quack, quack!
```

    Quack, quack!


##### Iterable, Comparable, Hashable, Callable Protocols <a id="iterable-comparable-hashable-callable-protocols"></a>

**Iterable Protocol**

The iterable protocol requires an object to implement the `__iter__()` method, which should return an iterator. An iterator is an object that implements the `__next__()` method, which returns the next item in a sequence or raises a `StopIteration` exception when there are no more items. The iterable protocol allows objects to be used in loops (e.g., `for` loops).

```python
class Counter:
    def __init__(self, low, high):
        self.current = low
        self.high = high

    def __iter__(self):
        return self

    def __next__(self):
        if self.current > self.high:
            raise StopIteration
        else:
            self.current += 1
            return self.current - 1
```

**Comparable Protocol**

The comparable protocol involves implementing methods for comparison operations, such as `__eq__` (equality), `__lt__` (less than), `__le__` (less than or equal to), `__gt__` (greater than), `__ge__` (greater than or equal to), and `__ne__` (not equal). These methods enable objects to be compared using operators like `==`, `<`, `<=`, `>`, `>=`, and `!=`.

```python
class Student:
    def __init__(self, name, grade):
        self.name = name
        self.grade = grade

    def __eq__(self, other):
        return self.grade == other.grade
```

**Hashable Protocol**

The hashable protocol requires an object to implement the `__hash__()` method. This method should return an integer hash value that is constant for the lifetime of the object. Hashable objects can be used as keys in dictionaries and stored in sets. Objects that implement `__hash__` should also implement `__eq__` for consistency.

```python
class Product:
    def __init__(self, id, name):
        self.id = id
        self.name = name

    def __hash__(self):
        return hash((self.id, self.name))

    def __eq__(self, other):
        return (self.id, self.name) == (other.id, other.name)
```

**Callable Protocol**

The callable protocol requires an object to implement the `__call__()` method. This allows objects to be called like functions. Implementing this method makes a class instance behave like a function.

```python
class Adder:
    def __init__(self, n):
        self.n = n

    def __call__(self, x):
        return self.n + x
```

##### Context Manager Protocol <a id="context-manager-protocol"></a>

The context manager protocol in Python defines a method for managing resources with `with` statements, ensuring that resources are properly acquired and released, typically used for file operations, network connections, and locking mechanisms. This protocol involves implementing two magic methods: `__enter__()` and `__exit__()`.


```python
class FileOpener:
    def __init__(self, filename, mode):
        self.filename = filename
        self.mode = mode
        self.file = None

    def __enter__(self):
        self.file = open(self.filename, self.mode)
        return self.file

    def __exit__(self, exc_type, exc_val, exc_tb):
        if self.file:
            self.file.close()
        # Return False or None to propagate exceptions, if any


# Using the FileOpener class
with FileOpener("../examples/sample.txt", "w") as file:
    file.write("Hello, world!")
# The file is automatically closed after the with block
```

For simpler use cases, Python's `contextlib` module provides utilities like the `@contextmanager` decorator, which allows you to write a context manager using generator syntax, making it easier and more readable.


```python
from contextlib import contextmanager


@contextmanager
def open_file(name, mode):
    f = open(name, mode)
    try:
        yield f
    finally:
        f.close()


# Usage
with open_file("../examples/sample.txt", "w") as f:
    f.write("Hello again, world!")
```

### 4. Metaprogramming <a id="metaprogramming"></a>

Metaprogramming is a programming technique in which a program treats other programs as their data. It means that a program can be designed to read, generate, analyze, or transform other programs, and even modify itself while running. Metaprogramming is a powerful concept that allows you to write code that writes code, enabling you to automate repetitive tasks and build more flexible and reusable software.

#### Metaclasses <a id="metaclasses"></a>

A metaclass is a class whose instances are classes. In other words, a metaclass is a class of a class.

In Python, the default metaclass is `type`. The `type` is itself a class, and it is its own metaclass, demonstrating the circular nature of Python's metaclass mechanism.

You can create a custom metaclass by subclassing `type` and overriding its `__new__` and/or `__init__` methods:
- `__new__`: This method is called before a class is created. It is responsible for returning a new class instance. It's where you can alter the class before it's created.
- `__init__`: This method is called after the class is created. It's used to initialize the newly created class object. Modifications to the class can also be made here.


```python
class Meta(type):
    def __new__(cls, name, bases, dct):
        # Add a class attribute 'greeting' to the class
        dct["greeting"] = "Hello"
        return super().__new__(cls, name, bases, dct)


# Using the metaclass to create a class
class MyClass(metaclass=Meta):
    pass


print(MyClass.greeting)  # Output: Hello
```

    Hello


#### Decorators <a id="oop-decorators"></a>

Decorators are a significant feature in Python that allows for the modification of functions or methods using other functions. They provide a transparent way of extending and modifying the behavior of callable objects (functions, methods, and classes) without permanently modifying the callable itself.


```python
def debug(func):
    """A simple decorator to print function information"""

    def wrapper(*args, **kwargs):
        print(f"Function name: {func.__name__}")
        print(f"Arguments: {args}")
        result = func(*args, **kwargs)
        print(f"Result: {result}")
        return result

    return wrapper


# Using the decorator
@debug
def add(x, y):
    return x + y


add(5, 3)
```

    Function name: add
    Arguments: (5, 3)
    Result: 8





    8



### 5. Design Patterns in OOP <a id="design-patterns-in-oop"></a>

Design patterns in Object-Oriented Programming (OOP) are reusable solutions to common software design problems. They represent best practices, developed and refined over time by experienced software developers. Design patterns provide a standard terminology and are specific to particular scenarios, making it easier to communicate, understand, and solve complex design challenges.

#### Creational Patterns <a id="creational-patterns"></a>

Creational patterns are design patterns that deal with object creation mechanisms, trying to create objects in a manner suitable to the situation. The aim of these patterns is to abstract the instantiation process, making systems more independent of the specifics of how objects are created, composed, and represented.

##### Singleton <a id="singleton-pattern"></a>

The Singleton pattern ensures a class has only one instance and provides a global point of access to that instance. It's often used for managing connections to a database or settings configurations throughout an application. The Singleton ensures that multiple requests refer to the same shared resource.


```python
class Singleton:
    _instance = None

    @staticmethod
    def getInstance():
        if Singleton._instance == None:
            Singleton._instance = Singleton()
        return Singleton._instance


# Usage
s = Singleton.getInstance()
print(s)  # <__main__.Singleton object at 0x7f8b5a3c5e50>
```

    <__main__.Singleton object at 0x107c9cb50>


##### Factory Method <a id="factory-method-pattern"></a>

The Factory Method pattern defines an interface for creating an object but allows subclasses to alter the type of objects that will be created. This pattern is particularly useful when a class cannot anticipate the class of objects it needs to create.


```python
class Button:
    def click(self):
        pass


class HTMLButton(Button):
    def click(self):
        return "HTML Button clicked"


class WindowsButton(Button):
    def click(self):
        return "Windows Button clicked"


class ButtonFactory:
    @staticmethod
    def createButton(type):
        if type == "HTML":
            return HTMLButton()
        elif type == "Windows":
            return WindowsButton()


# Using the factory
button = ButtonFactory.createButton("HTML")
print(button.click())  # HTML Button clicked
```

    HTML Button clicked


##### Abstract Factory <a id="abstract-factory-pattern"></a>

The Abstract Factory pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes. This pattern is ideal when there is a complex dependency between the creation of various objects.


```python
class GUIFactory:
    def createButton(self):
        pass

    def createCheckbox(self):
        pass


class WinFactory(GUIFactory):
    def createButton(self):
        return WindowsButton()

    def createCheckbox(self):
        return WindowsCheckbox()


class MacFactory(GUIFactory):
    def createButton(self):
        return MacButton()

    def createCheckbox(self):
        return MacCheckbox()


# Using the factory
winFactory = WinFactory()
winButton = winFactory.createButton()
winButton.click()
```




    'Windows Button clicked'



##### Builder <a id="builder-pattern"></a>

The Builder pattern allows for the construction of complex objects step by step. It's particularly useful when an object must be created in many different ways, or when the construction process must be separated from the representation.


```python
class Car:
    def __init__(self):
        self.features = []

    def addFeature(self, feature):
        self.features.append(feature)


class CarBuilder:
    def __init__(self):
        self.car = Car()

    def addWheel(self):
        self.car.addFeature("Wheel")
        return self

    def addEngine(self):
        self.car.addFeature("Engine")
        return self

    def build(self):
        return self.car


# Using the builder
builder = CarBuilder()
car = builder.addWheel().addEngine().build()
print(car.features)  # ['Wheel', 'Engine']
```

    ['Wheel', 'Engine']


##### Prototype <a id="prototype-pattern"></a>

The Prototype pattern is used when creating an instance of a class is more expensive or complex than copying an existing instance. It involves creating new objects by copying an existing object, known as the prototype.


```python
import copy


class Prototype:
    def __init__(self):
        self._objects = {}

    def registerObject(self, name, obj):
        self._objects[name] = obj

    def unregisterObject(self, name):
        del self._objects[name]

    def clone(self, name, **attrs):
        obj = copy.deepcopy(self._objects.get(name))
        obj.__dict__.update(attrs)
        return obj


# Usage
class Car:
    def __init__(self):
        self.make = "Ford"
        self.model = "Mustang"
        self.year = 1964

    def __str__(self):
        return f"{self.make} {self.model} ({self.year})"


car = Car()
prototype = Prototype()
prototype.registerObject("car", car)
print(prototype.clone("car"))  # Ford Mustang (1964)
```

    Ford Mustang (1964)


#### Structural Patterns <a id="structural-patterns"></a>

Structural patterns are design patterns that ease the design by identifying a simple way to realize relationships between entities. They focus on how classes and objects are composed to form larger structures.

##### Adapter (Wrapper) <a id="adapter-pattern"></a>

The Adapter pattern allows objects with incompatible interfaces to work together. It acts as a bridge between two incompatible interfaces by wrapping the interface of one class into another interface clients expect. Adapter lets classes work together that couldn't otherwise because of incompatible interfaces.

- **Class Adapter**: Uses multiple inheritance to adapt one interface to another.
- **Object Adapter**: Relies on object composition.


```python
# Object Adapter Example
class Target:
    """Desired interface"""

    def request(self):
        return "Target-specific request"


class Adaptee:
    """Incompatible interface"""

    def specific_request(self):
        return ".eetpadA eht fo roivaheb laicepS"


class Adapter(Target, Adaptee):
    """Make Adaptee's interface compatible with Target's"""

    def request(self):
        return f"Adapter: (TRANSLATED) {self.specific_request()[::-1]}"


# Example usage
target = Adapter()
print(target.request())
```

    Adapter: (TRANSLATED) Special behavior of the Adaptee.


##### Bridge <a id="bridge-pattern"></a>

The Bridge pattern decouples an abstraction from its implementation, allowing the two to vary independently. This pattern involves an interface which acts as a bridge between the abstraction class and implementor classes. It helps in bringing flexibility in the application by allowing independent changes in the code.


```python
class ImplementationInterface:
    def method(self):
        pass


class ConcreteImplementationA(ImplementationInterface):
    def method(self):
        return "ConcreteImplementationA method"


class ConcreteImplementationB(ImplementationInterface):
    def method(self):
        return "ConcreteImplementationB method"


class Abstraction:
    def __init__(self, implementation):
        self.implementation = implementation

    def operation(self):
        return f"Abstraction: Base operation with:\n{self.implementation.method()}"


# Usage
implementation = ConcreteImplementationA()
abstraction = Abstraction(implementation)
print(abstraction.operation())
```

    Abstraction: Base operation with:
    ConcreteImplementationA method


##### Composite <a id="composite-pattern"></a>

The Composite pattern composes objects into tree structures to represent part-whole hierarchies. It allows clients to treat individual objects and compositions of objects uniformly. This pattern is particularly useful for hierarchical structures where you want to treat objects and compositions in the same way.


```python
class Component:
    def operation(self):
        pass


class Leaf(Component):
    def operation(self):
        return "Leaf"


class Composite(Component):
    def __init__(self):
        self._children = []

    def add(self, component):
        self._children.append(component)

    def operation(self):
        results = []
        for child in self._children:
            results.append(child.operation())
        return f"Branch({'+'.join(results)})"


# Using the composite pattern
tree = Composite()
left = Composite()
left.add(Leaf())
left.add(Leaf())
right = Leaf()
tree.add(left)
tree.add(right)
print(tree.operation())
```

    Branch(Branch(Leaf+Leaf)+Leaf)


##### Decorator <a id="decorator-pattern"></a>

The Decorator pattern allows behavior to be added to an individual object, either statically or dynamically, without affecting the behavior of other objects from the same class. It involves a set of decorator classes that are used to wrap concrete components.


```python
class Component:
    def operation(self):
        pass


class ConcreteComponent(Component):
    def operation(self):
        return "ConcreteComponent"


class Decorator(Component):
    def __init__(self, component):
        self._component = component

    def operation(self):
        return self._component.operation()


class ConcreteDecoratorA(Decorator):
    def operation(self):
        return f"ConcreteDecoratorA({self._component.operation()})"


# Usage
simple = ConcreteComponent()
decorator1 = ConcreteDecoratorA(simple)
print(decorator1.operation())
```

    ConcreteDecoratorA(ConcreteComponent)


##### Facade <a id="facade-pattern"></a>

The Facade pattern provides a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use. It is often used to simplify a complex subsystem by providing a single entry point.


```python
class Subsystem1:
    def operation1(self):
        return "Subsystem1: Ready!\n"

    def operationN(self):
        return "Subsystem1: Go!\n"


class Subsystem2:
    def operation1(self):
        return "Subsystem2: Get ready!\n"

    def operationZ(self):
        return "Subsystem2: Fire!\n"


class Facade:
    def __init__(self, subsystem1, subsystem2):
        self._subsystem1 = subsystem1 or Subsystem1()
        self._subsystem2 = subsystem2 or Subsystem2()

    def operation(self):
        return (
            "Facade initializes subsystems:\n"
            + self._subsystem1.operation1()
            + self._subsystem2.operation1()
        )


# Usage
facade = Facade(None, None)
print(facade.operation())
```

    Facade initializes subsystems:
    Subsystem1: Ready!
    Subsystem2: Get ready!
    


#### Behavioral Patterns <a id="behavioral-patterns"></a>

Behavioral design patterns are a category of design patterns that concern themselves with algorithms and the assignment of responsibilities between objects. They describe not just patterns of objects or classes but also the patterns of communication between them.

##### Observer <a id="observer-pattern"></a>

The Observer pattern defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically. It's widely used in implementing distributed event handling systems.


```python
class Subject:
    def __init__(self):
        self._observers = []

    def attach(self, observer):
        self._observers.append(observer)

    def detach(self, observer):
        self._observers.remove(observer)

    def notify(self):
        for observer in self._observers:
            observer.update(self)


class ConcreteSubject(Subject):
    _state = None

    @property
    def state(self):
        return self._state

    @state.setter
    def state(self, value):
        self._state = value
        self.notify()


class Observer:
    def update(self, subject):
        pass


class ConcreteObserver(Observer):
    def update(self, subject):
        print(f"Observer: Reacted to the event. State is now {subject.state}")


# Usage
subject = ConcreteSubject()
observer = ConcreteObserver()
subject.attach(observer)
subject.state = 123
```

    Observer: Reacted to the event. State is now 123


##### Strategy <a id="strategy-pattern"></a>

The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it. It's particularly useful when you have a family of algorithms and want to choose one at runtime.


```python
class Strategy:
    def execute(self, data):
        pass


class ConcreteStrategyA(Strategy):
    def execute(self, data):
        return sum(data)


class ConcreteStrategyB(Strategy):
    def execute(self, data):
        return max(data)


class Context:
    def __init__(self, strategy):
        self._strategy = strategy

    def set_strategy(self, strategy):
        self._strategy = strategy

    def execute_strategy(self, data):
        return self._strategy.execute(data)


# Usage
context = Context(ConcreteStrategyA())
print(context.execute_strategy([1, 2, 3]))  # 6
context.set_strategy(ConcreteStrategyB())
print(context.execute_strategy([1, 2, 3]))  # 3
```

    6
    3


##### Command <a id="command-pattern"></a>

The Command pattern turns a request into a stand-alone object that contains all information about the request. This transformation allows you to parameterize methods with different requests, delay or queue a request's execution, and support undoable operations.


```python
class Command:
    def execute(self):
        pass


class ConcreteCommand(Command):
    def __init__(self, receiver):
        self._receiver = receiver

    def execute(self):
        self._receiver.action()


class Receiver:
    def action(self):
        print("Receiver: Perform an action")


class Invoker:
    _command = None

    def set_command(self, command):
        self._command = command

    def execute_command(self):
        self._command.execute()


# Usage
receiver = Receiver()
command = ConcreteCommand(receiver)
invoker = Invoker()
invoker.set_command(command)
invoker.execute_command()
```

    Receiver: Perform an action


##### State <a id="state-pattern"></a>

The State pattern allows an object to alter its behavior when its internal state changes. The object will appear to change its class.


```python
class State:
    def handle(self, context):
        pass


class ConcreteStateA(State):
    def handle(self, context):
        print("State A handling")
        context.state = ConcreteStateB()


class ConcreteStateB(State):
    def handle(self, context):
        print("State B handling")
        context.state = ConcreteStateA()


class Context:
    _state = None

    def __init__(self, state):
        self.transition_to(state)

    def transition_to(self, state):
        self._state = state

    def request(self):
        self._state.handle(self)


# Usage
context1 = Context(ConcreteStateA())
context1.request()
context2 = Context(ConcreteStateB())
context2.request()
```

    State A handling
    State B handling


##### Chain of Responsibility <a id="chain-of-responsibility-pattern"></a>

The Chain of Responsibility pattern lets you pass requests along a chain of handlers. Upon receiving a request, each handler decides either to process the request or to pass it to the next handler in the chain.


```python
class Handler:
    _next_handler = None

    def set_next(self, handler):
        self._next_handler = handler
        return handler

    def handle(self, request):
        if self._next_handler:
            return self._next_handler.handle(request)
        return None


class ConcreteHandler1(Handler):
    def handle(self, request):
        if request == "R1":
            return f"Handler 1 dealing with {request}"
        else:
            return super().handle(request)


class ConcreteHandler2(Handler):
    def handle(self, request):
        if request == "R2":
            return f"Handler 2 dealing with {request}"
        else:
            return super().handle(request)


# Using the chain of responsibility
handler1 = ConcreteHandler1()
handler2 = ConcreteHandler2()
handler1.set_next(handler2)
print(handler1.handle("R1"))  # Handler 1 dealing with R1
print(handler1.handle("R2"))  # Handler 2 dealing with R2
print(handler1.handle("R3"))  # None
```

    Handler 1 dealing with R1
    Handler 2 dealing with R2
    None

