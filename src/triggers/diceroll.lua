-- Get two lines, who rolled and the result

moveCursor(0, getLineNumber() - 1)
selectCurrentLine()
copy()
demonnic.chat:append("Group")
deselect()
resetFormat()
moveCursor(0, getLineNumber() + 1)
selectCurrentLine()
copy()
demonnic.chat:append("Group")
deselect()
resetFormat()