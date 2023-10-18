local json = require("libs.json")
local inspect = require("libs.inspect")

local file = io.open("resources/example.json", "r")
local fileContent = file and file:read("a")
local fileDecode = fileContent and json.decode(fileContent) or {}

print(fileDecode)
print(inspect(fileDecode))