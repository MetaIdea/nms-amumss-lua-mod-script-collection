NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Easy Station Directorship x0",
["MOD_AUTHOR"]      = "beihaixingchen",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "Become a Station Director without the grind",
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