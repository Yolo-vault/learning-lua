--[[
  To perform an action at certain times we use loops
  in Lua there are 3 types of loops: while, for and repeat until let's see how to use them:

  Note the use of reserved words: do and end
]]

local NUMBER <const> = 1

-- Loop while (Execute the code while the condition is true)
while (NUMBER < 4) do
  print("Printing "..NUMBER.."th!")
end

-- Loop for (Structure: initial value | limit | increment) Execute code up to the limit that has been defined
for initialValue = 1, 5, 1 do
  print("Printing "..initialValue.."th!")
end

-- Loop reap until (It does the same as While Loop but it executes the code before checking the condition)
repeat
  print("The number value is:", NUMBER)
until (NUMBER > 5)
