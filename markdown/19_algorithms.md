# Part XIX: Algorithms <a id="19-algorithms"></a>

1. [Time Complexity and Big O Notation](#time-complexity-and-big-o-notation)
    - [Time Complexity](#time-complexity)
    - [Big O Notation](#big-o-notation)
    - [Common Data Structure Time Complexities](#common-data-structure-time-complexities)
2. [Sorting Algorithms](#sorting-algorithms)
    - [Bubble Sort](#bubble-sort)
    - [Insertion Sort](#insertion-sort)
    - [Selection Sort](#selection-sort)
    - [Quick Sort](#quick-sort)
    - [Merge Sort](#merge-sort)
    - [Heap Sort](#heap-sort)
    - [Counting Sort](#counting-sort)
    - [Radix Sort](#radix-sort)
    - [Common Sorting Algorithms Time Complexities](#common-sorting-algorithms-time-complexities)
3. [Searching Algorithms](#searching-algorithms)
    - [Linear Search](#linear-search)
    - [Binary Search](#binary-search)
4. [Graph Algorithms](#graph-algorithms)
    - [Depth-First Search (DFS)](#depth-first-search)
        - [Preorder, Inorder, Postorder Traversal](#preorder-inorder-postorder)
    - [Breadth-First Search (BFS)](#breadth-first-search)
    - [Dijkstra's Algorithm](#dijkstras)
    - [Bellman-Ford Algorithm](#bellman-ford)
5. [Problem Solving Methods](#problem-solving-methods)
    - [Two Pointers](#two-pointers)
    - [Sliding Window](#sliding-window)
    - [Divide and Conquer](#divide-and-conquer)
    - [Recursion](#recursion)
    - [Dynamic Programming](#dynamic-programming)
    - [Greedy Algorithms](#greedy-algorithms)
    - [Backtracking](#backtracking)

## 1. Time Complexity and Big O Notation <a id="time-complexity-and-big-o-notation"></a>

_Time complexity_ and _Big O_ notation are foundational concepts in computer science, particularly in the analysis of algorithms. They are used to describe the performance of algorithms and the amount of time they take to run as a function of the size of their input.

### Time Complexity <a id="time-complexity"></a>

_Time complexity_ is a measure of the amount of computational time that an algorithm takes to complete as a function of the length of the input. It gives us an idea of the growth rate of the runtime of an algorithm as the size of input data increases. Time complexity is important because it helps us to predict the scalability of an algorithm and to determine whether it is practical for large datasets.

There are several types of time complexity measures, including:

- **Worst-case time complexity (Big O notation)**: The maximum amount of time an algorithm could take to complete, regardless of the input size.
- **Average-case time complexity (𝛀 omega notation)**: The expected amount of time an algorithm will take to complete, over all possible inputs of a given size.
- **Best-case time complexity (𝚯 theta notation)**: The minimum amount of time an algorithm could take to complete, which usually occurs under ideal conditions.

### Big O Notation <a id="big-o-notation"></a>

_Big O_ notation is a mathematical notation used to describe the upper bound of the time complexity of an algorithm. It expresses the worst-case scenario of an algorithm's growth rate, allowing us to compare the efficiency of different algorithms regardless of hardware or software differences. Big O notation focuses on the main factor that affects the growth rate, ignoring constants and smaller terms, which become negligible as the input size grows.

Here are some common Big O notations and their meanings:

- **O(1)**: Constant time - The execution time of the algorithm does not change with the size of the input data set.
- **O(log n)**: Logarithmic time - The execution time of the algorithm increases logarithmically as the input data set size increases.
- **O(n)**: Linear time - The execution time increases linearly with the increase in input data set size.
- **O(n log n)**: Linearithmic time - The execution time increases linearly and logarithmically with the increase in input data set size. Many efficient sorting algorithms have this time complexity.
- **O(n^2)**: Quadratic time - The execution time increases quadratically with the increase in input data set size. This is common in algorithms that involve nested iterations over the data set.
- **O(2^n)**: Exponential time - The execution time doubles with each addition to the input data set size. This is often seen in algorithms that generate all subsets of a set.
- **O(n!)**: Factorial time - The execution time grows factorially with the increase in input data set size. This is typical in algorithms that generate all permutations of a set.

### Common Data Structure Time Complexities <a id="common-data-structure-time-complexities"></a>

Here are the time complexities for common data structures:

| Data Structure         | Access    | Search    | Insertion | Deletion  | Remarks                      |
|------------------------|-----------|-----------|-----------|-----------|------------------------------|
| Array (Dynamic)        | O(1)      | O(n)      | O(n)      | O(n)      | Worst case for insertion/deletion due to resizing and copying. |
| Array (Fixed Size)     | O(1)      | O(n)      | N/A       | N/A       | Size is fixed; cannot insert or delete. |
| Singly Linked List     | O(n)      | O(n)      | O(1)      | O(1)      | Assuming insertion/deletion at the head. |
| Doubly Linked List     | O(n)      | O(n)      | O(1)      | O(1)      | Assuming insertion/deletion at the head/tail. |
| Stack                  | O(n)      | O(n)      | O(1)      | O(1)      | Access is O(n) since you need to pop n-1 elements to access the nth. |
| Queue                  | O(n)      | O(n)      | O(1)      | O(1)      | Enqueue is O(1), dequeue is O(1); accessing arbitrary elements is O(n). |
| Deque (Double-Ended Queue) | O(n)   | O(n)      | O(1)      | O(1)      | Insertion and deletion are O(1) at both ends. |
| Hash Table (Unsorted)  | N/A       | O(1)      | O(1)      | O(1)      | Average case; worst-case is O(n) if a collision occurs. |
| Binary Search Tree     | O(log n)  | O(log n)  | O(log n)  | O(log n)  | Average case for balanced tree; worst-case is O(n) if unbalanced. |
| Balanced Tree (AVL, Red-Black Tree) | O(log n) | O(log n) | O(log n)  | O(log n)  | Maintains balance to ensure O(log n) operations. |
| Heap (Binary)          | O(1)      | O(n)      | O(log n)  | O(log n)  | Min/Max value is O(1); finding arbitrary values is O(n). |

## 2. Sorting Algorithms <a id="sorting-algorithms"></a>

_Sorting algorithms_ are used to rearrange a list of elements into a particular order, such as numerical, lexicographical, or some other order. Sorting is a fundamental operation in computer science and is used in a wide variety of applications, including searching, data analysis, and database operations.

There are many different sorting algorithms, each with its own advantages and disadvantages. The choice of sorting algorithm depends on the size of the data set, the nature of the data, and the available resources. Here are some common sorting algorithms:

### Bubble Sort <a id="bubble-sort"></a>

_Bubble Sort_ is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted. The algorithm is named for the way smaller elements "bubble" to the top of the list (beginning of the list) because, during each pass, the largest unsorted element bubbles up to its correct position.

_How Bubble Sort Works:_

1. **Starting from the first index**, compare the current element with the next element.
2. **Swap** if the current element is greater than the next element.
3. **Move to the next element** and repeat the process until the end of the array.
4. After each pass, the largest element among the unsorted elements bubbles up to its correct position, reducing the range of the next pass by one.
5. Repeat the steps until no swaps are needed, indicating that the list is sorted.

_Complexity:_

- **Time Complexity**:
  - **Best Case**: _O(n)_ when the array is already sorted, and the algorithm makes a pass to check.
  - **Average Case**: _O(n^2)_ for unsorted or partially sorted arrays.
  - **Worst Case**: _O(n^2)_ when the array is sorted in reverse order.
- **Space Complexity**: _O(1)_ since it only uses a constant amount of extra space for swapping.


```python
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        # Flag to detect any swap
        swapped = False
        # Last i elements are already in place
        for j in range(0, n - i - 1):
            # Swap if the element found is greater than the next element
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = True
        # If no two elements were swapped by inner loop, then break
        if not swapped:
            break
    return arr


# Example usage
arr = [64, 34, 25, 12, 22, 11, 90]
bubble_sort(arr)
print("Bubble sort:", arr)
```

    Bubble sort: [11, 12, 22, 25, 34, 64, 90]


### Insertion Sort <a id="insertion-sort"></a>

_Insertion Sort_ is a simple and intuitive sorting algorithm that builds the final sorted array (or list) one item at a time. It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort. However, its simplicity and the fact that it makes minimal number of swaps makes it efficient for small data sets and nearly sorted arrays. Moreover, it's stable, meaning that it maintains the relative order of equal elements.

_How Insertion Sort Works:_

The algorithm divides the input list into two parts: the sublist of items already sorted (which is built up from left to right at the front of the list), and the sublist of items remaining to be sorted that occupy the rest of the list. Initially, the sorted sublist is just the first element of the list. The algorithm proceeds by removing one element from the remaining sublist and inserting it into the correct position within the sorted sublist, repeating until no elements remain in the unsorted sublist.

Here are the steps for insertion sort:

1. Consider the first element to be sorted and the rest to be unsorted.
2. Take the first element in the unsorted segment and scan backward into the sorted segment for the correct position to insert the element.
3. Repeat step 2 for all elements in the unsorted segment.

_Complexity:_

- **Time Complexity**:
    - **Best-case time complexity**: _O(n)_, which occurs when the array is already sorted. In this case, the algorithm only needs to make one comparison per element.
    - **Average and worst-case time complexity**: _O(n^2)_, due to the nested loops, where n is the number of items being sorted. The worst case occurs when the array is sorted in reverse order.
- **Space complexity**: _O(1)_, because it only requires a fixed amount of extra storage space.


```python
def insertion_sort(arr):
    # Traverse through 1 to len(arr)
    for i in range(1, len(arr)):
        key = arr[i]
        # Move elements of arr[0..i-1], that are greater than key, to one position ahead of their current position
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr


# Example usage
arr = [12, 11, 13, 5, 6]
insertion_sort(arr)
print("Insertion sort:", arr)
```

    Insertion sort: [5, 6, 11, 12, 13]


### Selection Sort <a id="selection-sort"></a>

_Selection Sort_ is a straightforward and intuitive sorting algorithm. The algorithm divides the input list into two parts: a sorted sublist of items which is built up from left to right at the front (left) of the list, and a sublist of the remaining unsorted items that occupy the rest of the list. Initially, the sorted sublist is empty and the unsorted sublist is the entire input list. The algorithm proceeds by finding the smallest (or largest, depending on sorting order) element in the unsorted sublist, swapping it with the leftmost unsorted element (putting it in sorted order), and moving the sublist boundaries one element to the right.

_How Selection Sort Works:_

1. **Start with the first element in the array** as the minimum (or maximum for descending order) value. This element is considered as part of the unsorted section of the array.
2. **Scan the rest of the array** using a loop to find the minimum (or maximum) element in the unsorted section of the array.
3. **After completing the scan**, swap the minimum (or maximum) found in the unsorted portion with the first element of the unsorted portion.
4. **Move the boundary** of the unsorted portion one step to the right, effectively increasing the size of the sorted portion by one and decreasing the size of the unsorted portion by one.
5. **Repeat the process** for each element in the array until the entire array is sorted.

_Complexity:_

- **Time Complexity**:
    - **Worst-case performance**: _O(n^2)_ comparisons and swaps, where _n_ is the number of elements in the array. This is because for each element in the array, you perform _n-1_ comparisons the first time, _n-2_ the next time, and so on.
    - **Best-case performance**: _O(n^2)_ comparisons, but _O(1)_ swaps. The best-case time complexity is the same as the worst-case time complexity because even if the array is already sorted, you still need to compare each element to find the minimum.
    - **Average performance**: _O(n^2)_ comparisons and swaps.
- **Space complexity**: _O(1)_, because it only requires a constant amount of extra storage space for temporary variables, regardless of the size of the input array.


```python
def selection_sort(arr):
    # Traverse through all array elements
    for i in range(len(arr)):
        # Find the minimum element in the remaining unsorted array
        min_idx = i
        for j in range(i + 1, len(arr)):
            if arr[min_idx] > arr[j]:
                min_idx = j
        # Swap the found minimum element with the first element of the unsorted section
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr


# Example usage
arr = [64, 25, 12, 22, 11]
selection_sort(arr)
print("Selection sort:", arr)
```

    Selection sort: [11, 12, 22, 25, 64]


### Quick Sort <a id="quick-sort"></a>

_Quick Sort_ is a highly efficient sorting algorithm and is based on the divide-and-conquer principle. It is able to sort large datasets significantly faster than similar algorithms, such as bubble sort, selection sort, and insertion sort, especially when the data is random. Quick Sort is also known as "partition-exchange sort."

_How Quick Sort Works:_

1. **Choose a "pivot" element** from the array. The choice of pivot can vary—common methods include choosing the first element, the last element, the median element, or a random element.

2. **Partition the array** into two sub-arrays:
   - Elements less than or equal to the pivot.
   - Elements greater than the pivot.

   The partitioning step rearranges the array so that all elements with values less than the pivot come before the pivot, while all elements with values greater than the pivot come after it. After this step, the pivot is in its final position.

3. **Recursively apply the above steps** to the sub-array of elements with smaller values and the sub-array of elements with greater values.

The recursion ends when the sub-array has fewer than two elements, meaning that the entire array becomes sorted.

_Complexity:_

- **Time Complexity**:
   - **Best and Average Case**: The time complexity of Quick Sort is _O(n log n)_ in the best and average cases. These cases occur when the pivot element divides the list into two roughly equal halves, leading to a logarithmic number of levels of recursion.
   - **Worst Case**: The worst-case time complexity of Quick Sort is _O(n^2)_. This scenario occurs when the pivot element is the smallest or largest element of the list, leading to one sub-array with _n-1_ elements and the other with _0_ elements, which results in quadratic performance. However, this worst-case scenario can be mitigated with good pivot selection strategies.
- **Space Complexity**: _O(log n)_ in the best case due to the space used on the stack during recursion. In the worst case, it can grow to _O(n)_, depending on the implementation of the algorithm and the depth of the recursion stack.


```python
# Quick sort in place (more efficient in terms of memory)


def quick_sort(arr, low, high):
    if low < high:
        # pi is partitioning index, arr[pi] is now at right place
        pi = partition(arr, low, high)

        # Separately sort elements before partition and after partition
        quick_sort(arr, low, pi - 1)
        quick_sort(arr, pi + 1, high)


def partition(arr, low, high):
    pivot = arr[high]  # pivot
    i = (
        low - 1
    )  # Index of smaller element and indicates the right position of pivot found so far

    for j in range(low, high):
        # If current element is smaller than the pivot
        if arr[j] < pivot:
            i = i + 1
            arr[i], arr[j] = arr[j], arr[i]

    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    return i + 1


# Example usage
arr = [10, 7, 8, 9, 1, 5]
n = len(arr)
quick_sort(arr, 0, n - 1)
print("Quick sort in place:", arr)
```

    Quick sort in place: [1, 5, 7, 8, 9, 10]



```python
# Recursive implementation of the quick sort algorithm


def quick_sort(arr):
    # Base case: arrays with 0 or 1 element are already sorted
    if len(arr) <= 1:
        return arr

    # Recursive case
    pivot = arr[len(arr) // 2]

    left = [x for x in arr if x < pivot]  # All elements less than pivot
    middle = [x for x in arr if x == pivot]  # All elements equal to pivot
    right = [x for x in arr if x > pivot]  # All elements greater than pivot

    return quick_sort(left) + middle + quick_sort(right)


# Example usage
arr = [3, 6, 8, 10, 1, 2, 1]
sorted_arr = quick_sort(arr)
print("Quick sort:", sorted_arr)
```

    Quick sort: [1, 1, 2, 3, 6, 8, 10]


### Merge Sort <a id="merge-sort"></a>

_Merge Sort_ is a divide-and-conquer algorithm that divides the input array into two halves, recursively sorts the two halves, and then merges the two sorted halves. The main advantage of Merge Sort is its consistent _O(n log n)_ performance for sorting, making it efficient for large datasets. It's also stable, which means it preserves the input order of equal elements in the sorted output, an important property for certain applications.

_How Merge Sort Works:_

1. **Divide**: The array is divided into two halves (sub-arrays), and this process is repeated for each half until there are sub-arrays that can no longer be divided - essentially, when a sub-array has only one element.
2. **Conquer**: Each pair of elements is then merged back together in a sorted order. This step is recursively applied, merging smaller sorted arrays into larger sorted arrays until the whole array is merged and sorted.
3. **Merge**: The merging of two sorted arrays is accomplished through a merge function. This function compares the elements of the arrays and inserts the smaller element into the resulting array, continuing this process until all elements in the two arrays have been merged.

_Complexity:_

- **Time Complexity**: _O(n log n)_, where _n_ is the number of elements in the array. This time complexity arises because the array is split into halves (which takes _log n_ splits), and each split requires merging an n-length list.
- **Space Complexity**: _O(n)_, due to the temporary arrays used in the merge step.


```python
def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2  # Finding the mid of the array
        L = arr[:mid]  # Dividing the array elements into 2 halves
        R = arr[mid:]

        merge_sort(L)  # Sorting the first half
        merge_sort(R)  # Sorting the second half

        i = j = k = 0

        # Copy data to temp arrays L[] and R[]
        while i < len(L) and j < len(R):
            if L[i] < R[j]:
                arr[k] = L[i]
                i += 1
            else:
                arr[k] = R[j]
                j += 1
            k += 1

        # Checking if any element was left
        while i < len(L):
            arr[k] = L[i]
            i += 1
            k += 1

        while j < len(R):
            arr[k] = R[j]
            j += 1
            k += 1


# Example usage
arr = [12, 11, 13, 5, 6, 7]
merge_sort(arr)
print("Merge sort:", arr)
```

    Merge sort: [5, 6, 7, 11, 12, 13]


### Heap Sort <a id="heap-sort"></a>

_Heap Sort_ is a comparison-based sorting algorithm that uses a binary heap data structure to create a sorted array. Unlike other sorting algorithms like bubble sort, selection sort, and insertion sort, heap sort has a better worst-case time complexity of _O(n log n)_. The key idea behind heap sort is to first transform the list into a max heap (or min heap, depending on the sorting order required), a complete binary tree where the largest (or smallest) element is at the root. The algorithm then repeatedly removes the largest (or smallest) element from the heap and rebuilds the heap, until all elements are removed from the heap and inserted into the array in sorted order.

_How Heap Sort Works:_

1. **Build a Max Heap (or Min Heap)** from the input data. In a Max Heap, the largest element is at the root. The heap is represented as an array, where for any given index i, its children are at indices 2i+1 and 2i+2.

2. **Heapify**: The process of reshaping a binary tree into a Heap data structure. Each parent node is recursively checked and made sure that the parent node is larger (or smaller) than the child nodes.

3. **Sort**:
   - The root of the heap (the largest or smallest element) is swapped with the last element of the heap.
   - Reduce the size of the heap by 1, effectively removing the last element from the heap.
   - Heapify the root of the tree.
   - Repeat the above steps until the heap size is 1.

_Complexity:_

- **Time Complexity**: The time complexity of Heap Sort is _O(n log n)_ in all cases. This is because the initial build of the heap is _O(n)_, and each of the _n_ removals of the largest remaining element from the heap and subsequent heapify is _O(log n)_.
- **Space Complexity**: _O(1)_, as Heap Sort sorts the array in place with only a constant amount of extra storage space.


```python
def heapify(arr, n, i):
    largest = i  # Initialize largest as root
    l = 2 * i + 1  # left = 2*i + 1
    r = 2 * i + 2  # right = 2*i + 2

    # See if left child of root exists and is greater than root
    if l < n and arr[l] > arr[largest]:
        largest = l

    # See if right child of root exists and is greater than root
    if r < n and arr[r] > arr[largest]:
        largest = r

    # Change root, if needed
    if largest != i:
        arr[i], arr[largest] = arr[largest], arr[i]  # swap

        # Heapify the root.
        heapify(arr, n, largest)


def heapSort(arr):
    n = len(arr)

    # Build a maxheap.
    for i in range(n // 2 - 1, -1, -1):
        heapify(arr, n, i)

    # One by one extract elements
    for i in range(n - 1, 0, -1):
        arr[i], arr[0] = arr[0], arr[i]  # swap
        heapify(arr, i, 0)


# Example usage
arr = [12, 11, 13, 5, 6, 7]
heapSort(arr)
print("Heap sort:", arr)
```

    Heap sort: [5, 6, 7, 11, 12, 13]


### Counting Sort <a id="counting-sort"></a>

_Counting Sort_ is a non-comparison-based sorting algorithm that sorts the elements of an array by counting the number of occurrences of each unique element in the array. The algorithm then uses these counts to determine the position of each element in the output array. Counting Sort works best when the range of potential items in the input array (the difference between the maximum and minimum elements) is not significantly larger than the number of items. It is often used as a subroutine in more complex sorting algorithms, like Radix Sort, for sorting digits.

_How Counting Sort Works:_

1. **Find the Range**: Determine the minimum and maximum values in the input array.
2. **Count Occurrences**: Create a count array to store the count of each unique value in the input array. The size of the count array is determined by the range of input values.
3. **Cumulative Count**: Modify the count array by adding the sum of the previous counts. This step transforms the count array into a cumulative count array, which indicates the position of each element in the sorted array.
4. **Place the Elements**: Iterate through the input array, place each element in its correct position in the output array using the cumulative count array, and decrease the count by one for each element processed.
5. **Copy to Original Array** (optional): If sorting needs to be done in-place, the sorted elements from the output array can be copied back to the original array.

_Complexity:_

- **Time Complexity**: The time complexity of Counting Sort is _O(n + k)_, where _n_ is the number of elements in the input array, and _k_ is the range of the input. The efficiency of Counting Sort depends heavily on the value of _k_ (the difference between the maximum and minimum elements in the array).
- **Space Complexity**: _O(k)_, where _k_ is the range of the input. Additional space is required for the count array and the output array.


```python
def counting_sort(arr):
    # Find the maximum element in the array
    max_val = max(arr)
    min_val = min(arr)
    range_of_elements = max_val - min_val + 1

    # Create count array and initialize all elements to 0
    count = [0] * range_of_elements
    output = [0] * len(arr)

    # Store the count of each element in count array
    for i in range(0, len(arr)):
        count[arr[i] - min_val] += 1

    # Change count[i] so that count[i] contains the actual position
    # of this element in the output array
    for i in range(1, len(count)):
        count[i] += count[i - 1]

    # Build the output array
    for i in range(len(arr) - 1, -1, -1):
        output[count[arr[i] - min_val] - 1] = arr[i]
        count[arr[i] - min_val] -= 1

    # Copy the sorted elements into the original array
    for i in range(0, len(arr)):
        arr[i] = output[i]


# Example usage
arr = [4, 2, 2, 8, 3, 3, 1]
counting_sort(arr)
print("Counting sort:", arr)
```

    Counting sort: [1, 2, 2, 3, 3, 4, 8]


### Radix Sort <a id="radix-sort"></a>

_Radix Sort_ is a non-comparison-based sorting algorithm that sorts numbers by processing individual digits. Unlike other sorting algorithms that compare entire numbers to each other, Radix Sort processes the integers digit by digit, starting from the least significant digit (LSD) to the most significant digit (MSD), or vice versa, depending on the implementation. It uses counting sort (or sometimes other stable sort algorithms) as a subroutine to sort the elements based on each digit.

Because it processes digits and not the whole numbers, Radix Sort has unique characteristics and performance considerations.

_How Radix Sort Works:_

1. **Counting Sort by Digit**: Radix Sort works by performing multiple passes of Counting Sort, one for each digit. In each pass, it sorts the numbers based on the current digit being considered, starting from the least significant digit (LSD strategy) or the most significant digit (MSD strategy).
   
2. **Stable Sorting**: It's crucial that the sorting algorithm used for sorting digits is stable. A stable sort ensures that two items with the same value are ordered in the same sequence as they appear in the input. This property is essential for preserving the order of digits sorted in previous iterations as Radix Sort progresses through each digit.

3. **Repeat for Each Digit**: After sorting by the least significant digit, the algorithm moves to the next digit and performs a sort on that digit, taking into account the stability of elements sorted in previous passes. This process repeats, moving through digits, until the most significant digit is sorted.

_Complexity:_

- **Time Complexity**: The time complexity of Radix Sort is _O(d(n + k))_, where:
  - _n_ is the number of elements,
  - _k_ is the range of the input (the number of distinct digits or keys),
  - _d_ is the number of digits in the longest number.

  The efficiency of Radix Sort can be very good if the number of digits (_d_) is relatively small compared to the input size (_n_).

- **Space Complexity**: _O(n + k)_, due to the storage needed for the counting process (in Counting Sort) and the queue or temporary array used for collecting digits.


```python
def counting_sort_for_radix(input_list, place):
    size = len(input_list)
    output = [0] * size
    count = [0] * 10

    # Calculate count of elements
    for i in range(size):
        index = input_list[i] // place
        count[index % 10] += 1

    # Calculate cumulative count
    for i in range(1, 10):
        count[i] += count[i - 1]

    # Place the elements in sorted order
    i = size - 1
    while i >= 0:
        index = input_list[i] // place
        output[count[index % 10] - 1] = input_list[i]
        count[index % 10] -= 1
        i -= 1

    for i in range(size):
        input_list[i] = output[i]


def radix_sort(input_list):
    # Find the maximum number to know the number of digits
    max_num = max(input_list)
    place = 1
    # Apply counting sort to sort elements based on place value
    while max_num // place > 0:
        counting_sort_for_radix(input_list, place)
        place *= 10


# Example usage
arr = [121, 432, 564, 23, 1, 45, 788]
radix_sort(arr)
print("Radix sort:", arr)
```

    Radix sort: [1, 23, 45, 121, 432, 564, 788]


### Common Sorting Algorithms Time Complexities <a id="common-sorting-algorithms-time-complexities"></a>

Here are the time complexities for common sorting algorithms:

| Algorithm              | Best      | Average   | Worst     | Space     | Stable    | Notes |
|------------------------|-----------|-----------|-----------|-----------|-----------|-------|
| Bubble Sort            | O(n)      | O(n^2)    | O(n^2)    | O(1)      | Yes       |       |
| Insertion Sort         | O(n)      | O(n^2)    | O(n^2)    | O(1)      | Yes       |       |
| Selection Sort         | O(n^2)    | O(n^2)    | O(n^2)    | O(1)      | No        |       |
| Quick Sort             | O(n log n)| O(n log n)| O(n^2)    | O(log n)  | No        | Quicksort is usually done in place with O(log n) stack space. |
| Merge Sort             | O(n log n)| O(n log n)| O(n log n)| O(n)      | Yes       |       |
| Heap Sort              | O(n log n)| O(n log n)| O(n log n)| O(1)      | No        |       |
| Counting Sort          | O(n + k)  | O(n + k)  | O(n + k)  | O(n + k)  | Yes       | k is the range of the non-negative key values. |
| Radix Sort             | O(nk)     | O(nk)     | O(nk)     | O(n + k)  | Yes       | k is the number of passes of the sort. |

Stability: A sorting algorithm is said to be stable if two objects with equal keys appear in the same order in sorted output as they appear in the input array.

## 3. Searching Algorithms <a id="searching-algorithms"></a>

_Searching algorithms_ are designed to retrieve information or find an element from a data structure. The efficiency of a searching algorithm is crucial, especially when dealing with large datasets. There are various searching algorithms, each with its own strengths and weaknesses. The most commonly discussed searching algorithms are Linear Search and Binary Search.

### Linear Search <a id="linear-search"></a>

_Linear Search_, also known as Sequential Search, is the simplest searching algorithm. It scans each element in the list sequentially to find a match with the target value.

_How Linear Search Works:_

1. Start from the first element of the array.
2. Compare the current element with the target value.
3. If the current element matches the target value, return the index of the element.
4. If the current element does not match, move to the next element.
5. Repeat steps 2-4 until the element is found or the end of the array is reached.
6. If the element is not found, return an indication that the search was unsuccessful (e.g., -1).

_Complexity:_

- **Time Complexity**: _O(n)_, where _n_ is the number of elements in the array. In the worst case, the algorithm scans the entire array.
- **Space Complexity**: _O(1)_, since it requires a constant amount of space.


```python
def linear_search(arr, x):
    for i in range(len(arr)):
        if arr[i] == x:
            return i
    return -1


# Example usage
arr = [2, 3, 4, 10, 40]
x = 10
print("Element found at index:", linear_search(arr, x))
```

    Element found at index: 3


### Binary Search <a id="binary-search"></a>

_Binary Search_ is a much faster algorithm than Linear Search but requires that the array be sorted beforehand. It works by repeatedly dividing in half the portion of the list that could contain the item, until narrowing down the possible locations to just one.

_How Binary Search Works:_

1. Determine the middle element of the array.
2. If the middle element is equal to the target value, the search is complete.
3. If the target value is less than the middle element, repeat the search on the left half of the array.
4. If the target value is greater than the middle element, repeat the search on the right half of the array.
5. Continue this process until the element is found or the subarray becomes empty.
6. If the element is not found, return an indication of failure.

_Complexity_:

- **Time Complexity**: _O(log n)_, where n is the number of elements in the array. This is because the algorithm splits the search area by half with each step.
- **Space Complexity**: _O(1)_ for iterative implementations and _O(log n)_ for recursive implementations due to the call stack.


```python
def binary_search(arr, x):
    low, high = 0, len(arr) - 1
    while low <= high:
        mid = low + (high - low) // 2  # To avoid overflow
        # Check if x is present at mid
        if arr[mid] == x:
            return mid
        # If x is greater, ignore left half
        elif arr[mid] < x:
            low = mid + 1
        # If x is smaller, ignore right half
        else:
            high = mid - 1
    # If we reach here, the element was not present
    return -1


# Example usage
arr = [2, 3, 4, 10, 40]
x = 10
print("Element found at index:", binary_search(arr, x))
```

    Element found at index: 3


## 4. Graph Algorithms <a id="graph-algorithms"></a>

_Graph algorithms_ are a set of instructions for traversing, searching, and manipulating graphs. Graphs are a fundamental data structure in computer science and are used to model a wide variety of problems, including computer networks, social networks, transportation networks, and more. There are many different types of graph algorithms, each with its own set of applications and use cases.

### Depth-First Search (DFS) <a id="depth-first-search"></a>

_Depth-First Search_ (DFS) is a fundamental algorithm used to explore nodes and edges of a graph. It's a recursive algorithm that uses the idea of backtracking. It involves exhaustive searches of all the nodes by going ahead, if possible, else by backtracking.

_Here’s how DFS works:_

1. **Start by picking a node** (starting node) and mark the node as visited.
2. **Explore an adjacent unvisited node**, mark it as visited, and recursively apply the same process to the newly visited node.
3. **Backtrack** to explore other unvisited nodes and repeat the process until all nodes are visited or the specific condition is met.

DFS can be implemented using recursion or with a stack. The recursive approach directly leverages the function call stack, while the iterative approach uses an explicit stack data structure to hold nodes to visit next.

_Properties:_

- DFS explores as deep as possible along each branch before backtracking, making it useful for checking connectivity and finding paths in a maze or puzzle.
- It can be used to generate a maze or solve puzzles where you need to find a feasible path.
- DFS is also a basis for many algorithms like Topological Sorting, Finding Connected Components, and Solving Puzzles such as the 8 queens problem.

_Complexity:_

- **Time Complexity**: _O(V + E)_ for an adjacency list representation, where _V_ is the number of vertices and _E_ is the number of edges. In the case of an adjacency matrix representation, the time complexity is _O(V^2)_.
- **Space Complexity**: _O(V)_ due to the storage needed for the visited mark and the stack or recursion stack.


```python
graph = {
    "A": ["B", "C"],
    "B": ["D", "E"],
    "C": ["F"],
    "D": [],
    "E": ["G"],
    "F": [],
    "G": [],
}

visited = set()  # Set to keep track of visited nodes.


def dfs(visited, graph, node):  # Function for DFS
    if node not in visited:
        print(node)
        visited.add(node)
        for neighbour in graph[node]:
            dfs(visited, graph, neighbour)


# Driver Code
dfs(visited, graph, "A")
```

    A
    B
    D
    E
    G
    C
    F


#### Preorder, Inorder, Postorder Traversal <a id="preorder-inorder-postorder"></a>

In the context of trees, DFS can be used to traverse the nodes in different orders, such as Preorder, Inorder, and Postorder. These traversals are used to visit each node in a tree exactly once, and they differ in the order in which they visit the nodes.

- **Preorder Traversal**: In a Preorder traversal, the nodes are recursively visited in this order: root, left, right. This means that the root node is visited first, then the left subtree, and finally the right subtree.

- **Inorder Traversal**: In an Inorder traversal, the nodes are recursively visited in this order: left, root, right. This means that the left subtree is visited first, then the root node, and finally the right subtree.

- **Postorder Traversal**: In a Postorder traversal, the nodes are recursively visited in this order: left, right, root. This means that the left subtree is visited first, then the right subtree, and finally the root node.


```python
def preorder_traversal(root):
    if root:
        print(root.value, end=" ")
        preorder_traversal(root.left)
        preorder_traversal(root.right)


def inorder_traversal(root):
    if root:
        inorder_traversal(root.left)
        print(root.value, end=" ")
        inorder_traversal(root.right)


def postorder_traversal(root):
    if root:
        postorder_traversal(root.left)
        postorder_traversal(root.right)
        print(root.value, end=" ")


class TreeNode:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None


# Example tree
root = TreeNode("A")
root.left = TreeNode("B")
root.right = TreeNode("C")
root.left.left = TreeNode("D")
root.left.right = TreeNode("E")
root.right.left = TreeNode("F")

print("Preorder traversal:")
preorder_traversal(root)

print("\nInorder traversal:")
inorder_traversal(root)

print("\nPostorder traversal:")
postorder_traversal(root)
```

    Preorder traversal:
    A B D E C F 
    Inorder traversal:
    D B E A F C 
    Postorder traversal:
    D E B F C A 

### Breadth-First Search (BFS) <a id="breadth-first-search"></a>

_Breadth-First Search_ (BFS) is a fundamental algorithm for searching or traversing tree or graph data structures. It explores the neighbor nodes at the present depth prior to moving on to the nodes at the next depth level. BFS is particularly useful for finding the shortest path on unweighted graphs, as it guarantees the minimum number of edges that must be traversed to reach a node from the starting point.

_How BFS Works:_

1. **Start at the Selected Node**: This node is usually given as the "start" in the problem statement. If not, any node can be chosen as the starting point.

2. **Explore Neighbors**: Visit all the adjacent nodes of the starting node. For graph data structures, an adjacency list or matrix can be used to find neighbors.

3. **Mark as Visited**: Each visited node is marked to prevent revisiting and to keep track of visited nodes.

4. **Use a Queue**: BFS uses a queue to keep track of the nodes that need to be explored. Nodes are dequeued (removed from the queue) at each step of the algorithm, and their unvisited neighbors are enqueued (added to the queue).

5. **Repeat Until Queue is Empty**: The process continues until there are no more nodes to visit (i.e., the queue is empty).

_Properties of BFS:_

- **Level by Level Traversal**: BFS traverses the graph level by level, moving from one level of depth to the next.
- **Shortest Path**: In unweighted graphs, BFS finds the shortest path from the start node to every other node in terms of the number of edges.
- **Non-Recursive**: Unlike Depth-First Search (DFS), BFS is non-recursive and uses a queue to manage the nodes that need to be explored.
- **Detecting Cycles**: BFS can be used to detect cycles in an undirected graph.

_Complexity:_

- **Time Complexity**: _O(V + E)_, where _V_ is the number of vertices and _E_ is the number of edges in the graph. This is because every vertex and every edge will be explored in the worst case.
- **Space Complexity**: _O(V)_, as it needs to store the visitation status of nodes and the queue, which in the worst case might need to hold all vertices.


```python
from collections import deque

graph = {
    "A": ["B", "C"],
    "B": ["D", "E"],
    "C": ["F"],
    "D": [],
    "E": ["G"],
    "F": [],
    "G": [],
}


def bfs(graph, start):
    visited = set()  # Set to keep track of visited nodes.
    queue = deque([start])  # Initialize a queue

    while queue:
        vertex = queue.popleft()  # Remove from queue
        if vertex not in visited:
            visited.add(vertex)
            print(vertex, end=" ")

            # Add neighbors of the current vertex to the queue
            for neighbor in graph[vertex]:
                if neighbor not in visited:
                    queue.append(neighbor)


# Example usage
print("BFS traversal starting from vertex 'A':")
bfs(graph, "A")
```

    BFS traversal starting from vertex 'A':
    A B C D E F G 

### Dijkstra's Algorithm <a id="dijkstras"></a>

_Dijkstra's algorithm_ is a famous graph search algorithm that solves the shortest path problem for a graph with non-negative edge weights, producing a shortest path tree. This algorithm is widely used in networking for finding the shortest path between nodes in a network, such as the Internet routing protocols, and for solving various problems in geographical mapping, planning, and logistics.

_How Dijkstra's Algorithm Works:_

The algorithm operates on the principle of relaxation, where an approximation to the correct distance is gradually replaced by more accurate values until the shortest distance is reached.

1. **Initialization**: Start with the initial node and assign it a distance of zero. For all other nodes, set the initial distance to infinity. Keep a priority queue (or a min-heap) of all nodes in the graph, where the key of each node is its distance from the starting node.

2. **Relaxation**: Update the distance to each neighboring vertex of the current node. If the sum of the distance to the current node and the weight of the edge to a neighbor is less than the known distance to this neighbor, update the neighbor's distance with the smaller value. After updating the distances, if there was a change, reorder the priority queue.

3. **Choosing the next node**: From the priority queue, select and remove the node with the smallest distance (initially, this will be the starting node) and mark it as visited. This step guarantees that each node is processed exactly once and that when a node is reached, the shortest distance to it has already been found.

4. **Repeat**: Repeat the relaxation process for all unvisited neighbors of the current node. Continue selecting and removing the next closest node from the priority queue, marking it as visited, and performing relaxation on its neighbors.

5. **Termination**: The algorithm terminates when the priority queue becomes empty, meaning all reachable nodes have been visited and the shortest path to each has been determined.

_Properties:_

- Dijkstra's algorithm can find the shortest path from a starting node to all other nodes in the graph, not just a single destination.
- The algorithm assumes that all edge weights are non-negative. This is because, with negative edge weights, a shorter path could potentially be found after a node has already been considered and marked as visited.
- The performance of Dijkstra's algorithm can be significantly improved with a min-priority queue, typically implemented with a binary heap, Fibonacci heap, or other specialized heap structures.

_Complexity:_

- **Time Complexity**:
  - With a simple min-priority queue, it is _O(V^2)_, where _V_ is the number of vertices.
  - With a binary heap as the priority queue, it is _O((V + E) \log V)_, where _E_ is the number of edges.
  - With a Fibonacci heap, the time complexity improves to _O(V \log V + E)_.
- **Space Complexity**: _O(V)_ for the priority queue and _O(V + E)_ for the graph.


```python
import heapq


def dijkstra(graph, start):
    # Initial distances are set to infinity
    distances = {vertex: float("infinity") for vertex in graph}
    # The distance from start to itself is, of course, zero
    distances[start] = 0

    # Priority queue: stores vertices in the format (distance, vertex)
    pq = [(0, start)]

    while pq:
        # Vertex with the smallest distance
        current_distance, current_vertex = heapq.heappop(pq)

        # Nodes can get added to the priority queue multiple times.
        # We only process a vertex the first time we remove it from the priority queue.
        if current_distance > distances[current_vertex]:
            continue

        for neighbor, weight in graph[current_vertex].items():
            distance = current_distance + weight

            # Only consider this new path if it's better than any path we've
            # already found
            if distance < distances[neighbor]:
                distances[neighbor] = distance
                heapq.heappush(pq, (distance, neighbor))

    return distances


# Example graph represented as an adjacency list
graph = {
    "A": {"B": 1, "C": 4},
    "B": {"A": 1, "C": 2, "D": 5},
    "C": {"A": 4, "B": 2, "D": 1},
    "D": {"B": 5, "C": 1},
}

print(dijkstra(graph, "A"))
```

    {'A': 0, 'B': 1, 'C': 3, 'D': 4}


### Bellman-Ford Algorithm <a id="bellman-ford"></a>

The _Bellman-Ford algorithm_ is a graph search algorithm that calculates the shortest paths from a single source vertex to all other vertices in a weighted digraph (directed graph). Unlike Dijkstra's algorithm, which only works with graphs without negative weight edges, the Bellman-Ford algorithm can handle graphs with negative edge weights, making it more versatile for certain applications. The algorithm can also detect negative weight cycles in the graph.

_How the Bellman-Ford Algorithm Works:_

1. **Initialization**: Start with the initial node and assign it a distance of zero. For all other nodes, set the initial distance to infinity.

2. **Edge Relaxation**: Relax all the edges of the graph. For each edge _U -> V_ with weight _W_, if the distance to the destination node _V_ can be shortened by taking the edge _U -> V_, update the distance to _V_ to the new lower value (_distance[U] + W_). This step is repeated _|V| - 1_ times, where _|V|_ is the number of vertices in the graph.

3. **Check for Negative Weight Cycles**: After _|V| - 1_ iterations, all shortest paths are found. However, if any edge can still be relaxed, it means there is a negative weight cycle in the graph. Such cycles can reduce the path length indefinitely, making it impossible to find the shortest path. The algorithm checks for this condition and reports if a negative cycle exists.

_Properties:_

- The Bellman-Ford algorithm is slower than Dijkstra's algorithm but more versatile, as it can handle graphs with negative weight edges and detect negative weight cycles.
- It's particularly useful in applications like network routing protocols where not just the shortest paths but also the presence of negative cycles (indicative of routing loops) are of interest.

_Complexity:_

- **Time Complexity**: _O(VE)_, where _V_ is the number of vertices and _E_ is the number of edges in the graph. This is because, in the worst case, each edge is processed _|V| - 1_ times.
- **Space Complexity**: _O(V)_, due to the storage needed for the distance table and predecessor table.


```python
def bellman_ford(graph, source):
    # Step 1: Initialize distances from source to all vertices as infinite
    # and distance to the source itself as 0
    distance = {vertex: float("infinity") for vertex in graph}
    distance[source] = 0

    # Step 2: Relax all edges |V| - 1 times
    for _ in range(len(graph) - 1):
        for u in graph:
            for v, w in graph[u].items():
                if distance[u] + w < distance[v]:
                    distance[v] = distance[u] + w

    # Step 3: Check for negative-weight cycles
    for u in graph:
        for v, w in graph[u].items():
            if distance[u] + w < distance[v]:
                print("Graph contains a negative weight cycle")
                return None

    return distance


# Example graph represented as an adjacency list
graph = {
    "A": {"B": -1, "C": 4},
    "B": {"C": 3, "D": 2, "E": 2},
    "C": {},
    "D": {"B": 1, "C": 5},
    "E": {"D": -3},
}

print(bellman_ford(graph, "A"))
```

    {'A': 0, 'B': -1, 'C': 2, 'D': -2, 'E': 1}


## 5. Problem Solving Methods <a id="problem-solving-methods"></a>

Problem-solving methods in the context of algorithms and programming involve strategies and approaches for tackling computational problems. These methods are foundational to developing efficient and effective solutions for a wide range of challenges in computer science and software development.

### Two Pointers <a id="two-pointers"></a>

_The Two Pointers technique_ is a strategy that uses two pointers to solve problems that involve arrays or lists. The technique is often used to optimize brute-force solutions by reducing the time complexity of the algorithm.

_How the Two Pointers Technique Works:_

1. **Initialization**: Initialize two pointers, usually at the start and end of the array or list.

2. **Iterative Approach**: Use a while loop or a for loop to iterate through the array or list. The pointers are moved based on the problem's requirements.

3. **Pointer Movement**: The pointers can be moved in different ways, such as:
   - **Same Direction**: Both pointers move in the same direction, usually towards each other or away from each other.
   - **Opposite Direction**: One pointer moves forward while the other moves backward.

4. **Termination**: The loop terminates when the pointers meet or cross each other, or when a specific condition is met.

_Properties:_

- The Two Pointers technique is often used to solve problems that involve searching, sorting, or manipulating arrays or lists.
- It's particularly useful for problems that require finding a pair of elements that satisfy a specific condition, such as finding a pair of numbers that sum to a target value.

_Complexity:_

- The time complexity of the Two Pointers technique is often _O(n)_, where _n_ is the number of elements in the array or list. This is because the pointers usually traverse the array or list once.

_Example Problems:_

- **Finding a pair with a given sum in a sorted array**: Given a sorted array and a sum, find if there's a pair of elements that adds up to the sum. The solution involves placing one pointer at the beginning, another at the end, and moving them towards each other based on the sum of their corresponding elements.
- **Determining if a linked list has a cycle**: Using two pointers at different speeds (slow and fast), you can determine if a linked list has a cycle if the fast pointer meets the slow pointer.
- **Removing duplicates from a sorted array**: Place one pointer at the first element and another at the second element. As you move the second pointer, you check for duplicates with the first pointer and move elements as needed to remove duplicates.


```python
# Find the pair of elements in the array that sum to the target


def findPair(arr, target):
    left, right = 0, len(arr) - 1
    while left < right:
        current_sum = arr[left] + arr[right]
        if current_sum == target:
            return (left, right)
        elif current_sum < target:
            left += 1
        else:
            right -= 1
    return None


# Example usage
arr = [1, 2, 3, 4, 6]
target = 6
print("Pair found at indices:", findPair(arr, target))
```

    Pair found at indices: (1, 3)


### Sliding Window <a id="sliding-window"></a>

_The Sliding Window technique_ is a strategy for solving problems that involve arrays, lists, or strings. It involves creating a window that slides over the array or list to find a solution, usually by keeping track of a subset of elements within the window.

_How the Sliding Window Technique Works:_

1. **Initialization**: Initialize the window with the first _k_ elements of the array or list, where _k_ is the size of the window.

2. **Iterative Approach**: Use a while loop or a for loop to iterate through the array or list. The window is moved based on the problem's requirements.

3. **Window Movement**: The window can be moved in different ways, such as:
   - **Fixed Size**: The window moves by one element at a time.
   - **Variable Size**: The window expands or contracts based on the problem's requirements.

4. **Termination**: The loop terminates when the window reaches the end of the array or list, or when a specific condition is met.

_Properties:_

- The Sliding Window technique is often used to solve problems that involve finding a subset of elements that satisfy a specific condition, such as finding the maximum sum of _k_ consecutive elements in an array.

_Complexity:_

- The time complexity of the Sliding Window technique is often _O(n)_, where _n_ is the number of elements in the array or list. This is because the window usually traverses the array or list once.

_Example Problems:_

- **Maximum Sum Subarray of Size K**: Given an array of integers and a number k, find the maximum sum of any contiguous subarray of size k.
- **Longest Substring Without Repeating Characters**: Given a string, find the length of the longest substring without repeating characters.
- **Smallest Subarray with a Given Sum**: Given an array of positive integers and a target sum, find the length of the smallest contiguous subarray whose sum is greater than or equal to the target sum.


```python
# Find the maximum sum of a subarray of a fixed size k


def maxSumSubarrayOfSizeK(arr, k):
    max_sum = 0
    window_sum = 0
    window_start = 0

    for window_end in range(len(arr)):
        window_sum += arr[window_end]  # Add the next element to the window

        # Slide the window, we don't need to slide if we've not hit the required window size of 'k'
        if window_end >= k - 1:
            max_sum = max(max_sum, window_sum)
            window_sum -= arr[
                window_start
            ]  # Subtract the element going out of the window
            window_start += 1  # Slide the window ahead

    return max_sum


# Example usage
arr = [2, 1, 5, 1, 3, 2]
k = 3
print("Maximum sum of a subarray of size K:", maxSumSubarrayOfSizeK(arr, k))
```

    Maximum sum of a subarray of size K: 9


### Divide and Conquer <a id="divide-and-conquer"></a>

_The Divide and Conquer technique_ is a strategy for solving problems that involves breaking a problem into smaller subproblems, solving the subproblems independently, and then combining their solutions to solve the original problem.

_How the Divide and Conquer Technique Works:_

1. **Divide**: Break the problem into smaller subproblems that are similar to the original problem but smaller in size.

2. **Conquer**: Recursively solve the subproblems. If the subproblems are small enough, solve them directly.

3. **Combine**: Combine the solutions of the subproblems to solve the original problem.

_Properties:_

- The Divide and Conquer technique is often used to solve problems that can be broken down into smaller, similar subproblems, such as sorting, searching, and optimization problems.

_Complexity:_

- The time complexity of the Divide and Conquer technique depends on the problem being solved. In general, it's often _O(n log n)_ for sorting and searching problems, where _n_ is the number of elements in the input.

_Example Problems:_

- **Merge Sort**: A sorting algorithm that uses the Divide and Conquer technique to sort an array by breaking it into smaller subarrays, sorting the subarrays, and then merging them back together.
- **Quick Sort**: A sorting algorithm that uses the Divide and Conquer technique to sort an array by selecting a "pivot" element, partitioning the array into two subarrays, and then recursively sorting the subarrays.
- **Binary Search**: A searching algorithm that uses the Divide and Conquer technique to find a target value in a sorted array by repeatedly dividing the search interval in half.


```python
# Maximum sum of a subarray of any size


def maxCrossingSum(arr, l, m, h):
    # Include elements on left of mid
    sm = 0
    left_sum = float("-inf")

    for i in range(m, l - 1, -1):
        sm = sm + arr[i]
        if sm > left_sum:
            left_sum = sm

    # Include elements on right of mid
    sm = 0
    right_sum = float("-inf")
    for i in range(m + 1, h + 1):
        sm = sm + arr[i]
        if sm > right_sum:
            right_sum = sm

    # Return sum of elements on left and right of mid
    return left_sum + right_sum


def maxSubArraySum(arr, l, h):
    # Base Case: Only one element
    if l == h:
        return arr[l]

    # Find middle point
    m = (l + h) // 2

    # Return maximum of following three possible cases
    return max(
        maxSubArraySum(arr, l, m),  # Maximum subarray sum in left half
        maxSubArraySum(arr, m + 1, h),  # Maximum subarray sum in right half
        maxCrossingSum(
            arr, l, m, h
        ),  # Maximum subarray sum such that the subarray crosses the midpoint
    )


# Example usage
arr = [-2, -5, 6, -2, -3, 1, 5, -6]
n = len(arr)
max_sum = maxSubArraySum(arr, 0, n - 1)
print("Maximum contiguous sum is", max_sum)
```

    Maximum contiguous sum is 7


### Recursion <a id="recursion"></a>

_Recursion_ is a programming technique in which a function calls itself to solve a problem. It's a powerful and elegant way to solve problems that can be broken down into smaller, similar subproblems.

_How Recursion Works:_

1. **Base Case**: The recursion stops when a specific condition is met. This is called the base case and is essential to prevent infinite recursion.

2. **Recursive Case**: The function calls itself with a smaller input, moving closer to the base case.

3. **Termination**: The recursion terminates when the base case is reached, and the function returns a value.

_Properties:_

- Recursion is often used to solve problems that can be broken down into smaller, similar subproblems, such as tree and graph traversal, sorting, and searching problems.
- Recursive calls can be more memory-intensive than iterative solutions due to the overhead of maintaining the call stack. For deep recursion, this can lead to significant performance penalties.
- Excessive recursion can lead to a stack overflow error if the recursion goes too deep.

_Complexity:_

- The time complexity of a recursive algorithm depends on the problem being solved. In general, it's often _O(2^n)_ for problems that involve generating all subsets or permutations of a set, and _O(n!)_ for problems that involve generating all permutations of a set.
- The space complexity of a recursive algorithm depends on the maximum depth of the recursion. In general, it's often _O(n)_ for problems that involve tree or graph traversal, and _O(n)_ for problems that involve generating all subsets or permutations of a set.

_Example Problems:_

- **Factorial**: The factorial of a non-negative integer _n_ is the product of all positive integers less than or equal to _n_. It's often defined recursively as _n! = n * (n - 1)!_ with a base case of _0! = 1_.
- **Fibonacci Sequence**: The Fibonacci sequence is a series of numbers in which each number is the sum of the two preceding ones. It's often defined recursively as _fib(n) = fib(n - 1) + fib(n - 2)_ with base cases of _fib(0) = 0_ and _fib(1) = 1_.
- **Tree Traversal**: Recursion is often used to traverse trees, such as in Preorder, Inorder, and Postorder traversals.


```python
# Factorial of a number using recursion


def factorial(n):
    # Base case: factorial of 0 is 1
    if n == 0:
        return 1
    # Recursive step: n! = n * (n-1)!
    else:
        return n * factorial(n - 1)


# Example usage
print(factorial(5))  # Output: 120
```

    120


### Dynamic Programming <a id="dynamic-programming"></a>

_Dynamic Programming (DP)_ is a method for solving complex problems by breaking them down into simpler subproblems. It's particularly useful for optimization problems, such as finding the shortest path, the longest common subsequence, or the minimum cost.

_How Dynamic Programming Works:_

1. **Overlapping Subproblems**: Identify and solve the subproblems that are repeated multiple times. This is a key feature of dynamic programming and is often the reason for its efficiency.

2. **Optimal Substructure**: Ensure that the problem can be broken down into smaller, similar subproblems, and that the optimal solution to the original problem can be constructed from the optimal solutions of its subproblems.

3. **Memoization or Tabulation**: Use memoization (top-down) or tabulation (bottom-up) to store the results of subproblems and reuse them when needed. This avoids redundant calculations and improves the efficiency of the algorithm.

_Properties:_

- Dynamic Programming is often used to solve optimization problems that can be broken down into smaller, similar subproblems, such as finding the shortest path, the longest common subsequence, or the minimum cost.
- The efficiency of dynamic programming depends on the presence of overlapping subproblems and optimal substructure. If these properties are not present, dynamic programming may not be the best approach.
- Dynamic programming can be implemented using either a top-down approach (memoization) or a bottom-up approach (tabulation).

_Complexity:_

- The time complexity of a dynamic programming algorithm depends on the problem being solved. In general, it's often _O(n^2)_ for problems that involve finding the longest common subsequence, and _O(n^3)_ for problems that involve finding the shortest path in a graph.
- The space complexity of a dynamic programming algorithm depends on the maximum size of the memoization table or tabulation table. In general, it's often _O(n)_ for problems that involve finding the longest common subsequence, and _O(n^2)_ for problems that involve finding the shortest path in a graph.

_Example Problems:_

- **Fibonacci Sequence**: The Fibonacci sequence can be solved using dynamic programming to avoid redundant calculations of the same subproblems.
- **Longest Common Subsequence**: Given two strings, find the length of the longest subsequence present in both of them.
- **Shortest Path in a Graph**: Find the shortest path from a source node to a destination node in a weighted graph.


```python
# Memoization example: Fibonacci numbers


def fib_memo(n, memo={}):
    if n in memo:
        return memo[n]
    if n <= 2:
        return 1
    memo[n] = fib_memo(n - 1, memo) + fib_memo(n - 2, memo)
    return memo[n]


# Example usage
print(fib_memo(10))  # Output: 55
```

    55



```python
# Tabulation example: Fibonacci numbers


def fib_tab(n):
    if n <= 2:
        return 1
    fib_table = [0] * (n + 1)
    fib_table[1] = 1
    fib_table[2] = 1
    for i in range(3, n + 1):
        fib_table[i] = fib_table[i - 1] + fib_table[i - 2]
    return fib_table[n]


# Example usage
print(fib_tab(10))  # Output: 55
```

    55


### Greedy Algorithms <a id="greedy-algorithms"></a>

_Greedy algorithms_ are a class of algorithms that make a series of choices, each of which is the best at the moment, with the hope that the series of best choices will lead to an optimal solution. Greedy algorithms are often used to solve optimization problems, such as finding the shortest path, the minimum spanning tree, or the minimum cost.

_How Greedy Algorithms Work:_

1. **Initialization**: Start with an empty solution and a set of choices.

2. **Greedy Choice**: Make the best choice at the moment, based on the problem's requirements. This choice is often made based on a specific criterion, such as the smallest weight, the shortest distance, or the highest value.

3. **Feasibility**: Check if the choice is feasible and does not violate any constraints. If the choice is feasible, add it to the solution.

4. **Termination**: The algorithm terminates when all choices have been made and the solution is complete.

_Properties:_

- Greedy algorithms are often used to solve optimization problems that can be broken down into a series of choices, such as finding the shortest path, the minimum spanning tree, or the minimum cost.
- Greedy algorithms are often simple to implement and can be more efficient than other algorithms for certain problems. However, they do not always guarantee an optimal solution.

_Complexity:_

- The time complexity of a greedy algorithm depends on the problem being solved. In general, it's often _O(n log n)_ for problems that involve sorting, and _O(n)_ for problems that involve finding the shortest path or the minimum spanning tree.
- The space complexity of a greedy algorithm depends on the maximum size of the data structures used to store the choices and the solution. In general, it's often _O(n)_ for problems that involve sorting, and _O(n^2)_ for problems that involve finding the shortest path or the minimum spanning tree.

_Example Problems:_

- **Kruskal’s and Prim’s Algorithms**: Used for finding the Minimum Spanning Tree (MST) of a graph, where the goal is to connect all points with the minimum total weighting.
- **Dijkstra’s Algorithm**: For finding the shortest path from a single source to all other vertices in a graph with non-negative edge paths.
- **Huffman Coding**: Used for data compression, Huffman coding builds a variable-length prefix code based on the frequencies of the characters in the data set.
- **Fractional Knapsack Problem**: Unlike the 0/1 Knapsack problem, fractional knapsack allows breaking items to fit into the bag, maximizing total value.


```python
# Fractional knapsack problem


def fractional_knapsack(value, weight, capacity):
    # Indexes of items sorted by value/weight ratio
    index = list(range(len(value)))
    ratio = [v / w for v, w in zip(value, weight)]
    index.sort(key=lambda i: ratio[i], reverse=True)

    max_value = 0
    for i in index:
        if weight[i] <= capacity:
            max_value += value[i]
            capacity -= weight[i]
        else:
            max_value += value[i] * (capacity / weight[i])
            break
    return max_value


# Example usage
value = [60, 100, 120]
weight = [10, 20, 30]
capacity = 50
print("Maximum value in knapsack =", fractional_knapsack(value, weight, capacity))
```

    Maximum value in knapsack = 240.0


### Backtracking <a id="backtracking"></a>

_Backtracking_ is a general algorithmic technique that incrementally builds candidates to the solutions and abandons a candidate ("backtracks") as soon as it determines that the candidate cannot possibly be completed to a valid solution. It's often used to solve problems that involve finding all possible solutions to a problem, such as finding all permutations, combinations, or subsets of a set.

_How Backtracking Works:_

Backtracking algorithms try to build a solution to a computational problem incrementally, one piece at a time. Whenever the algorithm realizes that the current solution cannot be completed to a valid solution, it removes the last component added to the solution and tries another path.

This technique is often applied to solve constraint satisfaction problems such as puzzles, combinatorial problems, and parsing. Common examples include the N-Queens problem, solving mazes, crossword puzzles, and many types of optimization problems.

_Key Concepts:_

- **Decision Tree**: Backtracking algorithms conceptually build a decision tree, where each node represents a partial solution. Traversing the tree involves making a series of decisions that gradually complete a solution.
- **Pruning**: The process of eliminating branches from the decision tree based on constraints and conditions, without fully exploring them, is known as pruning. This is crucial for the efficiency of backtracking algorithms, as it significantly reduces the search space.
- **State Space Tree**: This is a representation of all possible states (or partial states) of the solution. Backtracking traverses this tree by exploring child nodes (possible continuations of a partial solution) depth-first.

_Steps in Backtracking Algorithms:_

1. **Choose**: Select a candidate element to add to the current solution.
2. **Constrain**: Check if the current candidate violates any constraints. If it does, abandon this candidate and backtrack.
3. **Goal**: Check if the current solution satisfies the problem's goal. If it does, accept this solution.
4. **Backtrack**: If the current candidate does not lead to a solution, remove it and try another candidate.

_Properties:_

- Backtracking is often used to solve problems that involve finding all possible solutions to a problem, such as finding all permutations, combinations, or subsets of a set.
- Backtracking is often implemented using recursion, and it can be more memory-intensive than other algorithms due to the overhead of maintaining the call stack.

_Complexity:_

- The time complexity of a backtracking algorithm depends on the problem being solved. In general, it's often _O(n!)_ for problems that involve generating all permutations of a set, and _O(2^n)_ for problems that involve generating all subsets of a set.
- The space complexity of a backtracking algorithm depends on the maximum depth of the recursion. In general, it's often _O(n)_ for problems that involve generating all permutations of a set, and _O(n)_ for problems that involve generating all subsets of a set.

_Example Problems:_

- **N-Queens Problem**: Given an _n x n_ chessboard, place _n_ queens on the board such that no two queens attack each other.
- **Sudoku Solver**: Given a partially filled 9x9 grid, fill the grid with digits such that each row, column, and 3x3 subgrid contains all the digits from 1 to 9.
- **Generating All Subsets**: Given a set of distinct integers, generate all possible subsets (the power set) of the set.
- **Generating All Permutations**: Given a collection of distinct integers, generate all possible permutations of the integers.


```python
# N-Queens problem


def is_safe(board, row, col, n):
    # Check this row on left side
    for i in range(col):
        if board[row][i] == 1:
            return False

    # Check upper diagonal on left side
    for i, j in zip(range(row, -1, -1), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    # Check lower diagonal on left side
    for i, j in zip(range(row, n, 1), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    return True


def solve_nq_util(board, col, n):
    if col >= n:
        return True

    for i in range(n):
        if is_safe(board, i, col, n):
            board[i][col] = 1
            if solve_nq_util(board, col + 1, n):
                return True
            board[i][col] = 0  # Backtrack

    return False


def solve_n_queens(n):
    board = [[0 for _ in range(n)] for _ in range(n)]
    if not solve_nq_util(board, 0, n):
        print("Solution does not exist")
        return False
    for line in board:
        print(line)
    return True


# Example usage
n = 4
solve_n_queens(n)
```

    [0, 0, 1, 0]
    [1, 0, 0, 0]
    [0, 0, 0, 1]
    [0, 1, 0, 0]





    True


