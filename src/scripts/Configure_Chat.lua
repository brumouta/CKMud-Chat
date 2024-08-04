local fried = require("CKMud-Chat.fried")

-- Initalize how we use EMCO
registerAnonymousEventHandler(
  "sysLoadEvent",
  fried:run_init(
    "EMCO Tabs",
    function()
      demonnic.chat.consoles = {"All", "OOC", "Tells", "Group", "Auction", "Event", "Say"}
      demonnic.helpers.save()
    end
  )
)

