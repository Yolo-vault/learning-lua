local utils = {}

--
---Enable UTF-8 mode in the terminal
--
function utils.enableUtf8()
  os.execute("chcp 65001")
end

--
---Makes an print of the battle simulator presentation.
--
function utils.printHeader()
  print([[
                ⚔️  ＢＡＴＴＬＥ　ＳＩＭＵＬＡＴＯＲ  ⚔️
                𝙿𝙸𝙻𝙻𝙾𝚆 𝚈𝙾𝚄𝚁 𝚂𝚆𝙾𝚁𝙳 𝙰𝙽𝙳 𝙿𝚁𝙴𝙿𝙰𝚁𝙴 𝙵𝙾𝚁 𝙵𝙸𝙶𝙷𝚃
  ]])
end

--
---Calculate an ASCII progress bar based on the value of an attribute.
---@param attribute number from 0 to 10
---@return string
--
function utils.progressBar(attribute)
  local fullChar = "▰"
  local emptyChar = "▱"
  local result = ""

  for i = 1, 10 do
    result =  result..(i <= attribute and fullChar or emptyChar)
  end

  return result
end


--
---Make an print of the creature informations.
---@param creature table
--
function utils.printCreature(creature)
  local calcHealthRate = math.floor((creature.maxHealth / creature.health) * 10)

  print("------------------------------- INFO -------------------------------")
  print("| "..creature.name)
  print("| "..creature.description)
  print("------------------------------- STATS ------------------------------")
  print("| Life:     "..utils.progressBar(calcHealthRate))
  print("| Attack:   "..utils.progressBar(creature.attack))
  print("| Defense:  "..utils.progressBar(creature.defense))
  print("| Speed:    "..utils.progressBar(creature.speed))
  print("-------------------------------------------------------------------")
end

return utils