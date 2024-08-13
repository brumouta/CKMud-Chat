local fried = require("CKMud-Chat.fried")

-- Initalize how we use EMCO
registerAnonymousEventHandler(
  "sysLoadEvent",
  fried:run_init(
    "__PKGNAME__ v__VERSION__",
    function()
      ckchat = {}
      ckchat.showLine = true
      demonnic.chat.consoles = {}
      demonnic.chat.consoles = {"All", "OOC", "Tells", "Group", "Auction", "Event", "Say"}
      demonnic.helpers.save()
    end
  )
)

