-- Constants
local ID <const> = "kalandra.dive"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.description = "During your dive you will find a submerged pirate ship a few meters deep.Some air bubbles come out of him."

-- Create choices
table.insert(node.choices, Choice:new(
  "kalandra.krakenGameOver",
  "Take an air and dive again to take a closer look."
))

table.insert(node.choices, Choice:new(
  "kalandra.krakenGameOver",
  "Ignore the ship and continue at sea by taking advantage of the day."
))

table.insert(node.choices, Choice:new(
  "kalandra.start",
  "Sinister!Get out of the sea and return to the beach.",
  nil,
  function()
    game.medoDoMar = true
  end
))

return node