# Variable Arguments

Variable arguments allow a function to accept a variable number of parameters. In Lua, you can use the `...` operator to handle these arguments and access them as a table.

# Error Handling Using Protected Calls

Error handling is crucial for dealing with unexpected situations in your code. In Lua, you can use **protected calls** with the pcall function to capture and handle errors in a controlled manner.

> Practical Example:

```lua
-- Function that divides two numbers with error handling
function division(a, b)
  local status, result = pcall(function()
    return a / b
  end)

  if status then
    return result
  else
    return "Error: Division by zero or another issue."
  end
end

print(division(10, 2)) -- Output: 5
print(division(5, 0))  -- Output: Error: Division by zero or another issue.
```

# Reading/Decoding/Encoding JSON Files with the json and inspect Libraries

`JSON` (JavaScript Object Notation) is a widely used data format for information exchange. In Lua, you can work with JSON using libraries like `json` for encoding and decoding and `inspect` for pretty-printing JSON data. Reading a JSON file is the process of importing data from a JSON file, while decoding refers to converting a JSON string into a Lua data structure. Encoding involves transforming a Lua data structure into a JSON string.

> Practical Example:

```lua
-- Using the 'json' and 'inspect' libraries
local json = require("json")
local inspect = require("inspect")

-- Reading a JSON file
local jsonFile  = io.open("example.json", "r")
local jsonContent  = jsonFile:read("*a")
jsonFile:close()

-- Decoding JSON to a Lua table
local luaTable  = json.decode(jsonContent )

-- Encoding a Lua table to JSON
local jsonString  = json.encode(luaTable)

-- Pretty-printing JSON data
local prettyJson = inspect(luaTable)

print("Decoded JSON: ")
print(prettyJson )
```
