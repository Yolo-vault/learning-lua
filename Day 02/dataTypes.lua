-- Data typing in Lua is dynamic, but if you want to get the data type, just for example:

-- Returns the type() of the argument that was passed.
print(type("What is the type of this data?")) -- string
print(type(123)) -- number
print(type(true)) -- boolean
print(type(print)) -- function
print(type(os)) -- table
print(type(nil)) -- nil

-- In addition to this, there are also types: userdata and thread.