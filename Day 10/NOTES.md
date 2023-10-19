# Metatables and Metamethods

## Introduction

**What are Metatables and Metamethods in Lua?**

Metatables in Lua are like special instructions for tables. Each table can have an associated metatable that defines how it behaves in specific situations. Metatables contain metamethods, which are special functions that dictate what happens when you perform actions with the table, such as addition, subtraction, accessing, or modifying values.

## Creating a Metatable and Associating It with a Table

```lua
-- Creating a table
local myTable = { value = 10 }

-- Creating a metatable
local myMetatable = {}

-- Associating the metatable with the table
setmetatable(myTable, myMetatable)
```

## Common Metamethods

Here are some examples of common metamethods and their functionalities:

```lua
local myTable = {}
local myMetatable = {}

-- __tostring: Converts the table to a string
function myMetatable.__tostring(table)
  return "Banana"
end

setmetatable(myTable, myMetatable)
print(myTable) -- "Banana"
```

# Mathematical Operations

You can use metatables and metamethods to overload mathematical operators, such as addition, subtraction, multiplication, and others. Here are some of them:

- \_\_add: Addition operation (+)
- \_\_sub: Subtraction operation (-)
- \_\_mul: Multiplication operation (\*)
- \_\_div: Division operation (/)
- \_\_mod: Modulus operation (%)
- \_\_pow: Exponentiation operation (^)
- \_\_idiv: Floor division operation (//)

# Bitwise Operations

For bitwise operations, you can also use metatables and metamethods:

- \_\_band: Bitwise AND operation (&)
- \_\_bor: Bitwise OR operation (|)
- \_\_bxor: Bitwise XOR operation (binary ~)
- \_\_bnot: Bitwise NOT operation (unary ~)
- \_\_shl: Bitwise left shift operation (<<)
- \_\_shr: Bitwise right shift operation (>>)

# String Manipulation

To manipulate strings, use the following metamethods:

- \_\_tostring: Converts the table to a string.
- \_\_concat: Concatenation operation (..)

# Table Operations

- \_\_len: Length operation (#)

# Comparison Operations

You can customize comparison operations with the following metamethods:

- \_\_eq: Equality operation (==)
- \_\_lt: Less than operation (<)
- \_\_le: Less than or equal operation (<=)

# Table Indexing

- \_\_index: Index access operation `table[key]`. This event occurs when you try to access a key that is not present in the table.
  - The value of `__index` can be a function or a table.
  - If it's a function, its signature is `func(table, key)`, and its result is returned by the operation.
  - If it's a table, the final result is the result of indexing this metamethod with the key.
- \_\_newindex: Index assignment operation `table[key] = value`.
  - Like in the `__index` event, this event occurs when the key is not present in the table.

# Treating Tables as Functions

- \_\_call: Call operation `func(args)`. This event occurs when Lua tries to call a table as if it were a function. The table itself is passed as the first parameter, and the other parameters are passed subsequently. This is the only metamethod that allows multiple results.
