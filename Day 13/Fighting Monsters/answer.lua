-- Prompt the user for the character's roll
local characterRoll = tonumber(io.read()) -- Read and convert the character's roll to a number

-- Prompt the user for the monster's roll
local monsterRoll = tonumber(io.read()) -- Read and convert the monster's roll to a number

-- Check if both rolls were provided
if characterRoll and monsterRoll then
  -- Compare the rolls and display the battle result
  if characterRoll > monsterRoll then
    print("You won the battle!")
  elseif characterRoll < monsterRoll then
    print("You lost the battle!")
  else
    print("It's a tie!")
  end
else
  print("You did not provide the necessary rolls.")
end
