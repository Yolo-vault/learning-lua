local utils = {}

--
---Calculate an ASCII progress bar based on the value of an attribute.
---@param attribute number from 0 to 10
---@return string
--
function utils.progressBar(attribute)
  local fullChar = "%{cyan}▰"
  local emptyChar = "%{black}▱"
  local result = ""

  for i = 1, 10 do
    result =  result..(i <= attribute and fullChar or emptyChar)
  end

  return result
end

return utils