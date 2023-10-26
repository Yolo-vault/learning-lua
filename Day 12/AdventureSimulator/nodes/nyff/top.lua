-- Constants
local ID <const> = "nyff.top"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.description =
[[Phew, the wolves left.After much effort you get to the top, and see an amazing view, what an adventure!

At the top of the mountain you will find a chest containing a golden key, someone must have forgotten here.]]

-- Create choices
table.insert(node.choices, Choice:new(
  "kalandra.start",
  "Take the key and go to Kalandra beach!Anything to get out of this cold...",
  nil,
  function()
    game.hasKey = true
  end
))

return node