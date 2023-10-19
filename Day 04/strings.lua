--[[
  The different ways to work, print and
  format strings natively in lua
]]

-- Another wat of printing:
Text = [[Lua is very cool]]
print(Text)

-- Converting to Uppercase or Lowercase:
Text = "Lua is Beautifull"
local InUppercase = string.upper(Text)
local InLowercase = string.lower(Text)
print(InUppercase, InLowercase)

-- Replacing parts of a string
Text = "Lua"
local replacing = string.gsub(Text, "Lua", "JhoN")
print(replacing)

-- Formatting string
Text = "💖"
local textFormatted = string.format("I %s Lua", Text) -- %s = variable with string
print(textFormatted)

-- Formatting data
local month, day, year = 8, 06, 2023
--[[
  %d = variable with integer
  %02d = integer with at least two digits
]]
local formattedData = string.format("Today is %02d/%d/%d", month, day, year)
print(formattedData)

-- Formatting float number
local floatNumber = 1.2345
local formattedFloatNumber = string.format("The value is %.2f", floatNumber) -- %.2f = float with two digits after the dot
print(formattedFloatNumber)

-- Fiding a string
Text = "The Lua programming language is really cool!"
local finding = string.find(Text, "language")

if (finding) then
  print("The string was found successfully")
else
  print("The string was not found")
end

-- Reversing string
Text = "Uauu! A Lua!"
local reverse = string.reverse(Text)
print(reverse)

-- Getting the length of a string
Text = "Lua"
local length = string.len(Text)
print(length)

-- Subdividing a string
Text = "Lua programming language"
local subFirstMethod = string.sub(Text, 5, 15) -- string.sub(STRING, POSITION_INITIAL, POSITION_FINAL)
local subSecondMethod = string.sub(Text, string.len(Text) - 7, string.len(Text))
print(subFirstMethod, subSecondMethod)

-- Repeat the string
Text = "Lua "
local repeatedly = string.rep(Text, 5)
print(repeatedly)

-- Printing a letter in byte format (ASCII table number)

-- Getting number by letter
print(string.byte("Lua")) -- first character
print(string.byte("Lua", 2)) -- second character
print(string.byte("Lua",-1)) -- last character
print(string.byte("Lua",-2)) -- penultimate character

-- Getting the letter by number
print(string.char(97)) -- first character