-- Constants
local ID <const> = "nyff.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Mountains of Nyff"
node.description = "It's cold, snow is everywhere, and silence is deafening.To improve the situation, you realize that you have forgotten your backpack at home, and the only food left is a potato the day before."
node.header = [[
%{white}      /\
%{white}     /**\
%{white}    /****\   /\
%{white}   /      \ /**\
%{cyan}  /  /\    /    \    %{white}    /\    /\  /\      /\            /\/\/\  /\
%{cyan} /  /  \  /      \      /  \/\/  \/  \  /\/  \/\  /\  /\/ / /  \/  \
%{cyan}/  /    \/ /\     \    /    \ \  /    \/ /   /  \/  \/  \  /    \   \
]]

-- Create choices
table.insert(node.choices, Choice:new(
  "nyff.forest",
  "Search food in the frozen forest."
))

table.insert(node.choices, Choice:new(
  "nyff.iglu",
  "Create an iglu to protect yourself from the cold."
))

table.insert(node.choices, Choice:new(
  "nyff.frozen",
  "The cold is psychological."
))

return node