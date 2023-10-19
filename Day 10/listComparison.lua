-- Define the lists
local list1 = {1, 2, 3}
local list2 = {2}

-- Create the metatable
local meta = {}

-- Function to calculate the average of a list
meta.calculateAverage = function(list)
  local sum = 0

  for _, v in pairs(list) do
    sum = sum + v
  end

  return sum / #list
end

-- Less Than comparison function
meta.__lt = function(t1, t2)
  -- Returns true if the average of t1 is less than the average of t2
  return meta.calculateAverage(t1) < meta.calculateAverage(t2)
end

-- Less Than or Equal To comparison function
meta.__le = function(t1, t2)
  -- Returns true if the average of t1 is less than or equal to the average of t2
  return meta.calculateAverage(t1) <= meta.calculateAverage(t2)
end

-- Equality comparison function
meta.__eq = function(t1, t2)
  -- Returns true if the average of t1 is equal to the average of t2
  return meta.calculateAverage(t1) == meta.calculateAverage(t2)
end

-- Set the metatable for the lists
setmetatable(list1, meta)
setmetatable(list2, meta)

-- Display the results of the comparisons
print(string.format("<  %s", list1 < list2))
print(string.format("<= %s", list1 <= list2))
print(string.format(">  %s", list1 > list2))
print(string.format(">= %s", list1 >= list2))
print(string.format("== %s", list1 == list2))
