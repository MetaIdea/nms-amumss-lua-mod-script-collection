NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_CheapStationDirectorship",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.04",
["MOD_DESCRIPTION"] = "Lessen faction, guild and salvage-contract grinding from Space Station Directorship",
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
                {"RequiredSpaceStationFactionStanding", "40"},
                {"RequiredSpaceStationGuildStanding",   "30"},
                {"RequiredSpaceStationOutpostMissions", "0"},
                {"RequiredSpaceStationCredits",         "10000000"},
              }
            },
          }
        },
      }
    }
  }
}