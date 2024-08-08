local chat = require("__PKGNAME__.fried"):get_table("chat")
local echo = chat.helpers.echo
local aliases = {
  ["ckchat save"] = "saves your config to disk",
  ["ckchat load"] = "loads your config from disk",
  ["ckchat addtab <tabname>"] = "adds a tab to your ckchat",
  ["ckchat remtab <tabname>"] = "removes a tab from your ckchat",
  ["ckchat fontSize"] = "set the font size for the consoles",
  ["ckchat font"] = "set the font to use for the consoles",
  ["ckchat blink <true|false>"] = "turn blinking on/off",
  ["ckchat blankLine <true|false>"] = "turn inserting a blank line between messages on/off",
  ["ckchat timestamp <true|false>"] = "turn timestamps on/off",
  ["ckchat show"] = "show the ckchat",
  ["ckchat hide"] = "hide the ckchat",
  ["ckchat gaglist"] = "prints out the list of gag patterns",
  ["ckchat gag <pattern>"] = "add a gag pattern",
  ["ckchat ungag <pattern>"] = "remove a gag pattern",
  ["ckchat notify <tabName>"] = "turn on OS notifications for tabName",
  ["ckchat unnotify <tabName>"] = "turn off OS notifications for tabName",
  ["ckchat color <option> <value>"] = "used to change the colors for the active/inactive tab, and the background color for the consoles. 'ckchat color' with no options will print out available options",
}

echo("\nAvailable aliases for the prebuilt ckchat package")
echo()
for name, desc in spairs(aliases) do
  echo(f"* {name}")
  echo(f"  * {desc}")
end
