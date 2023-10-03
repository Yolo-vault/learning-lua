-- Like other programming languages, Lua also has logical conditions (the most used feature in any programming language).
-- Note the use of the words: then and end

-- To use if, example:
local NUMBER <const> = 10

if (NUMBER == 10) then
  print("The number is equal to ten!")
end

-- To use else, example:

if (NUMBER == 10) then
  print("The number is equal to ten!")
else
  print("The number is different from ten!")
end

-- To use elseif, example:

if (NUMBER == 10) then
  print("The number is equal to ten!")
elseif (NUMBER <= 5 ) then
  print("The number is less or equal to five!")
else
  print("The number is different from ten!")
end