-- Constants
local ID <const> = "nyff.forest"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Nyffville"
node.description = [[After much walking you found a small and modest village in the middle of the forest.Villagers receive you with joy!Today's banquet is guaranteed.

After a beautiful night's sleep, it's time to continue the adventure.One of the Villagers suggests that you follow the trail that gives the return on the mountain, as it is the longest and safer way.]]

-- Create choices
table.insert(node.choices, Choice:new(
  "nyff.trail",
  "Follow the trail around the mountain."
))

table.insert(node.choices, Choice:new(
  "nyff.climb",
  "We want to get to the top still today, let's climb the mountain!"
))

return node