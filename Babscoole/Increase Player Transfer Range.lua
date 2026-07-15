NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Increase Player Transfer Range",
["MOD_AUTHOR"]      = "DY230",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.23",
["MOD_DESCRIPTION"] = "Increased the range of the item teleporting to other players",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PlayerTransferRange",      "99999"},
                {"PlayerSpaceTransferRange", "99999"},
              }
            },
          }
        },
      }
    }
  }
}