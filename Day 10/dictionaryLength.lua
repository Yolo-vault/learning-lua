-- Define a dictionary table with key-value pairs
local dictionary = {
  Cat = "Yellow",   -- Key: Cat, Value: Yellow
  Dog = "Brown"     -- Key: Dog, Value: Brown
}

-- Create a metatable for the dictionary
local meta = {}

-- Define the __len metamethod, which returns the number of key-value pairs in the dictionary
meta.__len = function(t)
  local counter = 0
  -- Loop through the keys in the dictionary
  for _ in pairs(t) do
    counter = counter + 1
  end
  -- Return the total count
  return counter
end

-- Set the metatable for the dictionary
setmetatable(dictionary, meta)

-- Print the number of key-value pairs in the dictionary using the # operator
print(#dictionary)
