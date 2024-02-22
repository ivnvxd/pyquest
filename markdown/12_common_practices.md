# Part XII: Common Practices <a id="12-common-practices"></a>

1. [Logging](#logging)
    - [Logging Levels](#logging-levels)
    - [Logging Handlers](#logging-handlers)
    - [Logging Formatters](#logging-formatters)
2. [Code Style](#code-style)
    - [PEP 8](#pep-8)
    - [Docstrings](#docstrings)
    - [Type Annotations](#type-annotations)
    - [Linting](#linting)
    - [Code Formatters](#code-formatters)
3. [Environment Management](#environment-management)
    - [Virtual Environments](#virtual-environments)
    - [Dependency Management](#dependency-management)
    - [Environment Variables](#environment-variables)
        - [dotenv](#dotenv)
4. [Profiling](#code-profiling)
    - [Time Profiling (Performance Profiling)](#performance-profiling)
    - [Memory Profiling](#memory-profiling)
    - [Profiling Tools](#profiling-tools)
        - [Performance Profiling Tools](#performance-profiling-tools)
        - [Memory Profiling Tools](#memory-profiling-tools)
5. [Code Review](#code-review)
    - [Code Review Best Practices](#code-review-best-practices)
    - [Code Review Tools](#code-review-tools)

## 1. Logging <a id="logging"></a>

_Logging_ is a common practice in software development. It is used to record the events that occur in the system. It is useful for debugging and monitoring the system. In Python, the `logging` module is used to log messages.

_Key components of the `logging` module are:_

- **Loggers**: They are used to create log records. They are used to log messages.
- **Handlers**: They are used to handle the log records. They are used to send the log records to the appropriate destination.
- **Formatters**: They are used to format the log records. They are used to format the log records before they are sent to the destination.


```python
import logging

# Configure logging
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(name)s - %(levelname)s - %(message)s"
)

# Create a logger
logger = logging.getLogger(__name__)

# Log messages
logger.info("This is an info message")
```

    2024-02-22 12:42:32,865 - __main__ - INFO - This is an info message


### Logging Levels <a id="logging-levels"></a>

The `logging` module provides several logging levels. The following are the most commonly used logging levels:

- `DEBUG`: Detailed information, typically of interest only when diagnosing problems.
- `INFO`: Confirmation that things are working as expected.
- `WARNING`: An indication that something unexpected happened, or indicative of some problem in the near future (e.g. ‘disk space low’). The software is still working as expected.
- `ERROR`: Due to a more serious problem, the software has not been able to perform some function.
- `CRITICAL`: A serious error, indicating that the program itself may be unable to continue running.


```python
import logging

# Set up basic configuration for logging
logging.basicConfig(level=logging.DEBUG)

# Examples of logging messages at different levels
logging.debug("This is a debug message")
logging.info("This is an info message")
logging.warning("This is a warning message")
logging.error("This is an error message")
logging.critical("This is a critical message")

# Depending on the level set in basicConfig, some of these messages may not be displayed.
```

    2024-02-22 12:42:32,870 - root - INFO - This is an info message
    2024-02-22 12:42:32,870 - root - WARNING - This is a warning message
    2024-02-22 12:42:32,870 - root - ERROR - This is an error message
    2024-02-22 12:42:32,871 - root - CRITICAL - This is a critical message


### Logging Handlers <a id="logging-handlers"></a>

In Python's `logging` framework, handlers are responsible for dispatching the log messages to specific destinations. Each logger can have multiple handlers, allowing it to send logs to multiple outlets, such as the console, files, HTTP servers, or even more complex targets like log management systems.

_Commonly used handlers are:_

- `StreamHandler`: Sends log messages to a stream, typically `sys.stderr`.
- `FileHandler`: Sends log messages to a file.
- `RotatingFileHandler`: Sends log messages to a file, and creates a new file when the current file reaches a certain size.
- `TimedRotatingFileHandler`: Sends log messages to a file, and creates a new file at certain intervals.
- `SMTPHandler`: Sends log messages to an email address.
- `SysLogHandler`: Sends log messages to a Unix syslog daemon.
- `HTTPHandler`: Sends log messages to a web server.
- `SocketHandler`: Sends log messages to a network socket.


```python
import logging

# Create a logger
logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)  # Set minimum log level

# Create a file handler that logs even debug messages
file_handler = logging.FileHandler("../examples/debug.log")
file_handler.setLevel(logging.DEBUG)

# Create a console handler with a higher log level
console_handler = logging.StreamHandler()
console_handler.setLevel(logging.ERROR)

# Create a formatter and set it for both handlers
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
file_handler.setFormatter(formatter)
console_handler.setFormatter(formatter)

# Add handlers to the logger
logger.addHandler(file_handler)
logger.addHandler(console_handler)

# Log messages
logger.debug("This is a debug message")
logger.error("This is an error message")

# This setup logs debug and higher level messages to 'debug.log',
# but only error and critical messages will appear in the console.
```

    2024-02-22 12:42:32,875 - __main__ - DEBUG - This is a debug message
    2024-02-22 12:42:32,877 - __main__ - ERROR - This is an error message
    2024-02-22 12:42:32,877 - __main__ - ERROR - This is an error message


### Logging Formatters <a id="logging-formatters"></a>

_Logging formatters_ in Python's logging framework are responsible for converting a log message into a specific format before it is output by a handler. The formatter specifies the layout of log messages, allowing developers to include information such as the time of the log message, the log level, the message itself, and other details like the logger's name and the source line number where the log call was made.

_Common Elements in Log Formats:_

- `%(asctime)s`: The human-readable time at which the log record was created.
- `%(name)s`: The name of the logger used to log the call.
- `%(levelname)s`: The textual representation of the logging level (e.g., "DEBUG", "INFO").
- `%(message)s`: The logged message.
- Additional elements like `%(filename)s`, `%(lineno)d`, and `%(funcName)s` can include the source file name, line number, and function name, respectively.


```python
import logging

# Create a logger
logger = logging.getLogger("my_logger")
logger.setLevel(logging.DEBUG)

# Create a handler
stream_handler = logging.StreamHandler()

# Create a formatter and set it to the handler
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
stream_handler.setFormatter(formatter)

# Add the handler to the logger
logger.addHandler(stream_handler)

# Log some messages
logger.debug("This is a debug message")
logger.info("This is an info message")
```

    2024-02-22 12:42:32,882 - my_logger - DEBUG - This is a debug message
    2024-02-22 12:42:32,882 - my_logger - DEBUG - This is a debug message
    2024-02-22 12:42:32,885 - my_logger - INFO - This is an info message
    2024-02-22 12:42:32,885 - my_logger - INFO - This is an info message


## 2. Code Style <a id="code-style"></a>

_Code style_ is a set of conventions for writing code. It is important to follow a consistent code style to make the code readable and maintainable. Python has a set of conventions for writing code, which is defined in PEP 8. PEP 8 is the official style guide for Python code.


```python
%%script false --no-raise-error  # This cell is not executed because it is just an example

# Import standard libraries first
import os
import sys

# Followed by third-party libraries
import requests

# Constants are typically named in all uppercase
MAX_TIMEOUT = 60

class NetworkClient:
    """Represents a simple network client."""

    def __init__(self, server_url):
        self.server_url = server_url

    def fetch_data(self, endpoint):
        """Fetch data from a specific endpoint."""
        url = f"{self.server_url}/{endpoint}"
        response = requests.get(url, timeout=MAX_TIMEOUT)
        return response.json()

# Use meaningful names and follow PEP 8 spacing conventions
def main():
    client = NetworkClient("https://api.example.com")
    data = client.fetch_data("data")
    print(data)

if __name__ == "__main__":
    main()
```

### PEP 8 <a id="pep-8"></a>

_PEP 8_, or Python Enhancement Proposal 8, is the style guide for Python code, establishing a set of rules and best practices for formatting Python code. Its primary goal is to improve the readability and consistency of Python code across the vast Python ecosystem. Since Python places a significant emphasis on readability and simplicity, adhering to PEP 8 can make your code more accessible to other Python developers.

_Key Highlights of PEP 8:_

- **Indentation**: Use 4 spaces per indentation level. Avoid using tabs, or configure your editor to convert tabs to spaces.
- **Line Length**: Limit all lines to a maximum of 79 characters for code and 72 for comments and docstrings to improve readability on smaller displays.
- **Imports**: Should be on separate lines and grouped in the following order: standard library imports, related third party imports, and local application/library specific imports, with a blank line between each group.
- **Whitespace**: Use whitespace sparingly inside parentheses, brackets, and braces, and around operators. Follow guidelines for where to avoid and where to include space for clarity.
- **Naming Conventions**: 
  - Use `CamelCase` for class names.
  - Use lowercase with underscores for functions, methods, and variables.
  - Constants should be written in all uppercase with underscores.
- **Comments**: Comments should be complete sentences and used sparingly, explaining the rationale for the decision or clarifying complex parts of the code.
- **Docstrings**: Use docstrings for all public modules, functions, classes, and methods to describe what they do and how they do it.

### Docstrings <a id="docstrings"></a>

_Docstrings_, or documentation strings, are literal strings used to document Python modules, functions, classes, and methods. They are enclosed in triple quotes (`"""Docstring here"""`) and are placed immediately after the definition of a function, class, module, or method. Docstrings are a key part of Python code documentation and can be accessed through the `.__doc__` attribute of the object they document or via the built-in `help()` function.


```python
def calculate_area(base, height):
    """
    Calculate the area of a triangle.

    Parameters:
    - base (float): The base of the triangle.
    - height (float): The height of the triangle.

    Returns:
    float: The area of the triangle calculated using (base * height) / 2.
    """
    return 0.5 * base * height


class GeometryCalculator:
    """
    A class used to perform various geometry calculations.

    Attributes:
    unit (str): The measurement unit for calculations (default is 'metric').

    Methods:
    convert_unit(value, to_unit): Converts a measurement from one unit to another.
    """

    def __init__(self, unit="metric"):
        self.unit = unit

    def convert_unit(self, value, to_unit):
        """Convert a measurement value from one unit to another."""
        # Conversion logic here
        pass
```

### Type Annotations <a id="type-annotations"></a>

_Type annotations_ in Python provide a way to explicitly state the expected data types of variables, function parameters, and return values. Type annotations are not enforced at runtime but can be used by third-party tools, IDEs, and linters for type checking, improving code readability, and aiding in debugging.

_Purpose of Type Annotations:_

- **Readability**: Make the code more readable by documenting the types of parameters and return values.
- **Static Type Checking**: Enable static type checkers like `mypy` to verify that the code adheres to the specified types at compile time, catching type errors before runtime.
- **IDE Support**: Improve support in integrated development environments (IDEs) for features like autocompletion, function signatures, and refactoring assistance.

_How to Use Type Annotations:_

- **Variables**: Specify the type of a variable after its name followed by a colon and the type.
- **Functions**: Annotate function parameters and return values using colons and the arrow (`->`) syntax respectively.
- **Type Hints**: Use the `typing` module to specify more complex types, such as lists, dictionaries, and custom classes.


```python
from typing import Dict, List, Optional, Tuple


def greet(name: str) -> str:
    return f"Hello, {name}!"


def process_data(data: List[int]) -> Tuple[int, int]:
    total = sum(data)
    count = len(data)
    return total, count


def find_person(id: int, directory: Dict[int, str]) -> Optional[str]:
    return directory.get(id, None)


# Variable annotation
scores: List[int] = [90, 95, 88]

# Optional variable annotation, useful when a variable can be None
age: Optional[int] = None
```

### Linting <a id="linting"></a>

_Linting_ is the process of running a program that will analyze code for potential errors. Linters are tools that perform static analysis on source code to find programming errors, bugs, stylistic errors, and suspicious constructs. Linting tools can help enforce code style, improve code quality, and catch bugs early in the development process.

_Common Python Linters:_

- **pylint**: A widely used linter that checks for errors, enforces coding standards, and looks for code smells.
- **flake8**: Combines several tools including `pycodestyle`, `pyflakes`, and `mccabe` to check for PEP 8 violations, syntax errors, and cyclomatic complexity.
- **mypy**: A static type checker that can be used to enforce type annotations and perform type checking on Python code.

### Code Formatters <a id="code-formatters"></a>

_Code formatters_ are tools that automatically format source code to adhere to a specific style guide or set of conventions. They can be used to enforce a consistent code style across a codebase, making the code more readable and maintainable.

_Common Python Code Formatters:_

- **black**: An opinionated code formatter that automatically formats Python code to adhere to PEP 8 style guidelines.
- **ruff**: Fast Python linter and code formatter.
- **isort**: A tool to sort and organize Python imports according to PEP 8 guidelines.
- **autopep8**: A tool that automatically formats Python code to conform to the PEP 8 style guide.
- **yapf**: Yet Another Python Formatter, a code formatter that takes a different approach to code formatting, focusing on being highly configurable and providing a consistent style.

## 3. Environment Management <a id="environment-management"></a>

_Environment management_ in Python is the practice of managing multiple sets of Python and library versions to ensure compatibility and isolation between different projects. It's crucial for avoiding conflicts between project dependencies and for replicating production environments locally to debug issues accurately.

### Virtual Environments <a id="virtual-environments"></a>

A _virtual environment_ is a self-contained directory that contains a Python installation for a particular version of Python, plus a number of additional packages. It allows you to work on a specific project without affecting other projects or the system-wide Python installation. Virtual environments are a best practice for Python development, as they help manage dependencies and isolate project-specific packages.

_Common Tools for Managing Virtual Environments:_

- **venv**: A built-in module in Python 3 that can be used to create virtual environments.
- **virtualenv**: A third-party tool that provides more features and flexibility for creating and managing virtual environments.
- **conda**: A package, dependency, and environment management system that can be used to create and manage virtual environments for Python and other languages.
- **pipenv**: A tool that combines `pip` and `virtualenv` to provide an easy way to manage project dependencies and virtual environments.
- **poetry**: A modern dependency management tool for Python that allows you to declare and manage project dependencies and create virtual environments.

```bash
# Create a new virtual environment using venv
python3 -m venv myenv

# Activate the virtual environment
source myenv/bin/activate
```

### Dependency Management <a id="dependency-management"></a>

_Dependency management_ in Python involves managing the libraries and packages that a project depends on. It includes installing, updating, and removing dependencies, as well as ensuring that the project's dependencies are compatible with each other and with the Python version being used.

1. **Virtual Environments**:
   - Use tools like `venv`, `virtualenv`, or others to isolate project dependencies. This prevents conflicts between projects and makes it easier to manage project-specific dependencies.

2. **Requirements Files**:
   - A `requirements.txt` file lists all of your project's dependencies, often with specified versions, in a format that `pip` can use to install them.
   - You can generate a `requirements.txt` file for your project by running `pip freeze > requirements.txt` in your virtual environment.

3. **Package Managers and Dependency Resolvers**:
   - **pip**: The Python package installer. Starting from version 20.3, pip uses a new resolver that automatically determines the best combination of package versions for your project.
   - **Pipenv**: Combines package management with virtual environment management. It uses a `Pipfile` and `Pipfile.lock` to manage dependencies, aiming for reproducibility and clearer dependency declaration.
   - **Poetry**: Handles dependency management and packaging. It uses a `pyproject.toml` file for dependency declaration and dependency resolution, and creates a lock file to ensure consistent installs across environments.

4. **Dependency Locking**:
   - Locking dependencies involves creating a snapshot of all the dependencies and their exact versions used in a project at a certain point in time (usually stored in a lock file, e.g., `Pipfile.lock` for Pipenv or `poetry.lock` for Poetry).
   - This ensures that you can recreate the exact same environment later, improving project reproducibility across different machines or deployment environments.

5. **Regular Updates and Security Checks**:
   - Regularly update your dependencies to receive bug fixes, security patches, and new features.
   - Tools like `pip-audit` for security vulnerabilities scanning, and dependabot on GitHub, can help keep your dependencies up-to-date and secure.

```bash
# Install a package using pip
pip install requests

# Install packages from a requirements file
pip install -r requirements.txt

# Update a package to the latest version
pip install --upgrade requests
```

### Environment Variables <a id="environment-variables"></a>

_Environment variables_ are key-value pairs stored in the operating system's environment that can affect the way running processes will behave on a computer. In Python development, environment variables are often used to manage application settings, configurations, sensitive information (like API keys and database passwords), and to differentiate between development, testing, and production environments without hardcoding such data into source code.

Python's standard library includes the `os` module, which provides a way to access environment variables using `os.environ`. This acts like a Python dictionary, so you can use methods to get environment variable values, set default values if they don't exist, and check for their presence.


```python
%%script false --no-raise-error  # This cell is not executed

import os

# Accessing an environment variable (returns None if not found)
api_key = os.environ.get('API_KEY')

# Accessing an environment variable with a default value if not found
db_host = os.environ.get('DB_HOST', 'localhost')

# Setting an environment variable in Python (affects only the current process environment)
os.environ['NEW_VARIABLE'] = 'value'
```

#### dotenv <a id="dotenv"></a>

The `python-dotenv` package is a popular tool for managing environment variables in Python projects. It allows you to define environment variables in a `.env` file and load them into your Python environment. This is useful for keeping sensitive information out of your codebase and for managing different configurations across different environments.


```python
%%script false --no-raise-error  # This cell is not executed

# Using python-dotenv to load variables from a .env file
from dotenv import load_dotenv
load_dotenv()  # This loads the environment variables from a .env file if present

api_key = os.environ.get('API_KEY')
db_host = os.environ.get('DB_HOST', 'localhost')
```

## 4. Profiling <a id="code-profiling"></a>

_Profiling_ is the practice of measuring the performance of a program to identify its most time-consuming parts and to optimize them. Profiling can help you understand how your code is performing, identify bottlenecks, and make informed decisions about where to focus optimization efforts.

### Time Profiling (Performance Profiling) <a id="performance-profiling"></a>

_Time profiling_ (or _Performance Profiling_) is a type of profiling that measures the time taken by different parts of a program. It helps identify which parts of the code are consuming the most time and can be used to optimize the performance of the program.

_Time Profiling importance:_

- **Identifying Bottlenecks**: It helps identify the parts of the code that are consuming the most time and resources.
- **Optimization**: It provides insights into which parts of the code need to be optimized for better performance.
- **Resource Allocation**: It helps in better resource allocation and planning for the program.

Python's standard library includes the `cProfile` module, which can be used to profile Python code. The `cProfile` module provides a way to profile the time taken by different functions and methods in a program.


```python
import cProfile
import re


def example_function():
    return re.compile("foo|bar").match("bar")


# Run the profiler on the example_function
cProfile.run("example_function()")
```

             8 function calls in 0.000 seconds
    
       Ordered by: standard name
    
       ncalls  tottime  percall  cumtime  percall filename:lineno(function)
            1    0.000    0.000    0.000    0.000 952846612.py:5(example_function)
            1    0.000    0.000    0.000    0.000 <string>:1(<module>)
            1    0.000    0.000    0.000    0.000 __init__.py:225(compile)
            1    0.000    0.000    0.000    0.000 __init__.py:272(_compile)
            1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
            1    0.000    0.000    0.000    0.000 {built-in method builtins.isinstance}
            1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
            1    0.000    0.000    0.000    0.000 {method 'match' of 're.Pattern' objects}
    
    


### Memory Profiling <a id="memory-profiling"></a>

_Memory profiling_ is the process of analyzing a program's memory usage over time to identify parts of the code that use excessive amounts of memory, have memory leaks, or could be optimized to use memory more efficiently. Understanding memory usage is crucial for developing efficient, scalable applications, especially in environments with limited resources or when dealing with large data sets.

_Importance of Memory Profiling:_

- **Identifying Memory Leaks**: It helps identify parts of the code that are leaking memory.
- **Optimization**: It provides insights into which parts of the code need to be optimized for better memory usage.
- **Cost Efficiency**: In cloud-based and server environments, optimizing memory usage can lead to cost savings by requiring fewer resources to run applications.

Python's standard library includes the `tracemalloc` module, which can be used to profile memory usage in Python programs. The `tracemalloc` module provides a way to trace memory allocations and deallocations in a program.


```python
import tracemalloc

# Start tracing memory allocations
tracemalloc.start()

# Run some code
a = [i for i in range(100000)]
b = [i for i in range(100000, 200000)]

# Take a snapshot of the current memory allocation
snapshot = tracemalloc.take_snapshot()

# Stop tracing memory allocations
tracemalloc.stop()

# Print out the statistics
for stat in snapshot.statistics("lineno")[:3]:
    print(stat)
```

    /var/folders/6r/27vxsf6512zffvpt__9jvmcc0000gn/T/ipykernel_44698/960184309.py:8: size=3907 KiB, count=100001, average=40 B
    /var/folders/6r/27vxsf6512zffvpt__9jvmcc0000gn/T/ipykernel_44698/960184309.py:7: size=3899 KiB, count=99744, average=40 B
    /opt/homebrew/Cellar/python@3.11/3.11.7_1/Frameworks/Python.framework/Versions/3.11/lib/python3.11/codeop.py:125: size=357 B, count=3, average=119 B


### Profiling Tools <a id="profiling-tools"></a>

There are several tools available for profiling Python code, including both performance profiling and memory profiling tools.

#### Performance Profiling Tools <a id="performance-profiling-tools"></a>

The following are some commonly used performance profiling tools for Python:

- **cProfile**: A built-in Python module for profiling the time taken by different functions and methods in a program.
- **line_profiler**: A module for profiling the time taken by individual lines of code in a program.
- **Py-Spy**: A sampling profiler for Python programs. It can be used to profile CPU usage and memory usage of Python programs.
- **SnakeViz**: A browser-based graphical viewer for the output of Python's cProfile module. It can be used to visualize and analyze the profiling data.

#### Memory Profiling Tools <a id="memory-profiling-tools"></a>

For memory profiling, the following tools are commonly used:

- **tracemalloc**: A built-in Python module for tracing memory allocations in a Python program. It can be used to identify memory leaks and inefficient memory usage.
- **memory_profiler**: A module for monitoring memory usage of a Python program. It can be used to profile memory usage line by line.
- **objgraph**: A module for visualizing Python object references and memory usage. It can be used to identify memory leaks and inefficient memory usage.
- **Pympler**: A development tool to measure, monitor, and analyze the memory behavior of Python objects in a running Python application.

## 5. Code Review <a id="code-review"></a>

_Code review_ is a process in software development where developers review each other's code to find and fix bugs, improve code quality, and ensure that the code meets the project's requirements. Code reviews are an essential part of the software development process and can help identify issues early, improve code maintainability, and share knowledge among team members.

_Benefits of Code Review:_

- **Quality Assurance**: Code reviews can help identify bugs and issues early in the development process.
- **Knowledge Sharing**: Code reviews provide an opportunity for team members to share knowledge and learn from each other.
- **Improving Code Quality**: Code reviews can help improve the overall quality of the codebase by identifying and fixing issues.
- **Mentoring and Learning**: Code reviews can be a valuable learning experience for junior developers and an opportunity for senior developers to mentor others.
- **Consistency**: Code reviews can help ensure that the codebase follows consistent coding standards and best practices.
- **Security**: Helps in identifying security vulnerabilities that could be exploited if left unchecked.

### Code Review Best Practices <a id="code-review-best-practices"></a>

_Code review best practices_ are guidelines and recommendations for conducting effective code reviews. They help ensure that the code review process is productive, constructive, and beneficial for the development team.

- **Set Clear Objectives**: Clearly define the goals and objectives of the code review, such as identifying bugs, improving code quality, and sharing knowledge.
- **Review Small Changes**: Break down large changes into smaller, manageable pieces that can be reviewed more effectively.
- **Use a Checklist**: Use a code review checklist to ensure that common issues are not overlooked during the review process.
- **Be Constructive**: Provide constructive feedback and suggestions for improvement. Focus on the code, not the person.
- **Encourage Discussion**: Encourage open and respectful discussion during the code review process. It's an opportunity for team members to share knowledge and learn from each other.
- **Automate Where Possible**: Use automated tools for static code analysis, linting, and testing to catch common issues before the code review process.
- **Rotate Reviewers**: Rotate reviewers to ensure that different team members are involved in the code review process and to share knowledge across the team.
- **Follow Coding Standards**: Ensure that the code follows consistent coding standards and best practices. Use linters and code formatters to enforce coding standards.
- **Document Decisions**: Document decisions made during the code review process to provide context and reasoning for future reference.
- **Be Open to Feedback**: Be open to receiving feedback and suggestions for improvement. Code reviews are an opportunity to learn and grow as a developer.

### Code Review Tools <a id="code-review-tools"></a>

A _Code Review Tool_ is a software application that facilitates the code review process by providing features such as code diffing, commenting, and discussion tracking.

_Common Code Review Tools:_

- **GitHub Pull Requests**: GitHub provides a built-in code review feature through pull requests. It allows team members to review and discuss code changes before merging them into the main branch.
- **GitLab Merge Requests**: GitLab provides a similar code review feature through merge requests. It allows team members to review and discuss code changes before merging them into the main branch.
- **Bitbucket Pull Requests**: Bitbucket provides a code review feature through pull requests. It allows team members to review and discuss code changes before merging them into the main branch.
- **Gerrit**: An open-source code review tool that integrates with Git. It provides a web-based interface for code reviews and supports features like access control and notifications.
- **Phabricator**: An open-source suite of tools for code review, project management, and collaboration. It provides a web-based interface for code reviews and supports features like differential revisions and audit trails.
- **Review Board**: An open-source web-based code review tool that supports reviewing code changes, sharing feedback, and tracking issues.
