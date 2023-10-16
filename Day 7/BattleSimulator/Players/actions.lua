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
        print(string.format("🩸 You attacked the creature and dealt %d points of damage! 🩸", damage))

        -- Applying the damage
        creatureData.health = creatureData.health - damage
      else
        print("😞 You tried to attack but made a miserable mistake! 😞")
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
      print("🧪 You just used a health regeneration potion! 🧪")
    end
  }

  -- Populate list
  actions.list[#actions.list + 1] = swordAttack
end

function actions.getValidActions()
end


return actions