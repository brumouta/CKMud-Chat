local chat = FRIED.chat

local tabName = matches[2]
local pos = tonumber(matches[3])
local echo = chat.helpers.echo

if table.contains(chat.emco.consoles, tabName) then
  echo(f"{tabName} already exists!")
  return
end
chat.emco:addTab(tabName, pos)