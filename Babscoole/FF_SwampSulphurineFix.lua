NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FF_SwampSulphurineFix",
["MOD_AUTHOR"]    = "FriendlyFirePL",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.24",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"MiningSubstanceBiome"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"All", "CREATURE1"},
              }
            },
          }
        },
      }
    },
  }
}