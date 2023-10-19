-- Define a metatable with custom math operations
local customMath = {}

-- Implement addition, subtraction, multiplication, division, modulus, and power operations in the metatable
customMath.__add = function(a, b)
    local result = {}

    setmetatable(result, customMath)

    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"

    result.x = (isATable and a.x or a) + (isBTable and b.x or b)
    result.y = (isATable and a.y or a) + (isBTable and b.y or b)

    return result
end

customMath.__sub = function(a, b)
    local result = {}

    setmetatable(result, customMath)

    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"

    result.x = (isATable and a.x or a) - (isBTable and b.x or b)
    result.y = (isATable and a.y or a) - (isBTable and b.y or b)

    return result
end

customMath.__mul = function(a, b)
    local result = {}

    setmetatable(result, customMath)

    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"

    result.x = (isATable and a.x or a) * (isBTable and b.x or b)
    result.y = (isATable and a.y or a) * (isBTable and b.y or b)

    return result
end

customMath.__div = function(a, b)
    local result = {}

    setmetatable(result, customMath)

    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"

    result.x = (isATable and a.x or a) / (isBTable and b.x or b)
    result.y = (isATable and a.y or a) / (isBTable and b.y or b)

    return result
end

customMath.__mod = function(a, b)
    local result = {}

    setmetatable(result, customMath)

    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"

    result.x = (isATable and a.x or a) % (isBTable and b.x or b)
    result.y = (isATable and a.y or a) % (isBTable and b.y or b)

    return result
end

customMath.__pow = function(a, b)
    local result = {}

    setmetatable(result, customMath)

    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"

    result.x = (isATable and a.x or a) ^ (isBTable and b.x or b)
    result.y = (isATable and a.y or a) ^ (isBTable and b.y or b)

    return result
end

-- Create example points
local mousePoint = {
    x = 4,
    y = 3
}
setmetatable(mousePoint, customMath)

local webcamPoint = {
    x = 1800,
    y = 900
}
setmetatable(webcamPoint, customMath)

-- Test the operations
local result = mousePoint ^ 2

print(string.format("Result - x: %f, y: %f", result.x, result.y))
