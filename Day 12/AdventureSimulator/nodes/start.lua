-- Contants
local ID <const> = "start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "A new adventure"
node.description = "On a beautiful sunny morning you wake up and prepare to embark on a new adventure, but an important decision must be made. Where are you going ?"
node.header = [[%{magenta}
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
█ ▄▄▀█ ▄▀█▀███▀█ ▄▄█ ▄▄▀█▄ ▄█ ██ █ ▄▄▀█ ▄▄████
█ ▀▀ █ █ ██ ▀ ██ ▄▄█ ██ ██ ██ ██ █ ▀▀▄█ ▄▄████
█ ██ █▄▄████▄███▄▄▄█▄██▄██▄███▄▄▄█▄█▄▄█▄▄▄████
██████████████████████████████████████████████
███ ▄▄▄ ██▄██ ▄▀▄ █ ██ █ ██ ▄▄▀█▄ ▄█▀▄▄▀█ ▄▄▀█
███▄▄▄▀▀██ ▄█ █▄█ █ ██ █ ██ ▀▀ ██ ██ ██ █ ▀▀▄█
███ ▀▀▀ █▄▄▄█▄███▄██▄▄▄█▄▄█▄██▄██▄███▄▄██▄█▄▄█
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
]]

-- Create choices
table.insert(node.choices, Choice:new(
  "kalandra.start",
  "To the sunny beach of Kalandra"
))


return node