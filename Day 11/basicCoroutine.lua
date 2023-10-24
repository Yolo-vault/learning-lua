-- Define a function to print a list of fruits and yield after each print
local function printFruits()
  print("Banana")
  coroutine.yield()  -- Yield the execution to the calling coroutine
  print("Apple")
  coroutine.yield()  -- Yield again
  print("Kiwi")
end

-- Create a coroutine (thread) that will run the printFruits function
local thread = coroutine.create(printFruits)

-- Check the status of the coroutine
print(coroutine.status(thread)) -- Initially, it's in the "suspended" state

-- Resume the execution of the coroutine
coroutine.resume(thread) -- This will print "Banana" and yield

-- At this point, the coroutine is "suspended" because it yielded

-- To continue, you would call coroutine.resume again
-- It will print "Apple" and yield again, then print "Kiwi" and finish
