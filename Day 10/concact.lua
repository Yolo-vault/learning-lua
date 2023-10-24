-- Define two tables with animal counts
local animals1 = {
  Cats = 4,
  Dogs = 2
}
local animals2 = {
  Cats = 6,
  Sheep = 1
}

-- Create a metatable for custom concatenation
local meta = {}

-- Define the concatenation function for the metatable
function meta.__concat(a, b)
  local result = {}
  setmetatable(result, meta)

  -- Copy values from the first table (a) to the result
  for k, v in pairs(a) do
    result[k] = v
  end

  -- Copy values from the second table (b) to the result
  for k, v in pairs(b) do
    result[k] = v
  end

  return result
end

-- Set the metatable for both animal tables
setmetatable(animals1, meta)
setmetatable(animals2, meta)

-- Concatenate the two tables using the ".." operator
local result = animals1 .. animals2

-- Iterate through the concatenated table and print the key-value pairs
for k, v in pairs(result) do
  print(k .. ": " .. v)
end
