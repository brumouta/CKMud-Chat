local chat = FRIED.chat
local lecho = chat.helpers.echo
local gaggedLines = table.keys(chat.emco.gags)
table.sort(gaggedLines)

lecho("<orange>Gagging report. Remember these are Lua patterns, not regex")
lecho()
lecho("<orange>Gagged lines")
for _,pattern in ipairs(gaggedLines) do
  lecho("  <purple>" .. pattern)
end
