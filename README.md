# 500-datastructures-and-algorithms
An attempt to solve 500 of data structure problems

1. Find a pair in the array with given sum
2. Check for zero sub array
3. Find subarrays with zero sum
4. Merge sort
5. Producer Consumer
6. Channel Traversal problem
7. Rod Cutting
8. Level order Tree Traversal
9. In, Pre and Post order Tree Traversal

## Learnings
* Mutex
* Semaphores - https://en.wikipedia.org/wiki/Semaphore_(programming)#Library_analogy
* Observer vs Publish-Subscribe
* Set, OrderedSet (or SortedSet) (collections)
* Producer-Consumer
* Remove an element that is pointed by a pointer from a singly linked list
* How LRU cache works & what datastructure it uses
* How to call a method in different ways in Ruby
* Stubs and Mocks and Fakes
* How sidekiq works
* Multithreading in Ruby
* Design a newsfeed system - schema & optimization
* Procs, Lambda, Blocks
* Sidekiq batches
* Module vs class
* When to go with synchronous / asynchronous languages?
* When to go with SQL / NOSQL datastores?
* Scale application server
* Tree Traversals - Inorder, Preorder, Postorder, Levelorder
* Difference between scope and class method
* Disjoint sets
* Detect cycle in Directed / Undirected graph
* Yield - Yielding to the block that is defined in the function call. The same method can be resused for different purposes by having different yield blocks
* p = Proc.new { puts "Hello" }, p.call
* Difference between PUT & POST and when to use what (idempotency)
* How hash works in O(1) complexity
* OPTIONS keyword
* Amortized Analysis - When one input changes the running time of subsequent inputs, we go for amortized analysis
* Algorithm Analysis - Best, Worst & Average case
* Dynamic Arrays (like in Ruby)
* Why array is o(1) - because it's memory is allocated in linear fashion and knowing the memory location of first will get me kth item easily
* 0/1 Knapsack
* Leaky bucket / Token Bucket
* DSL - Domain specific language
* Master theorem (analysis of algorithms)
* Optimal Substructure
* http://www.oodesign.com/
* HTTP2 - Multiplexing, Streaming, Header Compression, Default SSL
* Stored Procedures
* Stack vs Heap
* Closures in JS
* Functional Programming Language - Supports Higher Order Functions
* JS treats functions as first class citizens (like variables) - First Class Functions
* Branch Prediction - https://www.quora.com/What-is-branch-prediction-in-the-context-of-CPUs
* Eventual vs Strong / Immediate Consistency
* Go routines, Channels, Buffered Channels, Waitgroups
* Structs instead of classes in golang
* Concurrency, Ease of deployment with Go
* Datatypes in Redis
* Analyzers and Tokenizers in Elasticsearch
* Callback queues - Single or Multiple threads
* Dynamic Memory Allocation / Manual Memory Management - malloc, dealloc (optional GC like C language)
* Declarative vs Imperative
* Functional Languages
  1. Functions can't change their inputs
  2. Can't change any variables (Immutable)
  3. Loops cannot be present (as we increment counter variables)
* method_missing in Ruby
* In one line, array of integers - multiply with random number and put the original numbers in a hash with even and odd as keys (Use inject method)
* load vs require vs require_relative
* public, private, protected - protected can be called by the instance of the class and any other instance of the class as well - https://www.youtube.com/watch?v=s1wG678R7ok
* Lazy Instantiation - Rails
* HTTP Headers - Cookie, SetCookie, Accept, Accept-Charset, Authentication, Authorization, Accept-Encoding, Connection, Keep-Alive, Connection, Keep-Alive

## Some items to explore
* what is mock in unit testing - https://www.youtube.com/watch?v=YUcxik0PnWY (by mock testing we can bypass some code block and make it always return true, basically whenever you mock it just doesn;t run that particular block of code)
* Mocking - Specify which functions you want to bypass
* modules and classes
* how sidekiq works
* sidekiq parallel threads
* nodejs and rails
* when to go with programming language
* what can u do in psql that u cannot do in mongo
* how to call a method in various ways
* procs blocks lambda
* nlogn or n^2 if space is not constaint - all integers

## Javascript
* Error first callbacks
* Callback hell - control flow library, like async : async await : generators with Promises
* XSS
* Timing attack
* undefined and not defined
* Hoisting
```js
var Employee = function (name, company, salary) {
  this.name = name || "";       //Public attribute default value is null
  this.company = company || ""; //Public attribute default value is null
  this.salary = salary || 5000; //Public attribute default value is null
  // Private method
  var increaseSalary = function () {
    this.salary = this.salary + 1000;
  };
  // Public method
  this.dispalyIncreasedSalary = function() {
    increaseSlary();
    console.log(this.salary);
  };
};
// Create Employee class object
var emp1 = new Employee("John","Pluto",3000);
// Create Employee class object
var emp2 = new Employee("Merry","Pluto",2000);
// Create Employee class object
var emp3 = new Employee("Ren","Pluto",2500);
```
* local and global execution context - closures, lexical scope
```js
let val = 7
function createAdder() {
  function addNumbers(a, b) {
    let ret = a + b
    return ret
  }
  return addNumbers
}
let adder = createAdder()
let sum = adder(val, 8)
console.log('example of function returning a function: ', sum)
```


Hashing Strategy
-- The hash value of the data’s key is used to find out the partition. A good hash function can distribute data uniformly across multiple partitions.

JWT
Header, Data, Signature
Libraries - jsonwebtoken, jsonwebtoken

Transposing Matrix - Make columns as rows and rows as columns

(epoch_time - number_of_seconds) gives us eooch time 10 seconds ago

Min Heap - Min Element on top of the heap
Max Heap - Max Element on top of the heap
Time Complexity for rearranging a node in Heap - O(log k), where k is number of nodes in Heap
Closures - for creating dynamic functions

```js
function makeSizer(size) {
  return function() {
    document.body.style.fontSize = size + 'px';
  };
}

var size12 = makeSizer(12);
var size14 = makeSizer(14);
var size16 = makeSizer(16);
```
