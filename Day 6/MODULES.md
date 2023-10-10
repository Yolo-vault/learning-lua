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

## Conclusion

In short, Lua modules are a powerful tool for organizing and reusing code effectively.
