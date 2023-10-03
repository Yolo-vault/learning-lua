-- There are three types of variables in Lua

-- Global Variable
-- Every variable is assumed to be a global variable unless it is exlicitly declared as a local variable.
name = "Jhonata Moura"
print(name)

-- Local Variable
local fullName = "Jhonata Klisman Moura Santos"
local firstName, lastName = "Jhonata", "Klisman"

print(fullName)
print(firstName, lastName)

-- Tables comming soon.