-- Dependencies
local player = require("Players.player")
local colossus = require("Monsters.colossus")
local utils = require("utils")
local playerActions = require("Players.actions")

-- utils.enableUtf8()
utils.printHeader()

local boss = colossus

utils.printCreature(boss)

playerActions.build()

-- Battle loop
while true do
  -- Show options for player
  print("What do you want to do next?")

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
    print("⚠️ Your action is invalid, making you lose your turn!")
  end

  -- Exit point, creature was left without life
  if boss.health <= 0 then
    break
  end

  -- Exit point, player was left without life
  if player.health <= 0 then
    break
  end
end