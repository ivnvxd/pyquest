### Object-Oriented Programming: Inheritance, Polymorphism, Encapsulation

#### Inheritance

Inheritance allows a class (known as a child class) to inherit attributes and methods from another class (known as a parent class). It's a way to form new classes using classes that have already been defined.

##### Features

1. **Reusability**: Promotes code reuse by inheriting existing code into new classes.
2. **Extensibility**: Makes it easy to add or modify behaviors of existing classes without modifying them.
3. **Hierarchical structure**: Forms a hierarchy of classes through derived and base classes.

##### Example

```python
class Animal:  # Base class
    def __init__(self, name):
        self.name = name

    def speak(self):
        raise NotImplementedError("Subclass must implement abstract method")

class Dog(Animal):  # Derived class
    def speak(self):
        return f"{self.name} says Woof!"

class Cat(Animal):  # Derived class
    def speak(self):
        return f"{self.name} says Meow!"

# Using the classes
dog = Dog("Buddy")
cat = Cat("Whiskers")
print(dog.speak())  # Outputs: Buddy says Woof!
print(cat.speak())  # Outputs: Whiskers says Meow!
```

#### Polymorphism

Polymorphism in OOP refers to the way in which different object classes can share the same method name, but those methods can act differently based on which object calls them.

##### Features

1. **Flexibility**: Allows different classes to be used interchangeably, even though they might implement the same methods differently.
2. **Simplifies Code**: Enables the same interface for different underlying forms of data.

##### Example

Using the previous `Animal` class example, polymorphism allows us to use a generic `speak` method name, but it behaves differently depending on whether a `Dog` or `Cat` object calls it.

```python
for animal in [Dog("Buddy"), Cat("Whiskers")]:
    print(animal.speak())  # Different output based on the object
```

#### Encapsulation

Encapsulation is the bundling of data with the methods that operate on that data. It restricts direct access to some of an object's components, which is a way of preventing accidental interference and misuse of the methods and data.

##### Features

1. **Data Hiding**: Encapsulation allows hiding the internal state of an object and only exposes a controlled interface.
2. **Controlled Access**: Provides control over the data by providing methods to manipulate that data in a controlled manner.

##### Example

```python
class Account:
    def __init__(self, initial_balance):
        self._balance = initial_balance  # Private attribute

    def deposit(self, amount):
        if amount > 0:
            self._balance += amount

    def get_balance(self):
        return self._balance

account = Account(1000)
account.deposit(500)
print(account.get_balance())  # Outputs: 1500
```

In this example, the `_balance` attribute is encapsulated within the `Account` class. The balance can only be accessed or modified through the `deposit` method and `get_balance` method.

#### Conclusion

Inheritance, polymorphism, and encapsulation are key concepts in object-oriented programming. Together, they provide a framework for creating complex and flexible software systems. Inheritance and polymorphism allow for the extension and adaptable use of existing code, while encapsulation ensures data integrity and controlled access.