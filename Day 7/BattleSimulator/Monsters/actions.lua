local utils = require("utils")

local actions = {}

function actions.build()
  -- Reset list
  actions.list = {}

  -- Action of attacking the player with the body
  local bodyAttack = {
    description = "Attack with body",
    requirement = nil,
    execute = function (playerData, creatureData)
      -- Define hit chance
      local hitChance = playerData.speed == 0 and 1 or creatureData.speed / playerData.speed
      local successHitChance = math.random() <= hitChance

      -- Calculate damage
      local rawDamage = creatureData.attack - math.random() * playerData.defense
      local damage = math.max(1, math.ceil(rawDamage))

      -- Print results
      if successHitChance then
        -- Applying the damage
        playerData.health = playerData.health - damage
        print(string.format("🩸 %s attacked the %s and dealt %d points of damage! 🩸", creatureData.name, playerData.name, damage))

        local healthRate = math.floor((playerData.health / playerData.maxHealth) * 10)
        print(string.format("%s: %s", playerData.name, utils.progressBar(healthRate)))
      else
        print("😞 %s tried to attack but made a miserable mistake! 😞", creatureData.name)
      end
    end
  }

  -- Sonar attack
  local sonarAttack = {
    description = "A sonat attack",
    requirement = nil,
    execute = function(playerData, creatureData)
      -- Calculate damage
      local rawDamage = creatureData.attack - math.random() * playerData.defense
      local damage = math.max(1, math.ceil(rawDamage * 0.3))

      -- Applying the damage
      playerData.health = playerData.health - damage
      print(string.format("%s used sonar and dealt %d points of damage", creatureData.name, damage))

      local healthRate = math.floor((playerData.health / playerData.maxHealth) * 10)
      print(string.format("%s: %s", playerData.name, utils.progressBar(healthRate)))
    end
  }

  -- Wait/Pass the turn
  local waitAction = {
    description = "Pass the turn",
    requirement = nil,
    execute = function(playerData, creatureData)
      print(string.format("%s decided to wait, and did nothing this turn.", creatureData.name))
    end
  }


  -- Populate list
  actions.list[#actions.list + 1] = bodyAttack
  actions.list[#actions.list + 1] = sonarAttack
  actions.list[#actions.list + 1] = waitAction
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