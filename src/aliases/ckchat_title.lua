local title = matches[2]
if title == "clear" then
  title = ""
end
require("__PKGNAME__.fried"):get_table("chat").container:setTitle(title)