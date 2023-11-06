-- Prompt the user to enter the character's name, class, and level
local characterName = io.read()
local characterClass = io.read()
local characterLevel = tonumber(io.read())

-- Display the welcome message with the character's information
local welcomeMessage = string.format("Welcome, %s the %s, at level %d!", characterName, characterClass, characterLevel)

print(welcomeMessage)
