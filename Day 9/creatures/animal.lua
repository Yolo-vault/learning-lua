-- Import the Creature module
local Creature = require("creatures.creature")

-- Define the Animal module
local Animal = Creature:subclass("Animal")

-- Constructor
function Animal:initialize(name)
  -- Call the base class constructor using `super`
  Creature.initialize(self, name)
end

-- Method to check if the animal is hostile
function Animal:isHostile()
  return false
end

-- Export the Animal module
return Animal
