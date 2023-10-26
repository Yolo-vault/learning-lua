-- Constants
local ID <const> = "kalandra.investigate"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Beach of Kalandra"
node.description = "You explore the region and find a trail that leads to an inhospitable cave, which also looks empty and abandoned.On the cave walls there are Scriptures about the legend of Kraken, and drawings that give you that there is a magic that can defeat it."

-- Create choices
table.insert(node.choices, Choice:new(
  "kalandra.sunbathe",
  "Kraken? Magic?What is that, an adventure movie?Put this nonsense aside and go back to the beach to take a sun."
))

table.insert(node.choices, Choice:new(
  "kalandra.explorerCave",
  "Incredible!Explore the cave deeper to decipher your secrets."
))

table.insert(node.choices, Choice:new(
  "kalandra.krakenGameOver",
  "All this dread because of an octopus?Go back to the beach and take a swim in the sea to prove that it does not exist."
))

return node