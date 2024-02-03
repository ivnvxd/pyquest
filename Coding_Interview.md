# Coding Interview

## Algorithms study cheatsheets

#### Basics
- [Array](coding_interview/Array.md)
- [String](coding_interview/String.md)
- [Hash table](coding_interview/Hash_table.md)
- [Recursion](coding_interview/Recursion.md)
- [Sorting and searching](coding_interview/Sorting_and_searching.md)
#### Data structures
- [Matrix](coding_interview/Matrix.md)
- [Linked list](coding_interview/Linked_list.md)
- [Queue](coding_interview/Queue.md)
- [Stack](coding_interview/Stack.md)
- [Interval](coding_interview/Interval.md)
#### Advanced data structures
- [Tree](coding_interview/Tree.md)
- [Graph](coding_interview/Graph.md)
- [Heap](coding_interview/Heap.md)
- [Trie](coding_interview/Trie.md)
#### Additional
- [Dynamic programming](coding_interview/Dynamic_programming.md)
- [Binary](coding_interview/Binary.md)
- [Math](coding_interview/Math.md)
- [Geometry](coding_interview/Geometry.md)

## General interview tips

Clarify any assumptions you made subconsciously. Many questions are under-specified on purpose.

Always validate input first. Check for invalid/empty/negative/different type input. Never assume you are given the valid parameters. Alternatively, clarify with the interviewer whether you can assume valid input (usually yes), which can save you time from writing code that does input validation.

Are there any time/space complexity requirements/constraints?

Check for off-by-one errors.

In languages where there are no automatic type coercion, check that concatenation of values are of the same type: `int`/`str`/`list`.

After finishing your code, use a few example inputs to test your solution.

Is the algorithm meant to be run multiple times, for example in a web server? If yes, the input is likely to be preprocess-able to improve the efficiency in each call.

Use a mix of functional and imperative programming paradigms:

- Write pure functions as much as possible.
- Pure functions are easier to reason about and can help to reduce bugs in your implementation.
- Avoid mutating the parameters passed into your function especially if they are passed by reference unless you are sure of what you are doing.
- However, functional programming is usually expensive in terms of space complexity because of non-mutation and the repeated allocation of new objects. On the other hand, imperative code is faster because you operate on existing objects. Hence you will need to achieve a balance between accuracy vs efficiency, by using the right amount of functional and imperative code where appropriate.
- Avoid relying on and mutating global variables. Global variables introduce state.
- If you have to rely on global variables, make sure that you do not mutate it by accident.

Generally, to improve the speed of a program, we can either: (1) choose a more appropriate data structure/algorithm; or (2) use more memory. The latter demonstrates a classic space vs. time tradeoff, but it is not necessarily the case that you can only achieve better speed at the expense of space. Also, note that there is often a theoretical limit to how fast your program can run (in terms of time complexity). For instance, a question that requires you to find the smallest/largest element in an unsorted array cannot run faster than O(N).

Data structures are your weapons. Choosing the right weapon for the right battle is the key to victory. Be very familiar about the strengths of each data structure and the time complexities for its various operations.

Data structures can be augmented to achieve efficient time complexities across different operations. For example, a hash map can be used together with a doubly-linked list to achieve O(1) time complexity for both the `get` and `put` operation in an [LRU cache](https://leetcode.com/problems/lru-cache/).

Hash table is probably the most commonly used data structure for algorithm questions. If you are stuck on a question, your last resort can be to enumerate through the common possible data structures (thankfully there aren't that many of them) and consider whether each of them can be applied to the problem. This has worked for me sometimes.

If you are cutting corners in your code, state that out loud to your interviewer and say what you would do in a non-interview setting (no time constraints). E.g., I would write a regex to parse this string rather than using `split()` which may not cover all cases.

## Study and practice plan

### Week 1 - 4: Topical study + practice

#### Week 1
|Topic|Priority|Time required|
|---|---|---|
|[Array](coding_interview/Array.md)|High|2 hours|
|[String](coding_interview/String.md)|High|3 hours|
|[Hash table](coding_interview/Hash_table.md)|Mid|3 hours|
|[Recursion](coding_interview/Recursion.md)|Mid|3 hours|

#### Week 2
|Topic|Priority|Time required|
|---|---|---|
|[Sorting and searching](coding_interview/Sorting_and_searching.md)|High|3 hours|
|[Matrix](coding_interview/Matrix.md)|High|1 hour|
|[Linked list](coding_interview/Linked_list.md)|Mid|3 hours|
|[Queue](coding_interview/Queue.md)|Mid|2 hours|
|[Stack](coding_interview/Stack.md)|Mid|2 hours|

#### Week 3
|Topic|Priority|Time required|
|---|---|---|
|[Tree](coding_interview/Tree.md)|High|4 hours|
|[Graph](coding_interview/Graph.md)|High|4 hours|
|[Heap](coding_interview/Heap.md)|Mid|3 hours|
|[Trie](coding_interview/Trie.md)|Mid|3 hours|

#### Week 4
|Topic                                                                                        | Priority | Time required |
|---|---|---|
|[Interval](coding_interview/Interval.md)|Mid|2 hours|
|[Dynamic programming](coding_interview/Dynamic_programming.md)|Low|4 hours|
|[Binary](coding_interview/Binary.md)|Low|2 hours|
|[Math](coding_interview/Math.md)|Low|1 hour|
|[Geometry](coding_interview/Geometry.md)|Low|1 hour|

### Week 5 - 12: In-depth practice

To track progress: [Grind 75](https://www.techinterviewhandbook.org/grind75/)
#### Week 5
|Problem|Difficulty|Duration|
|---|---|---|
|[Two Sum](https://leetcode.com/problems/two-sum)|Easy|15 mins|
|[Valid Parentheses](https://leetcode.com/problems/valid-parentheses)|Easy|20 mins|
|[Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists)|Easy|20 mins|
|[Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock)|Easy|20 mins|
|[Valid Palindrome](https://leetcode.com/problems/valid-palindrome)|Easy|15 mins|
|[Invert Binary Tree](https://leetcode.com/problems/invert-binary-tree)|Easy|15 mins|
|[Valid Anagram](https://leetcode.com/problems/valid-anagram)|Easy|15 mins|
|[Binary Search](https://leetcode.com/problems/binary-search)|Easy|15 mins|
|[Flood Fill](https://leetcode.com/problems/flood-fill)|Easy|20 mins|
|[Lowest Common Ancestor of a Binary Search Tree](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree)|Easy|20 mins|
|[Balanced Binary Tree](https://leetcode.com/problems/balanced-binary-tree)|Easy|15 mins|
|[Linked List Cycle](https://leetcode.com/problems/linked-list-cycle)|Easy|20 mins|

#### Week 6
|Problem|Difficulty|Duration|
|---|---|---|
|[Implement Queue using Stacks](https://leetcode.com/problems/implement-queue-using-stacks)|Easy|20 mins|
|[First Bad Version](https://leetcode.com/problems/first-bad-version)|Easy|20 mins|
|[Ransom Note](https://leetcode.com/problems/ransom-note)|Easy|15 mins|
|[Climbing Stairs](https://leetcode.com/problems/climbing-stairs)|Easy|20 mins|
|[Longest Palindrome](https://leetcode.com/problems/longest-palindrome)|Easy|20 mins|
|[Reverse Linked List](https://leetcode.com/problems/reverse-linked-list)|Easy|20 mins|
|[Majority Element](https://leetcode.com/problems/majority-element)|Easy|20 mins|
|[Add Binary](https://leetcode.com/problems/add-binary)|Easy|15 mins|
|[Diameter of Binary Tree](https://leetcode.com/problems/diameter-of-binary-tree)|Easy|30 mins|
|[Middle of the Linked List](https://leetcode.com/problems/middle-of-the-linked-list)|Easy|20 mins|
|[Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree)|Easy|15 mins|
|[Contains Duplicate](https://leetcode.com/problems/contains-duplicate)|Easy|15 mins|

#### Week 7
|Problem|Difficulty|Duration|
|---|---|---|
|[Min Stack](https://leetcode.com/problems/min-stack)|Medium|20 mins|
|[Maximum Subarray](https://leetcode.com/problems/maximum-subarray)|Medium|20 mins|
|[Insert Interval](https://leetcode.com/problems/insert-interval)|Medium|25 mins|
|[01 Matrix](https://leetcode.com/problems/01-matrix)|Medium|30 mins|
|[K Closest Points to Origin](https://leetcode.com/problems/k-closest-points-to-origin)|Medium|30 mins|
|[Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters)|Medium|30 mins|
|[3Sum](https://leetcode.com/problems/3sum)|Medium|30 mins|
|[Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal)|Medium|20 mins|
|[Clone Graph](https://leetcode.com/problems/clone-graph)|Medium|25 mins|
|[Evaluate Reverse Polish Notation](https://leetcode.com/problems/evaluate-reverse-polish-notation)|Medium|30 mins|

#### Week 8
|Problem|Difficulty|Duration|
|---|---|---|
|[Course Schedule](https://leetcode.com/problems/course-schedule)|Medium|30 mins|
|[Implement Trie (Prefix Tree)](https://leetcode.com/problems/implement-trie-prefix-tree)|Medium|35 mins|
|[Coin Change](https://leetcode.com/problems/coin-change)|Medium|25 mins|
|[Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self)|Medium|30 mins|
|[Validate Binary Search Tree](https://leetcode.com/problems/validate-binary-search-tree)|Medium|20 mins|
|[Number of Islands](https://leetcode.com/problems/number-of-islands)|Medium|25 mins|
|[Rotting Oranges](https://leetcode.com/problems/rotting-oranges)|Medium|30 mins|
|[Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array)|Medium|30 mins|

#### Week 9
|Problem|Difficulty|Duration|
|---|---|---|
|[Combination Sum](https://leetcode.com/problems/combination-sum)|Medium|30 mins|
|[Permutations](https://leetcode.com/problems/permutations)|Medium|30 mins|
|[Merge Intervals](https://leetcode.com/problems/merge-intervals)|Medium|30 mins|
|[Lowest Common Ancestor of a Binary Tree](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree)|Medium|25 mins|
|[Time Based Key-Value Store](https://leetcode.com/problems/time-based-key-value-store)|Medium|35 mins|
|[Accounts Merge](https://leetcode.com/problems/accounts-merge)|Medium|30 mins|
|[Sort Colors](https://leetcode.com/problems/sort-colors)|Medium|25 mins|
|[Word Break](https://leetcode.com/problems/word-break)|Medium|30 mins|

#### Week 10
|Problem|Difficulty|Duration|
|---|---|---|
|[Partition Equal Subset Sum](https://leetcode.com/problems/partition-equal-subset-sum)|Medium|30 mins|
|[String to Integer (atoi)](https://leetcode.com/problems/string-to-integer-atoi)|Medium|25 mins|
|[Spiral Matrix](https://leetcode.com/problems/spiral-matrix)|Medium|25 mins|
|[Subsets](https://leetcode.com/problems/subsets)|Medium|30 mins|
|[Binary Tree Right Side View](https://leetcode.com/problems/binary-tree-right-side-view)|Medium|20 mins|
|[Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring)|Medium|25 mins|
|[Unique Paths](https://leetcode.com/problems/unique-paths)|Medium|20 mins|
|[Construct Binary Tree from Preorder and Inorder Traversal](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal)|Medium|25 mins|
|[Container With Most Water](https://leetcode.com/problems/container-with-most-water)|Medium|35 mins|

#### Week 11
|Problem|Difficulty|Duration|
|---|---|---|
|[Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number)|Medium|30 mins|
|[Word Search](https://leetcode.com/problems/word-search)|Medium|30 mins|
|[Find All Anagrams in a String](https://leetcode.com/problems/find-all-anagrams-in-a-string)|Medium|30 mins|
|[Minimum Height Trees](https://leetcode.com/problems/minimum-height-trees)|Medium|30 mins|
|[Task Scheduler](https://leetcode.com/problems/task-scheduler)|Medium|35 mins|
|[LRU Cache](https://leetcode.com/problems/lru-cache)|Medium|30 mins|
|[Kth Smallest Element in a BST](https://leetcode.com/problems/kth-smallest-element-in-a-bst)|Medium|25 mins|
|[Minimum Window Substring](https://leetcode.com/problems/minimum-window-substring)|Hard|30 mins|

#### Week 12
| Problem                                                                                                      | Difficulty | Duration |
| ------------------------------------------------------------------------------------------------------------ | ---------- | -------- |
| [Serialize and Deserialize Binary Tree](https://leetcode.com/problems/serialize-and-deserialize-binary-tree) | Hard       | 40 mins  |
| [Trapping Rain Water](https://leetcode.com/problems/trapping-rain-water)                                     | Hard       | 35 mins  |
| [Find Median from Data Stream](https://leetcode.com/problems/find-median-from-data-stream)                   | Hard       | 30 mins  |
| [Word Ladder](https://leetcode.com/problems/word-ladder)                                                     | Hard       | 45 mins  |
| [Basic Calculator](https://leetcode.com/problems/basic-calculator)                                           | Hard       | 40 mins  |
| [Maximum Profit in Job Scheduling](https://leetcode.com/problems/maximum-profit-in-job-scheduling)           | Hard       | 45 mins  |
| [Merge k Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists)                                   | Hard       | 30 mins  |
| [Largest Rectangle in Histogram](https://leetcode.com/problems/largest-rectangle-in-histogram)               | Hard       | 35 mins  |

## License

Copyright (c) 2017-Present [Yangshun Tay](https://github.com/yangshun/tech-interview-handbook)
