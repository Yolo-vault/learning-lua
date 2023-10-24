# Coroutines in Lua

## Introduction

Coroutines in Lua are a powerful tool that allows for cooperative concurrent execution of code. They are especially useful when dealing with asynchronous tasks or when you need code that can be paused and resumed.

> What are Coroutines in Lua ?

In Lua, coroutines are like lightweight threads or functions that can be paused and resumed. They do not run simultaneously, but you can manually control when a coroutine is paused and when it is resumed.

Coroutines are created using the `coroutine.create()` function and can be controlled using the `coroutine.resume()` function to resume execution and `coroutine.yield()` to pause execution.

## Create Coroutine

Let's start with a simple example to understand how to create and use coroutines in Lua:

```lua
-- Creating a coroutine
my_coroutine = coroutine.create(function()
  for i = 1, 3 do
    print("Count: " .. i)
    coroutine.yield()
  end
end)

-- Resuming the coroutine
coroutine.resume(my_coroutine)
coroutine.resume(my_coroutine)
coroutine.resume(my_coroutine)
```

In this example, we create a coroutine that counts from 1 to 3 and pauses after each count. The coroutine.resume() function is used to resume the coroutine.

## Passing Values Between Coroutines

Coroutines can be used to pass values between them. Let's see an example of that:

```lua
-- Function that doubles a number
function double(number)
  coroutine.yield(number * 2)
end

-- Creating a coroutine to double a number
my_coroutine = coroutine.create(function(number)
  local result = coroutine.yield()
  print("Result: " .. result)
end)

coroutine.resume(my_coroutine, 5)
double(10)  -- Calling the double function
```

In this example, the `double` function is called within the coroutine, and the result is passed back to the main coroutine using `coroutine.yield()`.

## Coroutines as "Asynchronous" Tasks

Coroutines are also useful for creating asynchronous tasks, such as waiting for a specific amount of time. Here's an example:

```lua
-- Function that waits for a specified number of seconds
function wait(seconds)
  local start_time = os.time()
  while os.time() - start_time < seconds do
    coroutine.yield()
  end
end

-- Coroutine that waits for 3 seconds
my_coroutine = coroutine.create(function()
  print("Start")
  wait(3)
  print("3 seconds have passed")
end)

coroutine.resume(my_coroutine)
```

In this example, the wait coroutine pauses execution until the desired number of seconds has passed.

## Conclusion

Coroutines in Lua are useful for creating code that can be paused and resumed, making it more flexible. They are particularly helpful for handling asynchronous tasks.
