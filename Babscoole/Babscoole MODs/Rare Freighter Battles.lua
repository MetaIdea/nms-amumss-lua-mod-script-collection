WARPS = "12"
HOURS = "8"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Rare Freighter Battles",
["MOD_AUTHOR"]      = "Exosolar",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Rare Freighter Battles makes space battles occur much less often",
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
                {"WarpsBetweenBattles", WARPS},
                {"HoursBetweenBattles", HOURS},
              }
            }
          }
        },
      }
    }
  }
}