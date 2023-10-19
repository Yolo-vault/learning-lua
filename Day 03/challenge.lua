--[[
  Build a simple application in Lua
  where you will use the knowledge
  learned so far in a relaxed and playful way.
]]

local nickName = "JhoN"
local playerClass = "Warrior"

local lifeAttribute = 10
local attackAttribute = 7
local defenseAttribute = 9

local function progressBar(attribute)
  local fullChar = "◽"
  local emptyChar = "◾"
  local result = ""

  for i = 1, 10 do
    if (i <= attribute) then
      result = result..fullChar
    else
      result = result..emptyChar
    end
  end

  return result
end


print("------------------- PLAYER INFO --------------------")
print("| Nickname: "..nickName)
print("| Class:    "..playerClass)
print("---------------------- STATS -----------------------")
print("| Life:     "..progressBar(lifeAttribute))
print("| Attack:   "..progressBar(attackAttribute))
print("| Defense:  "..progressBar(defenseAttribute))
print("----------------------------------------------------")