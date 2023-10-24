-- Define the Person class
local Person = {}

-- Constructor method for creating a new Person object
function Person:new(name, role)
  -- Create a new table object
  local object = {}

  -- Set attributes for the new Person object
  object.name = name;
  object.role = role;

  -- Set the metatable for the new object to be the Person class itself
  setmetatable(object, self)
  self.__index = self

  -- Return the newly created object
  return object
end

-- Method to get the name of a Person object
function Person:getName()
  return self.name
end

-- Method to get the role of a Person object
function Person:getRole()
  return self.role
end

-- Custom __tostring method to display Person object as a string
function Person:__tostring()
  return string.format("%s: %s", self.name, self.role)
end

-- Create two Person objects
local rafa = Person:new("Rafa", "Game Dev")
local violet = Person:new("Violet", "Espadachin")

-- Print the string representation of the Person objects
print(rafa)
print(violet:getName())
