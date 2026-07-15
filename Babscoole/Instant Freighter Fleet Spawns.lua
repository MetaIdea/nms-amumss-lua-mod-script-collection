NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Instant Freighter Fleet Spawns",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.42",
["MOD_DESCRIPTION"] = "System freighter fleets now spawn near-instantly around the player, speeding up checking freighters/documentation",
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
              ["SPECIAL_KEY_WORDS"] = {"FreighterTimers", "GcExperienceTimers"},
              ["PRECEDING_KEY_WORDS"] =
              {
                {"High"},
                {"Normal"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.000000"},
                {"Y", "1.000000"},
              }
            },
          }
        },
      }
    }
  }
}