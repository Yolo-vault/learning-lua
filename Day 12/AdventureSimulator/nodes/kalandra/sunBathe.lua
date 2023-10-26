-- Constants
local ID <const> = "kalandra.sunbathe"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "End of adventure"
node.gameWon = true
node.description = "You stayed for a few more hours on the beach and rested a lot.When he woke up, he decided to return home."

return node