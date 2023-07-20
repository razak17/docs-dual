┌─────────────────────────┐
│* Async vs multithreading│
└─────────────────────────┘
┌────────┐
│** async│
└────────┘
a single-threaded programming model where multiple tasks are executed concurrently without blocking the execution of other code. It uses callbacks, promises, or async/await syntax to handle the completion of asynchronous operations.
*** History
Callback
Promise (es6)
Async/await (es7)

┌─────────────────┐
│** multithreading│
└─────────────────┘
a concurrent programming model where multiple threads execute simultaneously, each thread executing a different piece of code. Each thread has its own execution stack, and they can share the same memory. Multithreading is not natively supported in JavaScript.

┌─────────────────────────────────────┐
│* Blocking vs non-blocking operations│
└─────────────────────────────────────┘

┌──────────────────────┐
│** Blocking operations│
└──────────────────────┘
an operation that stops the program's execution until it is completed. In other words, it prevents the program from doing anything else while it is running. For example, a network request that takes a long time to complete can block the execution of other code until it returns a response.
┌──────────────────────────┐
│** Non-blocking operations│
└──────────────────────────┘
does not block the program's execution. Instead, it allows the program to continue executing other code while it runs in the background. Non-blocking operations are typically asynchronous and are commonly used to handle I/O operations like network requests, file operations, and user input.

┌───────────────────────────┐
│* Event loop and Call stack│
└───────────────────────────┘
┌─────────────┐
│** Event Loop│
└─────────────┘
a single-threaded loop that monitors the call stack and the callback queue. If the call stack is empty, it takes the first event from the queue and pushes it to the call stack, which effectively runs it.
*** Both the browser and Node.js are always running a single-threaded event loop to run your code.
*** On each go-around, it runs all synchronous code. But it might also queue up asynchronous events to be called back later.
*** For example: Lets say you wanted to run a function, but you need to get some data from the network. So you make an asynchronous call to the network, and the event loop will continue running while the network request is executed in a separate thread pool.
*** At some point, the data from the network request is returned and it lets the event loop know it is ready to be called back.
*** If it is a macro task like a setTimeout or setInterval callback, it will be executed on the next go-around of the event loop.
*** If it is a micro task like a promise callback, it will be executed at the end of the current go-around of the event loop or before the start of the next go-around.

┌─────────────┐
│** Call Stack│
└─────────────┘
The call stack is a LIFO (last in, first out) stack that keeps track of function calls. Whenever a function is called, it is pushed to the top of the stack. Whenever a function is done executing, it is popped off the top of the stack.

***  It allows Javascript to keep a record of where the program is in its execution.
*** Whenever a function is called, it is pushed to the top of the stack. 
*** Whenever a function is done executing, it is popped off the top of the stack.
* Notes
js is single-threaded

┌───────────┐
│* Questions│
└───────────┘
We might also ask a technical Front-end question. We won’t reveal the exact topic here, but it’s something that most programmers with good frontend experience should be able to crack.

It’s also not a framework-specific question, so it doesn’t matter if you’re better in React/Angular/Vue, etc.
