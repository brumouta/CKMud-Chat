local chat = FRIED.chat
local valid_options = {"font", "fontSize", "blink", "blankLine", "timestamp", "save", "load", "show", "hide"}
local valid_options_string = table.concat(valid_options, ", ")
local option = matches[2]
local value = matches[3]
local lecho = chat.helpers.echo
if not table.contains(valid_options, option) then
  lecho("Tried to change a config value that does not exist: valid options are " .. valid_options_string)
  return
end

if option == "save" then
  chat.helpers.save()
  lecho("Options saved")
elseif option == "load" then
  chat.helpers.load()
  lecho("Options loaded")
elseif option == "show" then
  chat.container:show()
elseif option == "hide" then
  chat.container:hide()
else
  if value == nil then
    lecho("You need to provide a value when trying to configure things")
    return
  end
  if option == "font" then
    local validFont = table.contains(getAvailableFonts(), value)
    if not validFont then
      lecho("You tried to set the font to one that Mudlet doesn't recognize. This will not do.")
    else
      chat.emco:setFont(value)
    end
  elseif table.contains({"blink", "blankLine", "timestamp"}, option) then
    value = chat.emco:fuzzyBoolean(value)
    if value then
      if option == "timestamp" then
        chat.emco:enableTimestamp()
      elseif option == "blankLine" then
        chat.emco:enableBlankLine()
      elseif option == "blink" then
        chat.emco:enableBlink()
      elseif option == "commandLine" then
        chat.emco:enableCommandLine()
      end
    else
      if option == "timestamp" then
        chat.emco:disableTimestamp()
      elseif option == "blankLine" then
        chat.emco:disableBlankLine()
      elseif option == "blink" then
        chat.emco:disableBlink()
      elseif option == "commandLine" then
        chat.emco:disableCommandLine()
      end
    end
  else
    value = tonumber(value)
    if value then
      chat.emco:setFontSize(value)
    else
      lecho("You tried to set the fontSize to a nonnumber. Attempted: " .. matches[3])
    end
  end
end
