-- Requests the user to enter the character's name
local characterName = io.read()

local characterAction

-- Repeat loop to ensure a valid action
repeat
  characterAction = io.read()

  if characterAction == "Attack" then
    print(characterName .. " chose to Attack!")
  elseif characterAction == "Flee" then
    print(characterName .. " chose to Flee!")
  else
    print("Please try again")
  end
until characterAction
