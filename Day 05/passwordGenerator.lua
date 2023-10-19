-- Define character lists
local letters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
local numbers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
local specials = {"#", "@", ">", "=", "<"}

-- Combine character lists
local characterLists = {
  letters,
  numbers,
  specials
}

-- Function to generate the password
local function generatePassword(length)
  local password = ""
  for i = 1, length do
    local listIndex = math.random(#characterLists)
    local list = characterLists[listIndex]
    local characterIndex = math.random(#list)
    local char = list[characterIndex]
    password = password .. char
  end
  return password
end

-- Prompt the user for the password length
print("How many characters do you want in the password?")
local length = io.read("*n")

-- Generate the password
local password = generatePassword(length)

-- Display the generated password
print("Your password:")
print(password)
