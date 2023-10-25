local class = require("libs.middleclass")

local Choice = class("Choice")

function Choice:initialize()
  self.description = nil
  self.destination = nil
  self.condition = nil
end

--
---Returns whether the choice has a condition to be executed.
---@return boolean
--
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