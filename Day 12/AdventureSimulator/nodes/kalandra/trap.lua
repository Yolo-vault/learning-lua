-- Constants
local ID <const> = "kalandra.trap"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Ops"
node.gameOver = true
node.description = "You unintentionally activated a dungeon trap, and could not resist."

return node