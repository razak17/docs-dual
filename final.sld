blocking vs non-blocking operations
A blocking operation stops the execution of any other code until it has finished executing.
This causes performance problems on web apps, since js is single-threaded it blocks anything else from
executing leading to performance problems. This is because the event loop is unable to run any js while
a blocking operation is running.

const fs = require('fs')

cnst data = fs.readFileSync('/file.md')
console.log(data)
moreWork()

Non-blocking operations don't wait for the operation to finish executing. It runs other code or operations
without waiting for the result. When the result of the operation is ready, it alerts the event-loop and the operation
is run on the next event loop cycle.

const fs = require('fs')

fs.readFile('/file.md', (err, data) => {
  if (err) throw err;
  console.log(data)
})
moreWork()


async
operations are executed without blocking the execution of other code.

multithreading
multiple cpu threads execute different parts of the code. It thread has its own execution stack and they can share the same memory


Event Loop
a constantly running process that monitors the call stack and the call queue. When the call stack is empty, the first event in the queue
is pushed into the call stack and then executed by the event loop. This goes on until the call queue is also empty.

js runs code synchronously from the top of the file and works it way down
It executes all synchronous code from the top down
However, when it gets to an operation that is asynchronous, it appends it to the call or task queue.
It then continues executing the script
When the asynchronous operation returns, it alerts the event loop that is ready.
If it is a micro task like a setTimeout or setInterval, it is run ont the next event loop.
If it is a macro task like a resolved promise, it is run at the end of the current event loop.


Call Stack (LIFO)
mechanism the js intepreter uses to keep track of it place in a script. It keeps track of what function are being called and what 
function are being called within those functions.
When a script calls a function, the function is added to the call stack
Any other functions called within that function are pushed unto the stack as they were called
When a function returns it is popped of the stack and the program continues executing from where it left off
This goes on for each function until the call stack is empty again
