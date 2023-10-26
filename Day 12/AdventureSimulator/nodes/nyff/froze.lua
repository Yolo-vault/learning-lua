-- Contants
local ID <const> = "nyff.frozen"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Frozen"
node.gameOver = true
node.description = [[%{cyan}The cold was very strong and you could not resist.]]

return node