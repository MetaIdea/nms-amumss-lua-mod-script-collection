NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "MZZ Universal Station Directorship",
["MOD_AUTHOR"]      = "MazzLabs",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "Remove faction, guild and salvage-contract grinding from Space Station Directorship",
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
                {"RequiredSpaceStationFactionStanding", "-999"},
                {"RequiredSpaceStationGuildStanding",   "-999"},
                {"RequiredSpaceStationOutpostMissions", "0"},
                {"RequiredSpaceStationCredits",         "1"},
              }
            },
          }
        },
      }
    }
  }
}