-- Import the Animal module
local Animal = require("creatures.animal")

-- Define the Sheep module
local Sheep = Animal:subclass("Sheep")

-- Constructor
function Sheep:initialize()
  -- Call the base class constructor
  Animal.initialize(self, "Sheep")
  self.health = 4
  self.maxHealth = 4
end

-- Export the Sheep module
return Sheep
