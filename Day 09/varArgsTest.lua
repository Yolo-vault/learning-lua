---Calculate the average of numbers provided as variable argument
local function calculateAverage(...)
  local numbers = { ... }
  local sum = 0
  local count = 0

  -- Calculate the sum and count of numbers
  for _, number in pairs(numbers) do
    sum = sum + number
    count = count + 1
  end

  -- Calculate the average or return 0 if no numbers are provided
  return count > 0 and (sum / count) or 0
end

-- Usage examples
print(calculateAverage()) -- 0
print(calculateAverage(1)) -- 1
print(calculateAverage(1, 2, 3)) -- 2
print(calculateAverage(2, 2, 10)) -- 4.6666666666667
print(calculateAverage(1, 2, 3, 500, 404, 1920)) -- 471.66666666667
