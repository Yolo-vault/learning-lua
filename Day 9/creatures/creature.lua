local class = require("libs.middleclass")
local ansicolorsx = require("libs.ansicolorsx")
local utils = require("utils")

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

function Creature:printInfo()
  local hostile = self:isHostile()
  local healthAttribute = math.floor((self.health / self.maxHealth) * 10 + 0.5)

  print(ansicolorsx(string.format(
    "%s %s",
    "%{white bright}" .. self:getName() .. "%{reset}",
    hostile and "%{red}(Hostil)" or "%{green}(Dócil)"
  )))

  print(ansicolorsx("%{italic}Health: "..utils.progressBar(healthAttribute)))
  print()
end

return Creature
