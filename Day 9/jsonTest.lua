local json = require("libs.json")

local file = io.open("resources/example.json", "r")
local fileContent = file and file:read("a")
local fileDecode = fileContent and json.decode(fileContent) or {}

-- Returns a value representing the decoded JSON string.
print(fileDecode)

for k, v in pairs(fileDecode) do
  print(k, v)
end