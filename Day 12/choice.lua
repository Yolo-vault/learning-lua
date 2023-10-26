local class = require("libs.middleclass")

---@class Choice
local Choice = class("Choice")

function Choice:initialize(destination, description, condition)
  self.destination = destination ---@type string
  self.description = description ---@type string
  self.condition = condition
end

---Returns whether the choice has a condition to be executed.
---@return boolean
function Choice:hasCondition()
  return self.condition ~= nil
end

---Executes the condition function and returns whether is was aithorized.
---@return boolean
function Choice:runCondition()
  -- TODO
  return true
end

return Choice