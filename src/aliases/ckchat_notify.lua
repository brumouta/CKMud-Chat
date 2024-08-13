local chat = FRIED.chat
local tabName = matches[2]:title()
local echo = chat.helpers.echo
local ok = chat.emco:addNotifyTab(tabName)

if ok then
  echo(f"Enabled OS notifications for tab {tabName}")
elseif ok == false then
  echo(f"Tab {tabName} already had notifications enabled!")
else
  echo(f"Tab {tabName} does not exist")
end