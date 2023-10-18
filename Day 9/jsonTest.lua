-- Import the necessary libraries
local json = require("libs.json")
local inspect = require("libs.inspect")

-- Try to open the JSON file
local file = io.open("resources/example.json", "r")

-- Read the file content if it was opened successfully
local fileContent = file and file:read("a")

-- Decode the JSON content into a Lua table, or create an empty table if the file is empty or doesn't exist
local fileData = fileContent and json.decode(fileContent) or {}

-- Print the resulting Lua table using the inspect library
print("File content using the inspect library:")
print(inspect(fileData))