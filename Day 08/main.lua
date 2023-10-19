-- Set the code page to UTF-8
os.execute("chcp 65001 > NUL")

-- Import the required classes
local Creeper = require("creatures.creeper")
local Sheep = require("creatures.sheep")

-- Create creature instances
local creeper1 = Creeper:new()
local creeper2 = Creeper:new()
local sheep = Sheep:new()

-- Set the health of creeper1
creeper1.health = 0

-- Create a table of creatures
local creatures = { creeper1, creeper2, sheep }

-- Iterate over the creatures and display information
for _, creature in pairs(creatures) do
  local hostilityStatus = creature:isHostile() and "hostile" or "docile"
  local aliveStatus = creature:isAlive() and "alive" or "dead"
  local creatureName = creature:getName()

  print(string.format("Our creature %s is %s, and it is %s", creatureName, hostilityStatus, aliveStatus))
end

-- Attempt to access a non-existent attribute (banana) in creeper1
print(creeper1.banana)
