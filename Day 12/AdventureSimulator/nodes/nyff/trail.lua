-- Constants
local ID <const> = "nyff.trail"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.description = [[A pack of wolves surrounded you, they are also without food, and guess, the banquet is you!]]

-- Create choices
table.insert(node.choices, Choice:new(
  "nyff.wolfs",
  "Run as fast as you can, without even hesitation!"
))

table.insert(node.choices, Choice:new(
  "nyff.top",
  "Divide your food with the wolves so that they leave you alone."
))

return node