local class = require("libs.middleclass")

---@class GameData
local GameData = class("GameData")

function GameData:initial()
  self.activeNode = nil ---@type Node
  self.isOver = false ---@type boolean
end

return GameData