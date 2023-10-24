-- Create a table to store coroutines
local coroutines = {}

-- Initialize variables for progress tracking
local numberRate = 0
local colorRate = 0

-- Create a coroutine for processing numbers
table.insert(coroutines, coroutine.create(function()
  local totalAmountOfNumbers = 100

  for i = 1, totalAmountOfNumbers, 1 do
    print("Processing Numbers #" .. i)
    numberRate = i / totalAmountOfNumbers

    -- Yield every 10 numbers
    if (i % 10) == 0 then
      coroutine.yield()
    end
  end
end))

-- Create a coroutine for processing colors
table.insert(coroutines, coroutine.create(function()
  local colors = { "red", "green", "blue", 'yellow', "orange", "white", "black", "purple" }

  for i, color in pairs(colors) do
    colorRate = i / #colors
    print("Processing Color: " .. color)
    coroutine.yield()
  end
end))

-- Create a coroutine for updating the progress bar
table.insert(coroutines, coroutine.create(function()
  while true do
    local appPercentage = (numberRate + colorRate) / 2
    local appPercentageInt = math.floor(appPercentage * 100 + 0.5)
    print(string.format("App Progress Bar: %d%%", appPercentageInt))

    -- Check if the progress is complete
    if appPercentageInt >= 100 then
      print("The End!")
      break
    else
      coroutine.yield()
    end
  end
end))

-- Infinite loop to manage coroutines
while true do
  local hasActiveThreads = false

  -- Iterate through threads
  for i, thread in pairs(coroutines) do
    -- Get the status of the coroutine
    local status = coroutine.status(thread)
    local isSuspended = status == "suspended"
    local isDead = status == "dead"

    -- Set the flag for active threads
    if status ~= "dead" then
      hasActiveThreads = true
    end

    -- Resume suspended threads
    if isSuspended then
      coroutine.resume(thread)
    end
  end

  -- End the program if there are no active threads
  if not hasActiveThreads then
    break
  end
end
