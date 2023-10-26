# Singleton in Lua

## Introduction

> What are Singles in Lua ?

A Singleton is a design pattern that ensures a class has only one instance and provides a global point of access to that instance. This is useful when you want to share an object throughout your program.

## Implementing a Singleton in Lua

Let's create a simlpe example of a Singleton in Lua.

### 1.1 Creating the Singleton Class:

```lua
-- singleton.lua

local Singleton = {}

function Singleton:new()
  local instance = {}

  -- Methods and instance properties here
  instance.value = 0

  setmetatable(instance, self)
  self.__index = self

  return instance
end

return Singleton
```

> Here, we define a module called `singleton.lua` that contains our Singleton class. The `new` function is responsible for creating a new instance of the Singleton.

### 1.2 Using the Singleton

Now, let's use our Singleton in a Lua:

```lua
-- main.lua

local Singleton = require("singleton")

local instanceOne = Singleton:new()
instanceOne.value = 10

local instanceTwo = Singleton:new()
print(instanceTwo.value) -- Should print 10, as they both share the same instance
```

> In this example, we import the Singleton module and create two instances of it. Since the Singleton ensures there is only one instance, a change in the value of the first instance affects the second instance.

### 1.3 Ensuring a Unique Singleton

To ensure that only one instance of the Singleton is created, you can modify the constructor to return the existing instance if it already exists:

```lua
-- singleton.lua

local Singleton = {}
local instance = nil

function Singleton:new()
  if instance == nil then
    instance = {}
    setmetatable(instance, self)
    self.__index = self
  end

  return instance
end

return Singleton
```

> Now, any attempt to create a new instance of the Singleton will return the existing instance, making the Singleton truly unique.

## Conclusion

Singletons in Lua are useful when you need to share an object throughout your program. They ensure that only one instance of the class is created and provide a global point of access to that instance.
