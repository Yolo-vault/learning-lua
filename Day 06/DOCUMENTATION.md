# Documentation and its Importance

## Introduction

> Why document code ?

Documenting Lua code is essential to make it understandable and useful for other developers and yourself in the future. In this guide, we will explore how to document in a simple and practical way.

## Benefits of Documentation

- **Easy to Understand**: Makes the code more readable and makes it easier to understand.

- **Correct Usage**: Explains how to use functions and modules correctly.

- **Fast Debugging**: Helps you identify errors quickly.

- **Efficient Collaboration**: Facilitates teamwork.

- **Simple Maintenance**: Simplifies updating and fixing code.

- **Quick Learning**: Helps beginners to use your code effectively.

## Some Pratical Examples

### 1. Code Comments

Start by adding comments to your code to explain what each part does. Use -- to create comments in Lua.

```lua
-- This is an example of a single line comment

--[[
  This is an example of a comment
  of several lines in Lua.
]]
```

### 2. Module Documentation

When you create a module in Lua, it is useful to document what it does and how to use it. You can do this using comments at the beginning of the module:

```lua
-- Example module
location Module = {}

--[[
  Function that returns the sum of two numbers.
  @param a The first number.
  @param b The second number.
  @return The sum of a and b.
]]
function Module.add(a, b)
  return a + b
end

return Module
```

### 3. Function Documentation

Document each function in a similar way, explaining the parameters and what the function returns:

```lua
--[[
  Function that multiplies two numbers.
  @param x The first number.
  @param y The second number.
  @return The product of x and y.
]]
function multiply(x, y)
  return x \* y
end
```

### 4. Use of Notes

In addition to comments, you can use documentation annotations to describe your functions and modules more formally. There are tools like `LDoc` that can generate documentation from these notes. See an example:

```lua
---
-- Function that calculates the average of a list of numbers.
-- @param numbers Table of numbers.
-- @return The average of the numbers.
--
-- Example of use:
-- local avg = calculateAverage({10, 20, 30})
-- print(avg) -- Output: 20.0
---

function calculateAverage(numbers)
   local sum = 0
   for _, num in ipairs(numbers) do
      sum = sum + num
   end
   return sum / #numbers
end
```

## Conclusion

In short, documentation in Lua saves time, prevents errors and improves software development efficiency. It is a valuable investment in any project.
