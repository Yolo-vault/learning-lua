-- Constants
local ID <const> = "nyff.iglu"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Mountains of Nyff"
node.description = [[It was difficult, but you managed to build an iglu with your own hands, and a reserve shovel you found nearby.

After waiting for the night to pass, you wake up with a strong wind and a cold that freezes your bones.It is a blizzard!

Staying on Iglu is no longer an option.And now?]]

-- Create choices
table.insert(node.choices, Choice:new(
  "nyff.frozen",
  "Hiding is the best option, continuing on Iglu until the snowfall passes."
))

table.insert(node.choices, Choice:new(
  "nyff.forest",
  "Abandon the Iglu and go to the frozen forest."
))

return node