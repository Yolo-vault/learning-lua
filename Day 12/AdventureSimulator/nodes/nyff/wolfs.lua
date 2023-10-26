-- Constants
local ID <const> = "nyff.wolfs"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Canine banquet"
node.gameOver = true
node.description = [[The wolves reached you and managed to find food, you!It was a lucky day ... for the wolves, of course.]]

return node