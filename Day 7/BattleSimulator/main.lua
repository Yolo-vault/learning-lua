-- Dependencies
local utils = require("utils")
local player = require("Players.player")
local playerActions = require("Players.actions")
local colossus = require("Monsters.colossus")
local colossusActions = require("Monsters.actions")

-- utils.enableUtf8()
utils.printHeader()

-- Get monster definition
local boss = colossus
local bossActions = colossusActions

-- Introduce the monster
utils.printCreature(boss)

-- Build actions
playerActions.build()
bossActions.build()

-- Battle loop
while true do
  -- Show options for player
  print()
  print(string.format("What will be the next action of %s?", player.name))

  local validPlayerActions = playerActions.getValidActions(player, boss)

  for i, action in pairs(validPlayerActions) do
    print(string.format("%d %s", i, action.description))
  end

  local chosenIndex = utils.ask()
  local chosenAction = validPlayerActions[chosenIndex]
  local isActionValid = chosenAction ~= nil

  -- Simulate player turn
  if isActionValid then
    chosenAction.execute(player, boss)
  else
    print(string.format("⚠️ Your choice is invalid, %s lose your turn!", player.name))
  end

  -- Exit point, creature was left without life
  if boss.health <= 0 then
    break
  end

  -- Simulate creture turn
  print()
  local validBossActions = bossActions.getValidActions(player, boss)
  local bossAction = validBossActions[math.random(#validBossActions)]
  bossAction.execute(player, boss)


  -- Exit point, player was left without life
  if player.health <= 0 then
    break
  end
end