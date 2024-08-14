local chat = FRIED.chat
local echo = chat.helpers.echo
local ok, err = chat.helpers.setConfig(matches[2], matches[3])

if not ok then
  echo(err)
  return
end
echo(f"Set color for {matches[2]} to {matches[3]}")