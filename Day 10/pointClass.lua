-- Import the 'middleclass' library to create classes
local class = require("libs.middleclass")

-- Define the 'Point' class and provide a name for it
local Point = class("Point")

-- Constructor for the 'Point' class
function Point:initialize(x, y)
  self.x = x
  self.y = y
end

-- Custom tostring method to represent the 'Point' as a string
function Point:__tostring()
  return string.format("[x:%d, y:%d]", self.x, self.y)
end

-- Define the addition operator for 'Point' objects
function Point.__add(pointA, pointB)
  return Point:new(pointA.x + pointB.x, pointA.y + pointB.y)
end

-- Create two 'Point' objects
local pointA = Point:new(4, 3)
local pointB = Point:new(1920, 1080)

-- Perform addition of 'Point' objects
local result = pointA + pointB
print(result)

-- Perform addition on the result
local result2 = result + result
print(result2)
