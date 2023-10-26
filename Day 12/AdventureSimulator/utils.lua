local utils = {}

---This function enables UTF-8 mode at the terminal.
function utils.enableUtf8()
  os.execute("chcp 65001 > NUL")
end

function utils.isWindows()
  return type(package) == 'table' and type(package.config) == 'string' and package.config:sub(1, 1) == '\\'
end

function utils.clearScreen()
  if utils.isWindows() then
    os.execute("cls")
  else
    os.execute("clear")
  end
end

---@return string
function utils.getGenericGameOverHeader()
  return [[%{red}
 ▄▄ •  ▄▄▄· • ▌ ▄ ·. ▄▄▄ .         ▌ ▐·▄▄▄ .▄▄▄
▐█ ▀ ▪▐█ ▀█ ·██ ▐███▪▀▄.▀·   ▄█▀▄ ▪█·█▌▀▄.▀·▀▄ █·
▄█ ▀█▄▄█▀▀█ ▐█ ▌▐▌▐█·▐▀▀▪▄  ▐█▌.▐▌▐█▐█•▐▀▀▪▄▐▀▀▄
▐█▄▪▐█▐█▪ ▐▌██ ██▌▐█▌▐█▄▄▌  ▐█▌.▐▌ ███ ▐█▄▄▌▐█•█▌
·▀▀▀▀  ▀  ▀ ▀▀  █▪▀▀▀ ▀▀▀    ▀█▄▀▪. ▀   ▀▀▀ .▀  ▀
]]
end

return utils