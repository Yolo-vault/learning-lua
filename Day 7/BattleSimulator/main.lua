-- Dependencies
local player = require("Definitions.Players.player")
local colossus = require("Definitions.Monsters.colossus")
local utils = require("utils")

-- utils.enableUtf8()
utils.printHeader()

local boss = colossus

utils.printCreature(boss)

-- Battle loop
while true do
  if boss.health <= 0 then
    break
  end

  if player.health <= 0 then
    break
  end
end