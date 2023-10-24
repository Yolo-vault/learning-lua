-- Create a table named supermath to store our custom functions.
local supermath = {}

-- Set the metatable of supermath to the standard math module.
setmetatable(supermath, {
  __index = math  -- This allows supermath to access functions from the math module.
})

-- Custom function to round a number x.
function supermath.round(x)
  return math.floor(x + 0.5)  -- Round the number to the nearest integer.
end

-- Examples of usage:
print(supermath.floor(2.3))  -- This calls the floor function from the standard math module.
print(supermath.floor(2.7))  -- This also calls the floor function from the standard math module.

-- Now let's use our custom rounding function.
print(supermath.round(2.3))  -- OUTPUT: Will round to 2.
print(supermath.round(2.7))  -- OUTPUT: Will round to 3.
