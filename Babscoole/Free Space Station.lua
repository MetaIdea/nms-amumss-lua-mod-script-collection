NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Free Space Station",
["MOD_AUTHOR"]      = "bRUNo",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00",
["MOD_DESCRIPTION"] = "Makes the requirement for Space Stations 0",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCount", "0"},
                {"RequiredSpaceStationFactionStanding", "0"},
                {"RequiredSpaceStationGuildStanding",   "0"},
                {"RequiredSpaceStationOutpostMissions", "0"},
                {"RequiredSpaceStationCredits",         "0"},
              }
            },
          }
        },
      }
    }
  }
}