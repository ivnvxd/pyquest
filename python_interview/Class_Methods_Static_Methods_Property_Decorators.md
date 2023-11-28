### Object-Oriented Programming: Class Methods, Static Methods, Property Decorators

#### Class Methods

Class methods are methods that are bound to the class rather than its object. They have access to the class's state as they take a class parameter that points to the class and not the object instance. They can modify a class state that would apply across all the instances of the class.

##### Defining a Class Method

To define a class method, you use the `@classmethod` decorator. The first parameter of a class method is usually named `cls`, which refers to the class.

```python
class MyClass:
    @classmethod
    def my_class_method(cls, args...):
        # code
```

##### Example of a Class Method

```python
class Employee:
    num_of_employees = 0

    @classmethod
    def add_employee(cls):
        cls.num_of_employees += 1

# Usage
Employee.add_employee()
print(Employee.num_of_employees)  # Output: 1
```

#### Static Methods

Static methods are methods that belong to a class but do not access or modify the class's state. They are utility-type methods that take neither a class (`cls`) nor an instance (`self`) parameter.

##### Defining a Static Method

Static methods are defined using the `@staticmethod` decorator.

```python
class MyClass:
    @staticmethod
    def my_static_method(args...):
        # code
```

##### Example of a Static Method

```python
class Calculator:
    @staticmethod
    def add(a, b):
        return a + b

# Usage
result = Calculator.add(5, 3)
print(result)  # Output: 8
```

#### Property Decorators

Property decorators allow you to define methods in a class that you can access like attributes. This adds a layer of encapsulation, enabling private attribute access and computation.

##### Defining Property Decorators

A property in Python is created using the `@property` decorator.

```python
class MyClass:
    @property
    def my_property(self):
        # code to return the property value
```

You can also define setter and deleter for a property using `@property_name.setter` and `@property_name.deleter`.

##### Example of Property Decorators

```python
class Person:
    def __init__(self, name):
        self._name = name

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, value):
        self._name = value

# Usage
p = Person("Alice")
print(p.name)  # Alice
p.name = "Bob"
print(p.name)  # Bob
```

#### Conclusion

- **Class Methods**: Useful for methods that need to access or modify the class state.
- **Static Methods**: Best for utility functions that don't need access to class or instance data.
- **Property Decorators**: Provide a way of encapsulating data, allowing computed attributes, and implementing getters and setters in a Pythonic way.

Understanding these methods and when to use them is crucial in object-oriented programming in Python, as they enhance the functionality and manageability of classes.