local class = require("libs.middleclass")

---@class Choice
local Choice = class("Choice")

function Choice:initialize(destination, description, condition, routine)
  self.destination = destination ---@type string
  self.description = description ---@type string
  self.condition = condition ---@type fun():boolean
  self.routine = routine ---@type function
end

---Returns if the choice has a condition to be performed.
---@return boolean
function Choice:hasCondition()
  return self.condition ~= nil
end

---Performs the condition function and returns if it has been authorized.
---@return boolean
function Choice:runCondition()
  if self.condition ~= nil and type(self.condition) == "function" then
    return self.condition()
  end

  return true
end

--- performs the routine of this choice if there is one.
function Choice:runRoutine()
  if self.routine ~= nil and type(self.routine) == "function" then
    self.routine()
  end
end

return Choice