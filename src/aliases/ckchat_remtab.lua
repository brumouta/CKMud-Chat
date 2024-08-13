local chat = FRIED.chat
local tabName = matches[2]
local echo = chat.helpers.echo
local tabList = chat.emco.consoles
if not table.contains(tabList, tabName) then
  echo(f"{tabName} does not exist to remove. Current tabs are: {table.concat(tabList, ', '}")
  return
end
chat.emco:removeTab(tabName)