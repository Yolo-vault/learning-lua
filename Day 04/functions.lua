--[[
  Functions are important for code reuse,
  let's see some ways to use them incremental Lua.
]]

-- Basic function:
local function helloWorld()
  print("Hello World!")
end

helloWorld() -- call/run the function

-- Passing parameters:
local function sum(x, y) -- receive the parameters
  print(x.." + "..y.." = "..x + y)
end

sum(2, 2) -- call/execute the function and passing the parameter values

-- Other example:

local outputResult = function(result)
  print("The result is: "..result)
end

local function sumCalculation(x, y, callback)
  local sum = x + y
  callback(sum)
end

sumCalculation(2, 2, outputResult)


