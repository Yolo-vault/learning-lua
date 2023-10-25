local class = require("libs.middleclass")

local Node = class("Node")

function Node:initialize(id)
  self.id = id
  self.title = nil
  self.description = nil
  self.header = nil
  self.choices = {}
end

return Node