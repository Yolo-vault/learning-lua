# Modules in Lua

## Introduction

> What are Modules in Lua ?

Modules are the backbone of code organization and reuse in Lua. If you've ever wondered how to make your code more organized, reuse functions and variables efficiently, and avoid name conflicts, modules are the answer. They not only make your code more readable, but also help you create robust and modular Lua programs.

_Let's dive into the art of creating, using and mastering Lua modules to improve your development skills and make your projects more efficient and organized_

## Create a Module

To create a module in Lua, you can simply create a `.lua` file with the code you want to encapsulate. For example, create a file called `myModule.lua`:

```lua
-- myModule.lua

local MyModule = {} -- Create an empty table for the module

function MyModule.Hello(name)
  return "Hello, " .. name .. "!"
end

return MyModule -- Return the table representing the module
```

> In the example, MyModule is a table that contains the functions and variables related to this module.

## Using a Module

To use a module in Lua, you need to import it into your code. You can do this using the `require()` function.

> Suppose you have a file called `main.lua`:

```lua
-- main.lua

local MyModule = require("myModule") -- Import the module

print(MyModule.Hello("JhoN")) -- Accessing the Hello function
```

> OUTPUT

```bash
Hello, JhoN!
```

> Make sure that the path to the module that was passed in the import is correct.

## Importing Specific Functions or Variables

If you only want to import specific functions or variables from a module, you can do so as follows:

```lua
-- main.lua

local Hello = require("myModule").Hello -- Import the module

print(Hello("JhoN")) -- Accessing the Hello function
```

> OUTPUT

```bash
Hello, JhoN!
```

## Cyclic Modules Problem

Cyclic modules occur when two or more modules depend on each other in a circular fashion. This can lead to errors that are difficult to track down.

> Imagine that you have two modules, `chicken` and `egg`, which depend on each other as follows

```lua
-- chickenModule.lua

local chicken = {}

local egg = require("eggModule")

return chicken
```

```lua
-- eggModule.lua

local egg = {}

local chicken = require("chickenModule")

return egg
```

```lua
-- main.lua

local egg = require("eggModule")
local chicken = require("checkenModule")

print("Which came first, the Egg or the Chicken?")
```

When trying to run any of these modules, you will receive an error similar to:

```shell
  stack overflow
```

This error occurs because both modules directly reference each other, creating an infinite loop that exceeds the stack capacity.

The solution to avoiding cyclic modules is to ensure that your modules do not reference each other circularly. This can be achieved by rethinking your code structure to eliminate this circular dependency

## Conclusion

In short, Lua modules are a powerful tool for organizing and reusing code effectively.
