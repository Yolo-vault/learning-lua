-- Define a dice object with properties
local dice = {
  sides = 6, -- Number of sides on the dice
  result = 1, -- Current result of the dice throw
  characters = { "⚀", "⚁", "⚂", "⚃", "⚄", "⚅" }  -- Unicode characters for each side
}

-- Function to simulate a dice throw and return the result
function dice:throw()
  self.result = math.random(1, self.sides)
  return self.result
end

-- Function to convert the dice object to a string representation
function dice:toString()
  return string.format("Dice with %d sides: %s (%d)", self.sides, self.characters[self.result], self.result)
end

-- Create a metatable for the dice object
local diceMetatable = {}

-- Define the __call metamethod to allow calling the dice object as a function
function diceMetatable.__call(self)
  return self:throw()
end

-- Define the __tostring metamethod to get the string representation of the dice
function diceMetatable.__tostring(self)
  return self:toString()
end

-- Set the metatable for the dice object
setmetatable(dice, diceMetatable)

-- Test the dice object by calling it and printing it
print(dice())   -- Simulate a dice throw and print the result
print(dice)     -- Print the string representation of the dice
