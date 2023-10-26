-- Constants
local ID <const> = "kalandra.narrowHole"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Dungeon of Kalandra"
node.description = [[You got to the golden door!She is imposing and gleaming, and emanates incredible power in some way.
You notice a gold lock, which seems to ask for an equivalent key.]]

-- Create choices
table.insert(node.choices, Choice:new(
  "kalandra.success",
  "Use the Golden Key",
  function()
    return game.hasKey == true
  end
))

table.insert(node.choices, Choice:new(
  "kalandra.start",
  "Back to the beach of Kalandra."
))

table.insert(node.choices, Choice:new(
  "kalandra.trap",
  "Try to open the door."
))

return node