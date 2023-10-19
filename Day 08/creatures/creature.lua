local class = require("libs.middleclass")

-- Define the Creature class
local Creature = class("Creature")

-- Constructor
function Creature:initialize(name)
  self.name = name
  self.health = 0
  self.maxHealth = 0
end

--
---Get the name of the creature.
---@return string
--
function Creature:getName()
  return self.name
end

---Check if the creature is hostile.
---@return boolean
function Creature:isHostile()
  -- Implement your logic here
  return false
end

--
---Get the creature's health points.
---@return integer
--
function Creature:getHealth()
  return self.health
end

--
---Get the creature's maximum health.
---@return integer
--
function Creature:getMaxHealth()
  return self.maxHealth
end

--
---Check if the creature's health is full.
---@return boolean
--
function Creature:isHealthFull()
  return self.health >= self.maxHealth
end

--
---Check if the creature is alive.
---@return boolean
--
function Creature:isAlive()
  return self.health > 0
end

--
---Check if the creature is dead.
---@return boolean
--
function Creature:isDead()
  return not self:isAlive()
end

return Creature
