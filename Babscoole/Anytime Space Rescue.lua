NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Anytime Space Rescue",
["MOD_AUTHOR"]      = "Telia",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "Space Rescue will now always occur",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FreighterSpawnRate", "100"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WarpsBetweenBattles", "0"},
                {"HoursBetweenBattles", "0"},
              }
            },
          }
        },
      }
    },
  }
}
