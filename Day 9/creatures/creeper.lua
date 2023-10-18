-- Import the Monster module
local Monster = require("creatures.monster")

-- Define the Creeper module
local Creeper = Monster:subclass("Creeper")

-- Constructor
function Creeper:initialize()
  -- Call the constructor of the base class using `Monster.initialize`
  Monster.initialize(self, "Creeper")
  self.health = 10
  self.maxHealth = 10
end

-- Export the Creeper module
return Creeper
