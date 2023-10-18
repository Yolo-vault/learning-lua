--
--- Function to read the content of a file
--- @param filepath (string) The path of the file to be read
--- @return success (boolean) true if the operation succeeded, false otherwise
--- @return result (string or nil) The file content or the error message
--
local function readFile(filepath)
  local file = io.open(filepath, "r")
  if file then
    local fileContent = file:read("a")
    file:close()
    return fileContent
  end
  return nil
end

--
--- Function to read the content of a file with pcall for error handling
--- @param filepath (string) The path of the file to be read
--- @return success (boolean) true if the operation succeeded, false otherwise
--- @return result (string or nil) The file content or the error message
--
local function readFileWithPcall(filepath)
  local success, result = pcall(function()
    return readFile(filepath)
  end)
  return success, result
end

--
--- Function to read the content of a file with xpcall for error handling
--- @param filepath (string) The path of the file to be read
--- @return success (boolean) true if the operation succeeded, false otherwise
--- @return result (string or nil) The file content or the error message
--
local function readFileWithXpcall(filepath)
  local success, result = xpcall(function()
    return readFile(filepath)
  end,
  function(err)
    -- Error message handler
    return "The file doesn't exist! Error: " .. err
  end)
  return success, result
end

-- Paths of the files to be read
local filepaths = {
  "resources/example.json",
  "resources/banana.nil",
}

-- Attempt to read each file and handle errors using pcall
for _, filepath in pairs(filepaths) do
  local success, result = readFileWithPcall(filepath)
  if not success then
    print(string.format("Tried to read the file %s, but an error occurred: %s", filepath, result))
  end
end

print("Test finished, everything went fine!")
