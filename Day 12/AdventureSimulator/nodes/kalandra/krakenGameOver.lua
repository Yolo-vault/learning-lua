-- Constants
local ID <const> = "kalandra.krakenGameOver1"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "End of adventure"
node.gameOver = true
node.description = "A huge monster comes from the depths and pulls you down.You had no chance."

return node