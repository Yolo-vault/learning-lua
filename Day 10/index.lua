--[[
  The code above demonstrates the use of the __index and __newindex methods to
  control behavior when accessing and setting keys in a table with a custom metatable.
  The rawset function is used in the __newindex method to avoid recursive calls
  when setting keys, ensuring that the key is set without triggering the __newindex method again.
]]

-- Create an empty table called 'dictionary'
local dictionary = {}

local meta = {
  __index = function(t, key)
    print("__index with key", key)  -- This will run when trying to access a non-existent key
    return "Transparent"  -- Default value to be returned for missing keys
  end,

  __newindex = function(t, key, value)
    print("__newindex with key", key, "and value", value)  -- This will run when setting a key
    rawset(t, key, value)  -- Use rawset to set the key and avoid recursive calls
  end
}

setmetatable(dictionary, meta)  -- Assign the custom metatable to the 'dictionary' table

print(dictionary.banana)  -- Trying to access a non-existent key ('banana')
dictionary.banana = "Yellow"  -- Setting the key 'banana' with the value "Yellow"

print(dictionary.banana)  -- Trying to access the previously defined 'banana' key
dictionary.banana = "Green"  -- Modifying the value of the 'banana' key to "Green"

print(dictionary.banana)  -- Trying to access the 'banana' key again
dictionary.banana = nil  -- Setting the 'banana' key to nil (removing it)

print(dictionary.banana)  -- Trying to access the 'banana' key again after removal
dictionary.banana = "Blue"  -- Setting the 'banana' key with the value "Blue"

print(dictionary.banana)  -- Trying to access the 'banana' key again after redefinition
