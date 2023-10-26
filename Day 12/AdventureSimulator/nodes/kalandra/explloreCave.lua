-- Constants
local ID <const> = "kalandra.explorerCave"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Dungeon of Kalandra"
node.description = "You will find a secret dungeon that seems not to be visited for hundreds of years.You are facing a long but narrow corridor, and everything says there are hidden traps in this place.There is a golden door on the other side of this corridor, but there are also several passages by your side."

-- Create choices
table.insert(node.choices, Choice:new(
  "kalandra.trap",
  "Follow the hallway, the traps probably no longer work after so long."
))

table.insert(node.choices, Choice:new(
  "kalandra.buraco_estreito",
  "Follow left by a narrow hole in the wall that seems to take somewhere."
))

table.insert(node.choices, Choice:new(
  "kalandra.trap",
  "Pull a lever beside you.It is obviously a trap."
))

return node