-- Constants
local ID <const> = "kalandra.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Beach of Kalandra"
node.description = "The waves dance, the breeze flies, while the sun welcomes you with pleasant heat, this place is as beautiful as legends say.But for your surprise there is no one else here.Your intuition says something is wrong."
node.header = [[
%{green}_\/_     %{yellow}            |            %{green}    _\/_
%{green}/o\\     %{yellow}        \       /        %{green}    //o\
%{green} |       %{yellow}          .---.          %{green}      |
%{green}_|_______%{yellow}     --  /     \  --     %{green}______|__
%{cyan }         %{      }`~^~^~^~^~^~^~^~^~^~^~^~`%{     }
]]

-- Create choices
table.insert(node.choices, Choice:new(
  "kalandra.sunbathe",
  "Enjoy the deserted beach to rest and take a sun."
))

table.insert(node.choices, Choice:new(
  "kalandra.investigate",
  "Follow your intuition and investigate the disappearance of people."
))

table.insert(node.choices, Choice:new(
  "kalandra.dive",
  "Take a swim in the sea.",
  function()
    return game.medoDoMar ~= true
  end
))

return node