# Tables in Lua

## Introduction

> What are Tables in Lua ?

In Lua, tables are the most fundamental and versatile data sctructure, they are similar to Arrays in other pragramming languages. They can be used to represent lists, dictionaries, complex data structures, and more.

_Let's explore the different aspects of tables in Lua._

## Create a Table

You can create an empty table in Lua using `{}`

```lua
local myTable = {}
```

## Using Tables as Lists

Tables in Lua can be used as lists, where elements ara accessed by numeric indices starting at 1.

```lua
local myList = {"Jhonata", "Daniel", "Miguel", "Lucas"}

-- Acessing table elements
print(myList[1]) -- OUTPUT: Jhonata

print(#myList) -- OUTPUT: 4
```

> Using `#` before the table allows you to receive the number of elements in a table

## Using Tables as Dictionaries

Tables can be used as dictionaries, associating values with unique keys, very similar to the `JSON` format. Keys can be of any type, not just strings.

```lua
local myDictionari = {
  name = "JhoN"
  age = 21
  country = "Brazil"
}

-- Acessing table elements
print(myDictionari[1]) -- OUTPUT: JhoN
print(myDictionari.name) -- OUTPUT: JhoN
```

> As we have predefined unique keys, we can access the table elements in another way but we will have the same result, so the choice is your preference.

## Multidimensional Tables

Tables in Lua can be multidimensional, allowing the creation of complex data structures. You can nest tables inside other tables.

```lua
local myMultiTable = {
  {1, 2, 3},
  {4, 5, 6},
  {7, 8, 9}
}

-- Acessing table elements
print(myMultiTable[2][3]) -- OUTPUT: 6
```

## Adding and Removing Elements

You can add elements to a table using square bracket notation or the `table.insert()` function. To remove elements, you can use the `table.remove()` function.

```lua
local fruits = {"apple", "banana"}

-- Adding an element with a specific key using square bracket notation
fruits[3] = "pineapple"
-- Adding the orange element at the end of the table
table.insert(fruits, "orange")
-- Removing the first element from the table
table.remove(fruits, 1)
```

> OUTPUT

```bash
1       banana
2       pineapple
3       orange
```

When a table element is removed, the remaining elements automatically readjust their keys to maintain ascending order, starting from index 1.

## Iterating over a Table

You can iterate over the elements of a table using `for` loop in combination with the `pairs()` and `ipairs()` functions.

> `pairs()`: This function allows you to iterate over all keys and values in a table, regardless of the key type.

```lua
local userInfo = {
  name = "Daniel",
  age = "30",
  country = "Canada"
}

for key, value in pairs(userInfo) do
  print(key, value)
end
```

> OUTPUT

```bash
country Canada
age     30
name    Daniel
```

When using `pairs()` to iterate over a table in Lua, the order of the elements is not guaranteed and may not follow the order in which you inserted them. This is because tables in Lua are not ordered data structures. If you need a specific order, consider using an additional table to store the order of the keys or choosing a different data structure, such as a list, that maintains the order of the elements.

```lua
local userInfo = {
  name = "Daniel",
  age = "30",
  country = "Canada"
}

local orderingUserInfo = {"name", "age", "country"}

-- Use underscore (_) to omit unused variables
for _, key in pairs(orderingUserInfo) do
  print(key, userInfo[key])
end
```

---

> `ipairs()`: This function is best suited for iterating over tables that are used as lists, where the keys are integers starting from 1.

```lua
local numbers = {10, 20, 30}

for key, value in ipairs(numbers) do
  print(key, value)
end
```

> OUTPUT

```bash
1       10
2       20
3       30
```

## Tables and Memory

Tables in Lua are dynamically allocated in memory and are automatically collected by the garbage collector when there are no more references to them.

## Conclusion

Tables in Lua are a powerful and flexible data structure that can be used in many ways to store and manipulate information.
