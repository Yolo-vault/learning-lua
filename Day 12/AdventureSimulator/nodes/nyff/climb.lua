-- Constants
local ID <const> = "nyff.climb"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "It seemed easier in movies"
node.gameOver = true
node.description = [[After climbing only 10 meters you slipped and fell.A tragic end for a short adventure.]]

return node