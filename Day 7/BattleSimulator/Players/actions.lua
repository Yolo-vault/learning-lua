local utils = require("utils")

local actions = {}

function actions.build()
  -- Reset list
  actions.list = {}

  -- Action of attacking the creature with the sword
  local swordAttack = {
    description = "Attack with sword",
    requirement = nil,
    execute = function (playerData, creatureData)
      -- Define hit chance
      local hitChance = creatureData.speed == 0 and 1 or playerData.speed / creatureData.speed
      local successHitChance = math.random() <= hitChance

      -- Calculate damage
      local rawDamage = playerData.attack - math.random() * creatureData.defense
      local damage = math.max(1, math.ceil(rawDamage))

      -- Print results
      if successHitChance then
        -- Applying the damage
        creatureData.health = creatureData.health - damage
        print(string.format("🩸 %s attacked the creature and dealt %d points of damage! 🩸", playerData.name, damage))

        local healthRate = math.floor((creatureData.health / creatureData.maxHealth) * 10)
        print(string.format("%s: %s", creatureData.name, utils.progressBar(healthRate)))
      else
        print(string.format("😞 %s tried to attack but made a miserable mistake! 😞", playerData.name))
      end
    end
  }

  -- Action of using the life regeneration potion
  local regenPotion = {
    description = "Take a potion to regenerate life",
    requirement = function (playerData, creatureData)
      return playerData.potions >= 1
    end,
    execute = function (playerData, creatureData)
      -- Remove potion from inventory
      playerData.potions = playerData.potions - 1

      -- Recover player life
      local REGEN_POINTS <const> = 5
      playerData.health = math.min(playerData.maxHealth, playerData.health + REGEN_POINTS)
      print(string.format("🧪 %s just used a health regeneration potion! 🧪", playerData.name))
    end
  }

  -- Populate list
  actions.list[#actions.list + 1] = swordAttack
  actions.list[#actions.list + 1] = regenPotion
end

--
---Returns the list of valid actions
---@param playerData table player definition
---@param creatureData table creature definition
---@return table
--
function actions.getValidActions(playerData, creatureData)
  local validActions = {}
  for _, action in pairs(actions.list) do
    local requirement = action.requirement
    local isValid = requirement == nil or requirement(playerData, creatureData)
    if isValid then
      validActions[#validActions + 1] = action
    end
  end
  return validActions
end

return actions