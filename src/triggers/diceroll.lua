-- Get two lines, who rolled and the result
local emco = require("__PKGNAME__.fried"):get_table("chat").emco

moveCursor(0, getLineNumber() - 1)
selectCurrentLine()
copy()
emco:append("Group")
deselect()
resetFormat()
moveCursor(0, getLineNumber() + 1)
selectCurrentLine()
copy()
emco.chat:append("Group")
deselect()
resetFormat()