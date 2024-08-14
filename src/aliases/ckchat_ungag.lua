local chat = FRIED.chat
local success = chat.emco:removeGag(matches[2])
local echo = chat.helpers.echo
if success then
  echo(f"Successfully removed '{matches[2]}' as a gag pattern")
  return
end
echo(f"Unable to remove '{matches[2]}' as a gag pattern, this is usually because it hasn't been set.")