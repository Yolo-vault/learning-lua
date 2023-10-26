-- Constants
local ID = "kalandra.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Beach of Kalandra"
node.description = "The waves dance, the breeze flies, while the Sun welcomes you with pleasant warmth, this place is as beautiful as the legends say. But to your surprise there is no one else here. His intuition tells him something is wrong."
node.header = [[
%{green}_\/_     %{yellow}            |            %{green}    _\/_
%{green}/o\\     %{yellow}        \       /        %{green}    //o\
%{green} |       %{yellow}          .---.          %{green}      |
%{green}_|_______%{yellow}     --  /     \  --     %{green}______|__
%{cyan }         %{      }`~^~^~^~^~^~^~^~^~^~^~^~`%{     }
]]


return node