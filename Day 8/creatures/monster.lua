-- Import the Creature module
local Creature = require("creatures.creature")

-- Define the Monster module
local Monster = Creature:subclass("Monster")

-- Constructor
function Monster:initialize(name)
  -- Call the base class constructor using `super`
  Creature.initialize(self, name)
end

-- Method to check if the monster is hostile
function Monster:isHostile()
  return true
end

-- Export the Monster module
return Monster
