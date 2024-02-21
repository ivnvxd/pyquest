# Part X: Concurrency <a id="10-concurrency"></a>

1. [CPU Bound vs I/O Bound](#cpu-bound-vs-io-bound)
2. [Multithreading](#multithreading)
    - [Thread Management](#thread-management)
    - [Daemon Threads](#daemon-threads)
    - [Global Interpreter Lock (GIL)](#gil)
3. [Multiprocessing](#multiprocessing)
    - [Process Management](#process-management)
    - [Pool](#pool)
    - [Process Communication](#process-communication)
        - [Pipes](#multiprocessing-pipes)
        - [Queues](#multiprocessing-queues)
        - [Shared Memory](#multiprocessing-shared-memory)
4. [Asyncio](#asyncio)
    - [Coroutines](#coroutines)
    - [async/await](#async-await)
    - [Event Loop](#event-loop)
5. [Synchronization](#synchronization)
    - [Lock](#lock)
    - [Event](#event)
    - [Condition](#condition)
    - [Semaphore](#semaphore)
    - [Deadlock](#deadlock)
6. [Parallelism](#parallelism)
    - [Parallelism vs Concurrency](#parallelism-vs-concurrency)


## 1. CPU-bound vs I/O-bound <a id="cpu-bound-vs-io-bound"></a>

Tasks can be classified into two main categories based on the type of resources they require:

- **CPU-bound Tasks**: Tasks that are limited by the speed of the CPU, such as mathematical computations, data processing, and scientific simulations. These tasks can benefit from parallel execution on multi-core systems.
- **I/O-bound Tasks**: Tasks that spend most of their time waiting for input/output operations to complete, such as reading and writing files, making network requests, and accessing databases. These tasks can benefit from asynchronous execution to avoid blocking the CPU while waiting for IO operations to complete.

## 2. Multithreading <a id="multithreading"></a>

_Multithreading_ is a way to run multiple tasks concurrently. It is a lightweight process, and the threads share the same memory space. In Python, the `threading` module is used to create and manage threads.

A **thread** is a sequence of instructions that can be executed independently of other code. A process can have multiple threads running as a part of it. Threads share the same memory space and resources of the process that created it. Threads are lightweight compared to processes.

When to use multithreading:

- **I/O-bound tasks**: When the tasks are I/O-bound, such as reading and writing files, making network requests, etc. In such cases, the CPU is mostly idle, and multithreading can be used to perform multiple tasks concurrently.
- **Asynchronous tasks**: When you want to perform multiple tasks concurrently and don't want to wait for the completion of one task to start another.

### Thread Management <a id="thread-management"></a>

Thread management in Python involves creating, starting, joining, and controlling the execution of threads to achieve concurrent execution in a Python application. The `threading` module provides the necessary functionalities for managing threads. 

_Key aspects include:_

- **Creating Threads**: Threads can be created by instantiating the `Thread` class from the `threading` module, passing a target function that the thread will execute.
- **Starting Threads**: After a thread is created, it can be started by calling its `start()` method. This instructs the Python interpreter to begin its execution.
- **Joining Threads**: Waiting for a thread to complete is achieved by calling the `join()` method on the thread object. This method blocks the calling thread (typically the main thread) until the thread upon which `join()` is called is terminated.
- **Daemon vs Non-Daemon Threads**: Threads can be daemon or non-daemon. Daemon threads are designed to run in the background and automatically terminate when the main program exits. Non-daemon threads (the default) must complete their execution or be explicitly terminated before the main program can exit.
- **Thread Synchronization**: Managing access to shared resources from multiple threads to prevent data corruption or inconsistent states. Python provides several synchronization primitives like Locks, Events, Conditions, and Semaphores for this purpose.


```python
import threading
import time


# Define a function to be executed by the thread
def worker(number):
    print(f"Worker {number} is starting")
    time.sleep(2)
    print(f"Worker {number} is finished")


# Create threads
threads = []
for i in range(3):
    thread = threading.Thread(target=worker, args=(i,))
    threads.append(thread)

# Start threads
for thread in threads:
    thread.start()

# Wait for all threads to complete
for thread in threads:
    thread.join()

print("All threads have finished execution.")
```

    Worker 0 is starting
    Worker 1 is starting
    Worker 2 is starting
    Worker 0 is finishedWorker 2 is finished
    
    Worker 1 is finished
    All threads have finished execution.


### Daemon Threads <a id="daemon-threads"></a>

_Daemon threads_ are threads that run in the background and are terminated automatically when the main program exits. They are useful for tasks that need to run continuously in the background, such as monitoring, logging, or cleaning up resources. To create a daemon thread, set the `daemon` attribute of the thread object to `True` before starting the thread.


```python
import time
from threading import Event, Thread


def background_task(event):
    while not event.is_set():
        time.sleep(1)
        print("Background task is running...")


def main_task():
    for i in range(3):
        print(f"Main task iteration {i}")
        time.sleep(2)
    print("Main task completed.")


# Creating a daemon thread
stop_event = Event()
daemon_thread = Thread(
    target=background_task, args=(stop_event,), daemon=True
)  # Set the thread as a daemon thread

# Starting the daemon thread
daemon_thread.start()

# Execute the main task
main_task()

# Stop the daemon thread (necessary for the code to run in Jupyter Notebook)
stop_event.set()
daemon_thread.join()

# Once the main task is completed, the program will exit and the daemon thread will be terminated automatically
print("Program is exiting.")
```

    Main task iteration 0
    Background task is running...
    Main task iteration 1
    Background task is running...
    Background task is running...
    Main task iteration 2
    Background task is running...
    Background task is running...
    Main task completed.
    Background task is running...
    Program is exiting.


### Global Interpreter Lock (GIL) <a id="gil"></a>

The _Global Interpreter Lock_ (GIL) is a mechanism in the CPython interpreter (the standard Python implementation) that ensures only one thread executes Python bytecode at a time. This lock is necessary because CPython's memory management is not thread-safe.

_Purpose of the GIL:_

- **Simplifies CPython Implementation**: The GIL makes the CPython implementation simpler and the memory management model easier to understand and implement since it removes the need for adding locks to data structures to ensure thread safety.
- **Performance in Single-threaded Programs**: For single-threaded programs, the GIL is beneficial because it eliminates the overhead associated with locking and unlocking data structures. This can make single-threaded programs run faster.

_Impact of the GIL:_

- **Concurrency**: The GIL prevents true multi-core concurrency with threads. Even if a program is running on a multi-core processor, only one thread can execute Python bytecode at a time. This can lead to performance bottlenecks in CPU-bound and multi-threaded programs.
- **I/O-bound Multi-threading**: The GIL is less of an issue for I/O-bound multi-threaded programs. Python can release the GIL while waiting for I/O operations, allowing other threads to run Python code in the meantime.

_Workarounds and Solutions:_

- **Multi-processing**: Instead of using threads, Python programs can use multiple processes to achieve parallelism. The `multiprocessing` module allows a Python program to fully utilize multiple cores by running separate Python interpreters in separate processes, each with its own GIL and memory space.
- **Alternative Implementations**: Python implementations other than CPython, such as Jython, IronPython, and PyPy, don't have a GIL and can achieve true parallelism using threads. PyPy, for example, uses a Just-In-Time compiler and doesn't rely on a GIL for thread safety.
- **Using Extensions**: CPU-bound tasks can be offloaded to extensions written in languages like C or C++, which can manage their own threads outside of Python's GIL.

## 3. Multiprocessing <a id="multiprocessing"></a>

_Multiprocessing_ in Python is a module that allows you to create processes that can run in parallel, each having its own Python interpreter and memory space. This approach is an effective way to circumvent the Global Interpreter Lock (GIL) and fully utilize multiple CPU cores for CPU-bound tasks. The `multiprocessing` module provides a rich API for spawning processes, managing their execution, and facilitating communication between them.

_When to Use Multiprocessing:_

- **CPU-bound Tasks**: Multiprocessing is particularly useful for CPU-bound tasks that can be parallelized, such as mathematical computations, data processing, and scientific simulations.
- **True Parallelism**: Multiprocessing allows Python programs to achieve true parallelism by running separate Python interpreters in separate processes, each with its own GIL and memory space.

### Process Management <a id="process-management"></a>

_Process Management_ in Python, facilitated by the `multiprocessing` module, involves creating, starting, managing, and synchronizing processes to achieve parallel execution. This approach is particularly useful for CPU-bound tasks that can benefit from parallel execution on multi-core systems. 

_Key aspects include:_

- **Creating Processes**: Processes can be created by instantiating the `Process` class from the `multiprocessing` module, passing a target function and arguments to run in the process.
- **Starting Processes**: After a process is created, it can be started by calling its `start()` method. This instructs the Python interpreter to begin its execution.
- **Joining Processes**: Waiting for a process to complete is achieved by calling the `join()` method on the process object. This method blocks the calling process until the process upon which `join()` is called is terminated.
- **Process Synchronization**: Managing access to shared resources from multiple processes to prevent data corruption or inconsistent states. Python provides several synchronization primitives like Locks, Events, Conditions, and Semaphores for this purpose.

You create a new process by instantiating the `Process` class from the `multiprocessing` module, passing a target function and arguments to run in the process. Each process runs in its own Python interpreter and memory space.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise AttributeError in Jupyter Notebook

import os
from multiprocessing import Process


def worker_process(number):
    """A simple worker function."""
    print(f"Worker {number}: running in process ID {os.getpid()}")


if __name__ == "__main__":
    # Create processes
    processes = [Process(target=worker_process, args=(i,)) for i in range(5)]

    # Start each process
    for process in processes:
        process.start()

    # Wait for all processes to finish
    for process in processes:
        process.join()

    print("Main process execution completed.")
```

### Pool <a id="pool"></a>

The `Pool` class in Python's `multiprocessing` module provides a way to parallelize the execution of a function across multiple input values, distributing the input data across processes (workers). This method allows for efficient parallel execution of tasks, particularly useful for CPU-bound tasks that can benefit from multi-core execution. The `Pool` class manages a pool of worker processes, automating the process of assigning tasks to workers and collecting results.

_Key Features:_

- **Simplified Parallel Processing**: `Pool` abstracts away the details of manually managing individual processes, including the creation, execution, and synchronization of processes.
- **Task Distribution**: Automatically handles distributing tasks to multiple worker processes, taking advantage of multiple CPU cores.
- **Flexible Task Execution**: Supports several methods for task execution, such as `map()`, `apply()`, `apply_async()`, and `map_async()`, offering both synchronous and asynchronous execution models.
- **Result Handling**: Collects results from worker processes and returns them to the parent process, simplifying the management of output data from parallel tasks.
 to the squared value of the input numbers, maintaining the order of the input.

_When to Use:_

- **CPU-bound tasks**: When tasks are computationally intensive and can run independently of each other.
- **Large data processing**: When you need to process a large set of data in parallel, reducing execution time.
- **Resource-intensive operations**: Operations that can significantly benefit from distributing the workload across multiple processors/cores.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise AttributeError in Jupyter Notebook

from multiprocessing import Pool

def square(number):
    """Function to square a number."""
    return number * number

if __name__ == '__main__':
    numbers = [1, 2, 3, 4, 5]  # Define a list of numbers to square

    with Pool() as pool:
        # Use map to apply 'square' function to all items in 'numbers' in parallel
        results = pool.map(square, numbers)

        print(f"Squared numbers: {results}")
```

### Process Communication <a id="process-communication"></a>

_Process Communication_ in Python, particularly within the context of the `multiprocessing` module, refers to the mechanisms available for exchanging data between processes running in parallel. Since each process operates in its own memory space, direct memory sharing like that in threading (where threads share the same memory space) is not feasible. The `multiprocessing` module provides several ways to facilitate communication between processes, ensuring data can be passed back and forth safely and efficiently.

_Key Aspects:_

- **Pipes**: A simple way to establish a two-way communication channel between two processes. The `Pipe` class in the `multiprocessing` module provides a way to create a pair of connection objects that can be used to send and receive data between processes.
- **Queues**: A more versatile way to exchange data between processes. The `Queue` class in the `multiprocessing` module provides a shared queue for multiple processes to store and retrieve data.
- **Shared Memory**: A more advanced method for sharing data between processes. The `Value` and `Array` classes in the `multiprocessing` module provide a way to create shared memory objects that can be accessed by multiple processes.

#### Pipes <a id="multiprocessing-pipes"></a>

A _pipe_ provides a way for two processes to communicate using two endpoints — a send and receive end. Pipes are suitable for one-to-one communication and can be unidirectional or bidirectional. In Python, the `Pipe` class in the `multiprocessing` module provides a way to create a pair of connection objects that can be used to send and receive data between processes.

The `Pipe` class returns a pair of connection objects that represent the two ends of the pipe. Each connection object has `send()` and `recv()` methods for sending and receiving data.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise AttributeError in Jupyter Notebook

from multiprocessing import Pipe, Process


def sender(conn):
    """Function to send data."""
    conn.send(["Hello from sender!"])
    conn.close()  # Close the connection when done


def receiver(conn):
    """Function to receive data."""
    print(conn.recv())  # Print the received data
    conn.close()


if __name__ == "__main__":
    # Create a Pipe
    parent_conn, child_conn = Pipe()

    # Create processes
    p1 = Process(target=sender, args=(parent_conn,))
    p2 = Process(target=receiver, args=(child_conn,))

    # Start processes
    p1.start()
    p2.start()

    # Wait for processes to finish
    p1.join()
    p2.join()
```

#### Queues <a id="multiprocessing-queues"></a>

_Queues_ allow multiple producers and consumers to exchange messages. They are thread and process safe, making them ideal for complex process-based applications where multiple processes need to communicate. In Python, the `Queue` class in the `multiprocessing` module provides a shared queue for multiple processes to store and retrieve data.

The `Queue` class is a FIFO (First In, First Out) data structure that allows multiple processes to safely put and get data from the queue. It is particularly useful for exchanging data between processes in a producer-consumer pattern.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise AttributeError in Jupyter Notebook

from multiprocessing import Process, Queue


def producer(queue):
    """Function to send data."""
    queue.put("Hello from producer!")


def consumer(queue):
    """Function to receive data."""
    print(queue.get())


if __name__ == "__main__":
    queue = Queue()

    # Create producer and consumer processes
    p1 = Process(target=producer, args=(queue,))
    p2 = Process(target=consumer, args=(queue,))

    # Start processes
    p1.start()
    p2.start()

    # Wait for processes to finish
    p1.join()
    p2.join()
```

#### Shared Memory <a id="multiprocessing-shared-memory"></a>

_Shared memory_ is a more advanced method for sharing data between processes. It allows multiple processes to access the same memory space, providing a way to share data without the need for serialization and deserialization. In Python, the `Value` and `Array` classes in the `multiprocessing` module provide a way to create shared memory objects that can be accessed by multiple processes.

The `Value` and `Array` classes allow you to create shared memory objects that can be accessed by multiple processes. The `Value` class is used to create a shared memory object that can store a single value, while the `Array` class is used to create a shared memory object that can store a sequence of values.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise AttributeError in Jupyter Notebook

from multiprocessing import Process, Value, Array, Lock
import time

def add_to_counter(counter, lock):
    for _ in range(10):
        time.sleep(0.1)  # Simulate work
        with lock:
            counter.value += 1

def add_to_array(numbers, lock):
    for i in range(len(numbers)):
        time.sleep(0.1)  # Simulate work
        with lock:
            numbers[i] += 1

# Example usage
if __name__ == "__main__":
    # Shared memory objects need synchronization mechanisms like locks
    lock = Lock()

    # Create a shared value (integer)
    counter = Value('i', 0)

    # Create a shared array (floats)
    numbers = Array('d', [0.0, 100.0, 200.0])

    # Create processes that modify shared memory
    p1 = Process(target=add_to_counter, args=(counter, lock))
    p2 = Process(target=add_to_array, args=(numbers, lock))

    # Start the processes
    p1.start()
    p2.start()

    # Wait for the processes to finish
    p1.join()
    p2.join()

    # Access the modified shared memory
    print(f"Counter value: {counter.value}")
    print(f"Array values: {list(numbers)}")
```

## 4. Asyncio <a id="asyncio"></a>

`asyncio` is a Python library introduced in Python 3.4 to write concurrent code using the `async/await` syntax. It provides a way to write asynchronous programs that can handle a large number of connections or tasks concurrently with a single thread and single process, making it especially useful for IO-bound and high-level structured network code.

_When to Use asyncio:_

- **I/O-bound Tasks**: When the tasks are I/O-bound, such as reading and writing files, making network requests, etc. In such cases, the CPU is mostly idle, and asyncio can be used to perform multiple tasks concurrently.
- **Asynchronous Tasks**: When you want to perform multiple tasks concurrently and don't want to wait for the completion of one task to start another.

_Key Aspects:_

- **Coroutines**: Asynchronous functions that can be paused and resumed, allowing other tasks to run in the meantime.
- **async/await**: Keywords used to define asynchronous functions and to pause and resume the execution of asynchronous code.
- **Event Loop**: A central execution manager that schedules and runs asynchronous tasks, handling the flow of control in an asynchronous program.

### Coroutines <a id="coroutines"></a>

_Coroutines_ are a key feature of `asyncio` and are used to define asynchronous functions. They are defined using the `async def` syntax and can be paused and resumed during execution. The `await` keyword is used to pause the execution of a coroutine until the result of an asynchronous operation is available.

Coroutines are used for IO-bound tasks, such as accessing the web, databases, files, etc., where operations can block the execution of your code while waiting for the IO operation to complete. By using coroutines, these blocking operations are turned into non-blocking, allowing your code to handle other tasks in the meantime.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise RuntimeError in Jupyter Notebook

import asyncio

# Define a coroutine
async def fetch_data():
    print("Start fetching")
    await asyncio.sleep(2)  # Simulate an IO operation
    print("Done fetching")
    return {'data': 1}

# Define another coroutine that uses fetch_data
async def main():
    print("Before fetching")
    result = await fetch_data()  # Wait for fetch_data to complete
    print("Result:", result)
    print("After fetching")

# Run the main coroutine
asyncio.run(main())
```

### async/await <a id="async-await"></a>

The `async` and `await` keywords are used to define asynchronous functions (coroutines) and to pause the execution of a coroutine until the result of an asynchronous operation is available.

- **async**: The `async` keyword is used to define a coroutine. It can be used to define a function that can be paused and resumed during execution.
- **await**: The `await` keyword is used to pause the execution of a coroutine until the result of an asynchronous operation is available. It can only be used inside an `async` function.

When an await expression is encountered, Python suspends the execution of the current coroutine and passes control back to the event loop, which can then execute other tasks. Once the awaited operation is completed, the event loop resumes the execution of the suspended coroutine from the point it was paused. This allows the coroutine to perform other tasks while waiting for the awaited operation to complete.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise RuntimeError in Jupyter Notebook

import asyncio

async def compute(x, y):
    print("Compute %s + %s..." % (x, y))
    await asyncio.sleep(1.0)  # Simulate a blocking IO operation
    return x + y

async def print_sum(x, y):
    result = await compute(x, y)
    print("%s + %s = %s" % (x, y, result))

loop = asyncio.get_event_loop()
loop.run_until_complete(print_sum(1, 2))
loop.close()
```

### Event Loop <a id="event-loop"></a>

The _Event Loop_ is the core of `asyncio` and is responsible for scheduling and running tasks, handling IO operations, and managing asynchronous callbacks. It is a single-threaded loop that runs and manages the execution of asynchronous tasks and IO operations.

Python's `asyncio` provides several functions to run and manage the event loop, with `asyncio.run()` being one of the simplest and most commonly used in Python 3.7 and newer. This function runs the main coroutine and automatically manages the lifecycle of the event loop. 

The event loop is responsible for:

- Scheduling and running asynchronous tasks and coroutines.
- Handling IO operations, such as reading and writing to files, sockets, and other IO devices.
- Managing asynchronous callbacks and events.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise RuntimeError in Jupyter Notebook

import asyncio

async def periodic_print(text, delay):
    """A coroutine that prints 'text' every 'delay' seconds"""
    while True:
        print(text)
        await asyncio.sleep(delay)

async def main():
    # Schedule two coroutines to run concurrently:
    await asyncio.gather(
        periodic_print("Hello", 2),
        periodic_print("World", 3)
    )

# Run the main coroutine, which in turn schedules other tasks
asyncio.run(main())
```

## 5. Synchronization <a id="synchronization"></a>

_Synchronization_ in concurrent programming refers to the coordination of multiple threads or processes to control their access to shared resources and prevent data corruption or inconsistent states. In Python, synchronization is achieved using various primitives such as Locks, Events, Conditions, and Semaphores, which are provided by the `threading` and `multiprocessing` modules. These primitives help manage access to shared resources and ensure that only one thread or process can access the resource at a time.

_Key Aspects:_

- **Lock**: A basic synchronization primitive that provides exclusive access to a shared resource.
- **Event**: A synchronization primitive that allows one thread to signal an event to other threads.
- **Condition**: A synchronization primitive that allows threads to wait for a certain condition to become true before proceeding.
- **Semaphore**: A synchronization primitive that limits the number of threads or processes that can access a shared resource at a time.
- **Deadlock**: A situation where two or more threads or processes are unable to proceed because each is waiting for the other to release a resource.

### Lock <a id="lock"></a>

A _Lock_ is a synchronization primitive that can be used to protect shared resources from being accessed by multiple threads or processes simultaneously. A lock has two states: locked and unlocked. When a thread or process acquires a lock, it becomes locked and no other thread or process can acquire the lock until it is released.

How to use a lock:

- **Acquiring a Lock**: A thread or process acquires a lock by calling its `acquire()` method. If the lock is already acquired, the calling thread or process will block until the lock is released.
- **Releasing a Lock**: A thread or process releases a lock by calling its `release()` method. This allows other threads or processes to acquire the lock.


```python
import time
from threading import Lock, Thread

# Shared resource
counter = 0

# Lock object
lock = Lock()


# Function to increment counter
def increment():
    global counter
    with lock:  # Acquire lock
        current_value = counter
        time.sleep(0.1)  # Simulate some work
        counter = current_value + 1
        print(f"Counter is now {counter}")


# Create threads
threads = [Thread(target=increment) for _ in range(5)]

# Start threads
for thread in threads:
    thread.start()

# Wait for all threads to finish
for thread in threads:
    thread.join()

print("Final counter value:", counter)
```

    Counter is now 1
    Counter is now 2
    Counter is now 3
    Counter is now 4
    Counter is now 5
    Final counter value: 5


### Event <a id="event"></a>

An _Event_ allows one thread to signal other threads that a certain event has occurred. An event has two states: set and clear. When an event is set, threads waiting for the event to be set are allowed to proceed. When an event is cleared, threads waiting for the event to be set are blocked.

An Event object manages an internal flag that can be set to true with the `set()` method and reset to false with the `clear()` method. Threads can wait for the flag to become true using the `wait()` method, which blocks until the flag is set to true.

- **Set**: When the event's internal flag is set to true, all threads waiting on the event are awakened. If a thread calls `wait()` when the flag is already true, it does not block.
- **Clear**: Resets the event's flag to false, causing threads to block again when calling `wait()`, until the flag is set to true again.
- **Wait**: A thread calling `wait()` on an Event will be blocked until the event's flag is set to true. Optionally, `wait()` can have a timeout specified, allowing the thread to block for only a specified amount of time.


```python
import time
from threading import Event, Thread

# Create an event object
event = Event()


def waiter(event, timeout):
    print(f"Waiting for the event to be set, timeout {timeout}")
    event_occurred = event.wait(timeout)
    if event_occurred:
        print("Doing the work after the event is set.")
    else:
        print("Doing some other work since the event was not set in time.")


def setter(event, delay):
    print("Waiting before setting the event.")
    time.sleep(delay)
    event.set()
    print("Event is set.")


# Create threads
waiter_thread = Thread(target=waiter, args=(event, 2))
setter_thread = Thread(target=setter, args=(event, 1))

# Start threads
waiter_thread.start()
setter_thread.start()

# Wait for all threads to finish
waiter_thread.join()
setter_thread.join()
```

    Waiting for the event to be set, timeout 2
    Waiting before setting the event.
    Event is set.Doing the work after the event is set.
    


### Condition <a id="condition"></a>

A _Condition_ is used to coordinate multiple threads. It allows one or more threads to wait until notified by another thread that a condition has been met. Conditions are typically used to synchronize access to shared resources, allowing multiple threads to wait for a resource to become available.

A condition object manages a lock and a notification mechanism. The lock is used to protect access to the shared resource, and the notification mechanism allows threads to wait for a condition to be met.

- **Acquiring the Lock**: A thread acquires the lock associated with the condition by calling its `acquire()` method.
- **Releasing the Lock**: The lock is released by calling the `release()` method.
- **Waiting for a Condition**: A thread can wait for a condition to be met by calling the `wait()` method. This releases the lock and blocks the thread until another thread calls `notify()` or `notify_all()` on the condition.


```python
import time
from threading import Condition, Thread

# Condition variable
condition = Condition()

# Shared resource/state
items = []


def producer():
    with condition:
        print("Producer adding items.")
        items.append(1)  # Add an item to the list
        condition.notify()  # Notify a waiting consumer


def consumer():
    with condition:
        print("Consumer waiting for items.")
        condition.wait()  # Wait for an item to be added
        item = items.pop()  # Remove an item from the list
        print(f"Consumer got an item: {item}")


# Create producer and consumer threads
producer_thread = Thread(target=producer)
consumer_thread = Thread(target=consumer)

# Start threads
consumer_thread.start()
time.sleep(1)  # Ensure consumer starts waiting before producer adds an item
producer_thread.start()

# Wait for threads to complete
producer_thread.join()
consumer_thread.join()
```

    Consumer waiting for items.
    Producer adding items.
    Consumer got an item: 1


### Semaphore <a id="semaphore"></a>

A _Semaphore_ is a synchronization primitive that is used to control access to a shared resource. It maintains a counter that represents the number of available resources. When a thread or process wants to access the shared resource, it must acquire a semaphore. If the counter is greater than zero, the semaphore decrements the counter and allows access. If the counter is zero, the semaphore blocks the thread or process until a resource becomes available.

- **Acquiring a Semaphore**: A thread or process acquires a semaphore by calling its `acquire()` method. If the counter is greater than zero, the counter is decremented, and the thread or process is allowed to proceed. If the counter is zero, the calling thread or process is blocked until a resource becomes available.
- **Releasing a Semaphore**: A thread or process releases a semaphore by calling its `release()` method. This increments the counter, allowing other threads or processes to acquire the semaphore.


```python
import time
from threading import Semaphore, Thread

# A semaphore to restrict access to a limited resource
# In this case, allow up to 2 threads to access the resource at the same time
semaphore = Semaphore(2)


def access_resource(thread_number):
    print(f"Thread {thread_number} is trying to access the resource...")
    with semaphore:
        # Simulate accessing a shared resource
        print(f"Thread {thread_number} has accessed the resource.")
        time.sleep(1)
    print(f"Thread {thread_number} is releasing the resource.")


# Create and start multiple threads
threads = [Thread(target=access_resource, args=(i,)) for i in range(5)]

for thread in threads:
    thread.start()

for thread in threads:
    thread.join()
```

    Thread 0 is trying to access the resource...Thread 1 is trying to access the resource...
    Thread 1 has accessed the resource.
    
    Thread 0 has accessed the resource.
    Thread 2 is trying to access the resource...
    Thread 3 is trying to access the resource...
    Thread 4 is trying to access the resource...
    Thread 1 is releasing the resource.Thread 0 is releasing the resource.
    Thread 3 has accessed the resource.
    Thread 2 has accessed the resource.
    
    Thread 3 is releasing the resource.Thread 2 is releasing the resource.
    Thread 4 has accessed the resource.
    
    Thread 4 is releasing the resource.


### Deadlock <a id="deadlock"></a>

_Deadlock_ is a situation in concurrent programming where two or more threads or processes are unable to proceed because each is waiting for the other to release a resource. Deadlocks occur when multiple threads or processes are blocked indefinitely, waiting for each other.

Deadlocks can occur when the following four conditions hold simultaneously:
- **Mutual Exclusion**: At least one resource must be held in a non-shareable mode. Otherwise, the processes would not be prevented from using the resource when necessary.
- **Hold and Wait**: A process must be holding at least one resource and waiting to acquire additional resources that are currently being held by other processes.
- **No Preemption**: Resources cannot be preempted. They must be released by the process that is holding them, and only voluntarily.
- **Circular Wait**: A circular chain of two or more processes, each of which is waiting for a resource held by the next member of the chain.

Deadlocks can be prevented by breaking one or more of the above conditions. For example, using timeouts, resource preemption, or avoiding circular waits can help prevent deadlocks.

## 6. Parallelism <a id="parallelism"></a>

_Parallelism_ is a programming technique that allows multiple tasks to be executed simultaneously. It can be achieved using multiple processes, threads, or asynchronous operations. Parallelism is particularly useful for CPU-bound tasks that can be divided into smaller sub-tasks and executed concurrently, taking advantage of multi-core processors to improve performance.

### Parallelism vs Concurrency <a id="parallelism-vs-concurrency"></a>

Parallelism is often confused with concurrency, but they are different concepts. Parallelism refers to the simultaneous execution of multiple tasks, while concurrency refers to the ability of a system to handle multiple tasks at the same time, regardless of whether they are executed simultaneously.

The terms _concurrency_ and _parallelism_ are often used interchangeably, but they have distinct meanings:

- **Concurrency**: Concurrency is the ability of an application to be decomposed into smaller units of work that can be executed out of order or in partial order. It is about dealing with lots of things at once. Concurrency is often used to improve the responsiveness of an application and to handle multiple tasks simultaneously.
- **Parallelism**: Parallelism is the ability of an application to execute multiple tasks simultaneously. It is about doing lots of things at once. Parallelism is often used to improve the performance of an application by taking advantage of multi-core processors to execute tasks concurrently.

In Python, parallelism can be achieved using the `multiprocessing` module for CPU-bound tasks and the `asyncio` module for IO-bound tasks. The `threading` module can also be used for parallelism, but due to the Global Interpreter Lock (GIL), it is less effective for CPU-bound tasks.
